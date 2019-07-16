const express = require('express');
const mysql = require('mysql'); // npm install mysql
const router = express.Router();
const multer = require('multer'); // npm install --save multer

// database
const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "0000",
    database: "stylish"
});

db.connect(function (err) {
    if (err) {
        throw err;
    }
    console.log("stylish in admin connected!");
});

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
})
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
    // files format
    // for (let i = 0; i < req.files.products_images.length; i++) {
    //     let tmp = req.files.products_images[i].originalname;
    //     images.push(tmp);
    // }
    // images = JSON.stringify(images);

    // let products = { category, title, description, price, texture, wash, place, note, story, sizes, main_image, images };
    // let sql_insert_product = `INSERT INTO product SET ?`;

    // db.query(sql_insert_product, products, (err, result) => {
    //     if (err) throw err;
    //     else console.log(result);
    //     product_id = result.insertId;
    // });

    // // variants format
    // for (let i = 0; i < variants_code.length; i++) {
    //     let search_color = `SELECT color.code FROM color WHERE color.code = '${variants_code[i]}'`;
    //     db.query(search_color, (err, result) => {
    //         if (err) throw err;
    //         else console.log('search_color_code:', result);
    //         // 搜尋顏色 id 後，加入 size 和 stock 資訊
    //         let insert_variant = `INSERT INTO variant SET ?`;
    //         console.log('printf:', result[0].code);

    //         // result[0].id print the search result id
    //         let variants = { color_code: result[0].code, size: variants_size[i], stock: variants_stock[i], product_id };
    //         db.query(insert_variant, variants, (err, result) => {
    //             if (err) throw err;
    //             else console.log('insert variant:', result);
    //         });

    //     });
    // }
    res.send('Add product successfully.');


});
module.exports = router;