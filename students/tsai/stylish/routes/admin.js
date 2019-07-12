const express = require('express');
const mysql = require('mysql'); // npm install mysql
const router = express.Router();

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
    let products = { title, description, price, texture, wash, place, note, story };

    let sql_insert = 'INSERT INTO product SET ?';
    db.query(sql_insert, products, (err, result) => {
        if (err) throw err;
        else console.log(result);
    });
    res.send('Add product successfully.');
});
module.exports = router;