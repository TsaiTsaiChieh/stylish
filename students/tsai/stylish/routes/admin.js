const express = require('express');
const router = express.Router();
const multer = require('multer'); // npm install --save multer
const db = require('../public/js/db');
const crypto = require('crypto');
const async = require("async"); //npm install --save async

router.get('/admin', (req, res) => {
    res.send('admin');
});

// Set storage
var storage = multer.diskStorage({
    // 設定上傳後文件路徑，uploads 資料夾會自動建立
    destination: function (req, files, cb) {
        cb(null, 'uploads');
    },
    // 給上傳文件重新命名
    filename: function (req, files, cb) {
        files.originalname = files.originalname.replace('.jpg', '') + '_' + Date.now() + '.jpg';
        cb(null, files.originalname);
    }
});
// Build Product Management Page
var upload = multer({ storage: storage }); // 設定添加到 multer 對象
var imageLoad = upload.fields([{ name: 'products_main_image', maxCount: 1 }, { name: 'products_images', maxCount: 3 }]);
router.post('/admin/product.html', imageLoad, (req, res) => {
    const category = req.body.products_category;
    const title = req.body.products_title;
    const description = req.body.products_description;
    const price = req.body.products_price;
    const texture = req.body.products_texture;
    const wash = req.body.products_wash;
    const place = req.body.products_place;
    const note = req.body.products_note;
    const story = req.body.products_story;
    const sizes = JSON.stringify(req.body.products_sizes.replace(/\s+/g, "").split(','));
    const variants_code = req.body.products_variants_code.replace(/\s+/g, "").split(',');
    const variants_name = req.body.products_variants_name.replace(/\s+/g, "").split(',');
    const variants_size = req.body.products_variants_size.replace(/\s+/g, "").split(',');
    const variants_stock = req.body.products_variants_stock.replace(/\s+/g, "").split(',');
    const main_image = req.files.products_main_image[0].originalname;
    var product_id = 0;

    // files format
    var images = [];
    for (let i = 0; i < req.files.products_images.length; i++) {
        let tmp = req.files.products_images[i].originalname;
        images.push(tmp);
    }
    images = JSON.stringify(images);

    let products = { category, title, description, price, texture, wash, place, note, story, sizes, main_image, images };
    let sql_insert_product = `INSERT INTO product SET ?`;


    db.query(sql_insert_product, products, (err, result) => {
        if (err) throw err;
        else console.log(result);
        product_id = result.insertId;

        for (let i = 0; i < variants_code.length; i++) {
            let insert_variant = `INSERT INTO variant SET ?`;
            // result[0].id print the search result id
            let variants = { color_code: variants_code[i], name: variants_name[i], size: variants_size[i], stock: variants_stock[i], product_id };
            db.query(insert_variant, variants, (err, result) => {
                if (err) throw err;
                else console.log('insert variant:', result);
            });
        }
    });
    res.send('Add a product successfully.');
});

// Build Marketing Campaigns Management Page
// Set Campaigns storage
var storage_campaigns = multer.diskStorage({
    // 設定上傳後文件路徑，campaigns 資料夾會自動建立
    destination: function (req, file, cb) {
        cb(null, 'campaigns');
    },
    // 給上傳文件重新命名
    filename: function (req, file, cb) {
        file.originalname = file.originalname.replace('.jpg', '') + '_' + Date.now() + '.jpg';
        cb(null, file.originalname);
    }
});
var campaigns = multer({ storage: storage_campaigns }); // 設定添加到 multer 對象
// var campaignLoad = campaigns.fields([{ name: 'picture', maxCount: 1 }]);
router.post('/admin/campaign.html', campaigns.single('picture'), (req, res) => {
    const { product_id } = req.body;
    // Picture URL is http://localhost/campaigns/filename.jpg
    const picture = req.file.filename;
    const { story } = req.body;
    let campaign = { product_id, picture, story }; // campaign insert data
    let sql_insert_campaign = `INSERT INTO campaign SET ?`;
    db.query(sql_insert_campaign, campaign, (err, result) => {
        if (err) throw err;
        else console.log('insert campaign:', result);
    });
    res.send('Add a campaign successfully.');

});
// Build User Management Page
// Set User storage
var storage_users = multer.diskStorage({
    // 設定上傳後文件路徑，campaigns 資料夾會自動建立
    destination: function (req, file, cb) {
        cb(null, 'users');
    },
    // 給上傳文件重新命名
    filename: function (req, file, cb) {
        file.originalname = file.originalname.replace('.jpg', '') + '_' + Date.now() + '.jpg';

        cb(null, file.originalname);
    }
});
var users = multer({ storage: storage_users }); // 設定添加到 multer 對象

router.post('/admin/signup', users.single('picture'), (req, res) => {
    const provider = 'native';
    const { name } = req.body;
    const email = req.body.email.replace(/\s+/g, ""); // 過濾掉電子郵件的空格

    const { password } = req.body;
    const picture = req.file.filename;
    var user = { provider, name, email, password, picture };
    var string_data = name + email + Date.now();
    // 使用 let 才會在每次調用 digest 都創建個新 crypto 實例 
    let access_token = crypto.createHash('sha256').update(string_data, 'utf8').digest('hex');
    const access_expired = 30;
    // let token = {access_token,access_expired};
    async.waterfall([
        // 檢查 user table 有無此註冊資訊
        function (next) {
            db.query(`SELECT id FROM user WHERE '${email}' = user.email`, (err1, result1) => {
                next(err1, result1);
            });
        },
        function (rst1, next) {
            if (rst1.length != 0) { // 若沒有此註冊資訊就插入此 user
                console.log('有此 user');
                const err = new Error('Invalid request body.');
                err.status = 404;
                res.status(err.status);
                res.send({ error: "Invalid request body." });
            } else {
                console.log('沒有此 user');
                db.query(`INSERT INTO user SET ?`, user, (err2, result2) => {
                    next(err2, rst1, result2);
                });
            }
        },
        // 若 user 成功註冊則 insert token 
        function (rst1, rst2, next) {
            const user_id = rst2.insertId;
            let token = { user_id, access_token, access_expired };
            db.query(`INSERT INTO token SET ?`, token, (err3, result3) => {
                next(err3, rst1, rst2, result3);
            });
        },
        // 搜尋 user_id
        function (rst1, rst2, rst3, next) {
            db.query(`SELECT user_id FROM token LEFT JOIN user ON token.user_id = user.id WHERE user.id=${rst2.insertId}`, (err4, result4) => {
                next(err4, result4);
            });
        }
    ], function (err, result) {
        if (err) throw err;
        //show json
        user_res = { id: result[0].user_id, provider, name, email, picture };
        var data = { data: { access_token, access_expired, user_res } };
        res.json(data);
    });
});

router.post('/admin/signin', (req, res) => {
    const { provider } = req.body;
    const { email } = req.body;
    const { password } = req.body;

    async.waterfall([
        function (next) {
            db.query(`SELECT u.*, t.token FROM user AS u LEFT JOIN token as t ON u.id = t.user_id WHERE u.provider = '${provider}' AND u.email = '${email}' AND u.password ='${password}'`, (err1, result1) => {
                next(err1, result1);
            });
        }
    ], function (err, result) {
        if (err) throw err;
        // else console.log(result);
        if (result.length != 0) {
            res.json({
                data: {
                    access_token: result[0].token, access_expired: 3600,
                    user: {
                        id: result[0].id,
                        provider: result[0].provider,
                        name: result[0].name,
                        email: result[0].email,
                        picture: result[0].picture
                    }
                }
            });
        }
        else {
            const err = new Error('Invalid token.');
            err.status = 404;
            res.status(err.status);
            res.send({ error: "Invalid token." });
        }

    });
});


module.exports = router;