const express = require('express');
const mysql = require('mysql');
const router = express.Router();

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
    console.log("stylish in products connected!");
});

router.get('/products', (req, res) => {
    res.send('products');
});


// Search products for category
router.get('/products/women', (req, res) => {
    let sql_search = `SELECT * FROM product WHERE category='women'`;
    let query = db.query(sql_search, (err, result) => {
        if (err)
            throw err;
        for (let i = 0; i < result.length; i++) {
            result[i].sizes = JSON.parse(result[i].sizes);
            result[i].colors = JSON.parse(result[i].colors);
            result[i].variants = JSON.parse(result[i].variants);
            result[i].images = JSON.parse(result[i].images);
        }
        var data = { data: result };
        res.json(data);
    });
});

module.exports = router;