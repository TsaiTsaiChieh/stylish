const express = require('express');
const router = express.Router();
var async = require("async"); //npm install --save async
const db = require('../public/js/db');
const body_parser = require('body-parser');
const request = require('request'); // npm install request
const axios = require('axios'); // npm install axios
router.use(body_parser.urlencoded({ extended: false }));
const https = require('https');
// router.use(body_parser.json());

router.get('/', (req, res) => {
    res.send('order');
});
router.post('/checkout', (req, res) => {
    const { prime } = req.body;
    var { order } = req.body;
    // var { authorization } = req.headers;
    var authorization = req.body.token;
    // authorization = authorization.replace('Bearer ', '');
    var p = JSON.parse(order.list);
    var p = p[0];

    // for test
    // var { prime } = req.body;
    // prime += 's';

    // 若沒有 token，則使用者欲使用訪客身份購買
    // 若有 token，先判斷 token 有無過期，過期則需重登
    async.waterfall([
        function (next) { // 若有 token，先判斷 token 有無過期，過期則需重登
            if (authorization) {
                db.query(`SELECT t.user_id, IF(TIMESTAMPDIFF(SECOND, t.created, CURRENT_TIMESTAMP)>t.access_expired,'YES','NO') AS expired_result FROM token AS t WHERE t.access_token = '${authorization}'`, (err1, result1) => {
                    // if (result1[0].expired_result == 'YES')
                    if (result1.length == 0) { // token 過期需重登或沒有這個使用者
                        console.log('token 過期或無此使用者');
                        const err = new Error('Invalid token.');
                        err.status = 404;
                        res.status(err.status);
                        res.send({ error: "Wrong Request: authorization is required." });
                    }
                    else if (result1[0].expired_result == 'NO') { // token 未過期則插入訂單資料
                        console.log('token 還沒過期');
                        let order_record = {
                            user_id: result1[0].user_id, shipping: order.shipping, payment: order.payment,
                            subtotal: order.subtotal, freight: order.freight, total: order.total,
                            recipient: order.list, status: 'unpaid'
                        };
                        db.query(`INSERT INTO order_record SET ?`, order_record, (err1, result1) => {
                            let order_list = {
                                order_id: result1.insertId, product_id: p.id, name: p.name,
                                price: p.price, color_code: p.color.code, color_name: p.color.name,
                                size: p.size, qty: p.qty
                            };
                            db.query(`INSERT INTO order_list SET ?`, order_list, (err2, result2) => {
                                next(err2, result1, result2);
                            });
                        });
                    }

                });

            }
            else {
                let order_record = {
                    user_id: 0, shipping: order.shipping, payment: order.payment,
                    subtotal: order.subtotal, freight: order.freight, total: order.total,
                    recipient: order.list, status: 'unpaid'
                };
                db.query(`INSERT INTO order_record SET ?`, order_record, (err1, result1) => {
                    let order_list = {
                        order_id: result1.insertId, product_id: p.id, name: p.name,
                        price: p.price, color_code: p.color.code, color_name: p.color.name,
                        size: p.size, qty: p.qty
                    };
                    db.query(`INSERT INTO order_list SET ?`, order_list, (err2, result2) => {
                        next(err2, result1, result2);
                    });
                });
            }
        },
        function (rst1, rst2, next) {
            const order_id = rst1.insertId;

            const post_data = {
                prime,
                partner_key: 'partner_PHgswvYEk4QY6oy3n8X3CwiQCVQmv91ZcFoD5VrkGFXo8N7BFiLUxzeG',
                merchant_id: "AppWorksSchool_CTBC",
                details: "TapPay Test",
                amount: 100,
                cardholder: order.recipient,
                remember: false
            }
            // axios .post ( url [, data[, config] ])
            axios.post('https://sandbox.tappaysdk.com/tpc/payment/pay-by-prime', post_data, {
                headers: {
                    'x-api-key': 'partner_PHgswvYEk4QY6oy3n8X3CwiQCVQmv91ZcFoD5VrkGFXo8N7BFiLUxzeG'
                }
            }
            ).then((response) => {
                // console.log(response.data);
                // console.log(response.data.status);

                // res.send({
                //     result: response.data
                // })
                next(null, order_id, response.data);
            })
        },
        function (order_id, rst2, next) {
            let payment = {
                order_id, status: rst2.status, msg: rst2.msg, rec_trade_id: rst2.rec_trade_id,
                bank_transaction_id: rst2.bank_transaction_id, auth_code: rst2.auth_code, amount: rst2.amount,
                currency: rst2.currency, card_info: JSON.stringify(rst2.card_info), acquirer: rst2.acquirer, card_identifier: rst2.card_identifier
            };

            if (rst2.status == 0) {
                db.query(`INSERT INTO payment SET ?`, payment, (err3, result3) => {
                    db.query(`UPDATE order_record AS o SET o.status = 'paid' WHERE o.id=${order_id}`, (err4, result4) => {
                        next(err3, result3);
                    });

                });
            } else {
                db.query(`INSERT INTO payment SET ?`, payment, (err3, result3) => {
                    // console.log(result3);
                    const err = new Error('Payment failed.');
                    err.status = 400;
                    res.status(err.status);
                    res.send({ error: "Wrong Request: payment failed." });
                });
            }
        }
    ], function (err, result) {
        res.send('Successful payment');
    });


});

module.exports = router;