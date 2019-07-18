const express = require('express');
const router = express.Router();
var async = require("async"); //npm install --save async
const db = require('../public/js/db');

router.get('/', (req, res) => {
    res.send('user');
});

router.get('/profile', (req, res) => {
    var { authorization } = req.headers;
    // console.log(authorization);
    authorization = authorization.replace('Bearer ', '');

    // async.waterfall([
    //     function (next) {
    //         db.query(``, (err1, result1) => {
    //             next(result1);
    //         });
    //     },], function (err, result) {

    //     });

    let sql_search_user = `SELECT u.*, IF(TIMESTAMPDIFF(SECOND, t.created, CURRENT_TIMESTAMP)>t.access_expired,'YES','NO') AS expired_result FROM user AS u LEFT JOIN token AS t ON u.id = t.user_id WHERE t.access_token = '${authorization}'`;
    db.query(sql_search_user, (err, result) => {
        if (err) throw err;

        console.log(result);

        if (result.length == 0) {
            const err = new Error('Invalid token.');
            err.status = 404;
            res.status(err.status);
            res.send({ error: "Invalid token." });
        }
        else if (result[0].expired_result == 'YES') {
            const err = new Error('Invalid token.');
            err.status = 404;
            res.status(err.status);
            res.send({ error: "Wrong Request: authorization is required." });
        }
        else {
            res.json({
                data: {
                    id: result[0].id,
                    provider: result[0].provider,
                    name: result[0].name,
                    email: result[0].email,
                    picture: result[0].picture
                }
            });
        }


        // console.log(dateTimeParts);
        // if (result.length != 0) {
        //     res.json({
        //         data: {
        //             id: result[0].id,
        //             provider: result[0].provider,
        //             name: result[0].name,
        //             email: result[0].email,
        //             picture: result[0].picture
        //         }
        //     });
        // } else {

        // }
        // res.send('ha');
    });
});

module.exports = router;