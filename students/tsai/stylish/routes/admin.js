const express = require('express');
const mysql = require('mysql'); // npm install mysql
const router = express.Router();
const multer = require('multer'); // npm install --save multer

var upload = multer({ dest: 'uploads/' });
// database
const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "07081009",
    database: "stylish"
});

db.connect(function (err) {
    if (err) {
        throw err;
    }
    console.log("stylish connected!");
});

router.get('/admin', (req, res) => {
    res.send('admin');
});

router.post('/admin/product.html', (req, res) => {
    const title = req.body.products_title;
    const description = req.body.products_description;
    const price = req.body.products_price;
    const texture = req.body.products_texture;
    const wash = req.body.products_wash;
    const place = req.body.products_place;
    const note = req.body.products_note;
    const story = req.body.products_story;
    const color_codes = req.body.products_colors_code.split(',');
    const color_names = req.body.products_colors_name.split(',');
    var colors = [];
    const sizes = JSON.stringify(req.body.products_sizes.split(','));
    const variant_code = req.body.products_variants_code.split(',');
    const variant_size = req.body.products_variants_size.split(',');
    const variant_stock = req.body.products_variants_stock.split(',');
    var variants = [];
    const main_image = req.body.products_main_image;
    const images = req.body.products_images;
    // colors format

    for (let i = 0; i < color_codes.length; i++) {
        let tmp = { code: color_codes[i], name: color_names[i] };
        colors.push(tmp);
    }
    colors = JSON.stringify(colors);
    // variants format
    for (let i = 0; i < variant_code.length; i++) {
        let tmp = { color_code: variant_code[i], size: variant_size[i], stock: variant_stock[i] };
        variants.push(tmp);
    }
    variants = JSON.stringify(variants);

    console.log(main_image);
    console.log(images);

    // let products = { title, description, price, texture, wash, place, note, story, colors, sizes, variants };

    // let sql_insert = 'INSERT INTO product SET ?';
    // db.query(sql_insert, products, (err, result) => {
    //     if (err) throw err;
    //     else console.log(result);
    // });
    res.send('Add product successfully.');
});
module.exports = router;