const express = require('express');
const mysql = require('mysql');
const router = express.Router();
var async = require("async"); //npm install --save async
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
// Search products for all
router.get('/products/all', (req, res) => {
    var { paging } = req.query;
    paging = parseInt(paging);
    var show_num = 10;
    // default paging = 1
    if (!paging) {
        paging = 1;
    }
    var start = (paging - 1) * show_num;
    async.series([
        function (next) {
            db.query(`SELECT DISTINCT p.id, p.category, p.title, p.description, p.price, p.texture, p.wash, p.place, p.note, p.story, p.sizes,p.main_image, p.images
              FROM product AS p LEFT JOIN variant AS v ON v.product_id=p.id LIMIT ${start},${show_num}`, function (err1, result1) {
                    next(err1, result1); //將結果傳入callback
                });
        },
        function (next) {
            db.query(`SELECT DISTINCT v.color_code AS code, v.name, p.id FROM variant AS v LEFT JOIN product AS p ON v.product_id=p.id`, function (err2, result2) {
                next(err2, result2);
            });
        },
        function (next) {
            db.query(`SELECT color_code, size, stock, product_id FROM variant`, function (err3, result3) {
                next(err3, result3);
            });
        }
    ], function (errs, results) {
        if (errs) throw errs;    // errs = [err1, err2, err3]
        // console.log(results);   // results = [result1, result2, result3]

        var c = [];
        var v = [];
        // color format
        for (let i = 0; i < results[0].length; i++) {
            c[i] = [];
            for (let j = 0; j < results[1].length; j++) {
                if (results[1][j].id == results[0][i].id)
                    c[i].push({ code: results[1][j].code, name: results[1][j].name });

            }
        }
        // varient format
        for (let i = 0; i < results[0].length; i++) {
            v[i] = [];
            for (let j = 0; j < results[2].length; j++) {
                if (results[2][j].product_id == results[0][i].id)
                    v[i].push({ color_code: results[2][j].color_code, size: results[2][j].size, stock: results[2][j].stock });

            }
        }

        var data_array = [];
        for (let i = 0; i < results[0].length; i++) {
            p = results[0][i];

            temp = {
                id: p.id, category: p.category, title: p.title, price: p.price, texture: p.texture, wash: p.wash,
                place: p.place, note: p.note, story: p.story, colors: c[i], sizes: JSON.parse(p.sizes),
                variants: v[i], main_image: p.main_image, images: JSON.parse(p.images)
            };
            data_array.push(temp);
        }
        var data = { paging, data: data_array };
        res.json(data)
    });
});

// Search products for women
router.get('/products/women', (req, res) => {
    var { paging } = req.query;
    paging = parseInt(paging);
    var show_num = 1;
    // default paging = 1
    if (!paging) {
        paging = 1;
    }
    var start = (paging - 1) * show_num;
    async.series([
        function (next) {
            db.query(`SELECT DISTINCT p.id, p.category, p.title, p.description, p.price, p.texture, p.wash, p.place, p.note, p.story, p.sizes,p.main_image, p.images
              FROM product AS p LEFT JOIN variant AS v ON v.product_id=p.id WHERE category='women' LIMIT ${start},${show_num}`, function (err1, result1) {
                    next(err1, result1); //將結果傳入callback
                });
        },
        function (next) {
            db.query(`SELECT DISTINCT v.color_code AS code, v.name, p.id FROM variant AS v LEFT JOIN product AS p ON v.product_id=p.id WHERE category='women'`, function (err2, result2) {
                next(err2, result2);
            });
        },
        function (next) {
            db.query(`SELECT color_code, size, stock, product_id FROM variant`, function (err3, result3) {
                next(err3, result3);
            });
        }
    ], function (errs, results) {
        if (errs) throw errs;    // errs = [err1, err2, err3]
        // console.log(results);   // results = [result1, result2, result3]

        var c = [];
        var v = [];
        // color format
        for (let i = 0; i < results[0].length; i++) {
            c[i] = [];
            for (let j = 0; j < results[1].length; j++) {
                if (results[1][j].id == results[0][i].id)
                    c[i].push({ code: results[1][j].code, name: results[1][j].name });

            }
        }
        // varient format
        for (let i = 0; i < results[0].length; i++) {
            v[i] = [];
            for (let j = 0; j < results[2].length; j++) {
                if (results[2][j].product_id == results[0][i].id)
                    v[i].push({ color_code: results[2][j].color_code, size: results[2][j].size, stock: results[2][j].stock });

            }
        }

        var data_array = [];
        for (let i = 0; i < results[0].length; i++) {
            p = results[0][i];

            temp = {
                id: p.id, category: p.category, title: p.title, price: p.price, texture: p.texture, wash: p.wash,
                place: p.place, note: p.note, story: p.story, colors: c[i], sizes: JSON.parse(p.sizes),
                variants: v[i], main_image: p.main_image, images: JSON.parse(p.images)
            };
            data_array.push(temp);
        }
        var data = { paging, data: data_array };
        res.json(data)
    });
});
// Search products for men
router.get('/products/men', (req, res) => {
    var { paging } = req.query;
    paging = parseInt(paging);
    var show_num = 1;
    // default paging = 1
    if (!paging) {
        paging = 1;
    }
    var start = (paging - 1) * show_num;
    async.series([
        function (next) {
            db.query(`SELECT DISTINCT p.id, p.category, p.title, p.description, p.price, p.texture, p.wash, p.place, p.note, p.story, p.sizes,p.main_image, p.images
              FROM product AS p LEFT JOIN variant AS v ON v.product_id=p.id WHERE category='men' LIMIT ${start},${show_num}`, function (err1, result1) {
                    next(err1, result1); //將結果傳入callback
                });
        },
        function (next) {
            db.query(`SELECT DISTINCT v.color_code AS code, v.name, p.id FROM variant AS v LEFT JOIN product AS p ON v.product_id=p.id WHERE category='men'`, function (err2, result2) {
                next(err2, result2);
            });
        },
        function (next) {
            db.query(`SELECT color_code, size, stock, product_id FROM variant`, function (err3, result3) {
                next(err3, result3);
            });
        }
    ], function (errs, results) {
        if (errs) throw errs;    // errs = [err1, err2, err3]
        // console.log(results);   // results = [result1, result2, result3]

        var c = [];
        var v = [];
        // color format
        for (let i = 0; i < results[0].length; i++) {
            c[i] = [];
            for (let j = 0; j < results[1].length; j++) {
                if (results[1][j].id == results[0][i].id)
                    c[i].push({ code: results[1][j].code, name: results[1][j].name });

            }
        }
        // varient format
        for (let i = 0; i < results[0].length; i++) {
            v[i] = [];
            for (let j = 0; j < results[2].length; j++) {
                if (results[2][j].product_id == results[0][i].id)
                    v[i].push({ color_code: results[2][j].color_code, size: results[2][j].size, stock: results[2][j].stock });

            }
        }

        var data_array = [];
        for (let i = 0; i < results[0].length; i++) {
            p = results[0][i];

            temp = {
                id: p.id, category: p.category, title: p.title, price: p.price, texture: p.texture, wash: p.wash,
                place: p.place, note: p.note, story: p.story, colors: c[i], sizes: JSON.parse(p.sizes),
                variants: v[i], main_image: p.main_image, images: JSON.parse(p.images)
            };
            data_array.push(temp);
        }
        var data = { paging, data: data_array };
        res.json(data)
    });
});


// Search products for accessories
router.get('/products/accessories', (req, res) => {
    var { paging } = req.query;
    paging = parseInt(paging);
    var show_num = 1;
    // default paging = 1
    if (!paging) {
        paging = 1;
    }
    var start = (paging - 1) * show_num;
    async.series([
        function (next) {
            db.query(`SELECT DISTINCT p.id, p.category, p.title, p.description, p.price, p.texture, p.wash, p.place, p.note, p.story, p.sizes,p.main_image, p.images
              FROM product AS p LEFT JOIN variant AS v ON v.product_id=p.id WHERE category='accessories' LIMIT ${start},${show_num}`, function (err1, result1) {
                    next(err1, result1); //將結果傳入callback
                });
        },
        function (next) {
            db.query(`SELECT DISTINCT v.color_code AS code, v.name, p.id FROM variant AS v LEFT JOIN product AS p ON v.product_id=p.id WHERE category='accessories'`, function (err2, result2) {
                next(err2, result2);
            });
        },
        function (next) {
            db.query(`SELECT color_code, size, stock, product_id FROM variant`, function (err3, result3) {
                next(err3, result3);
            });
        }
    ], function (errs, results) {
        if (errs) throw errs;    // errs = [err1, err2, err3]
        // console.log(results);   // results = [result1, result2, result3]

        var c = [];
        var v = [];
        // color format
        for (let i = 0; i < results[0].length; i++) {
            c[i] = [];
            for (let j = 0; j < results[1].length; j++) {
                if (results[1][j].id == results[0][i].id)
                    c[i].push({ code: results[1][j].code, name: results[1][j].name });

            }
        }
        // varient format
        for (let i = 0; i < results[0].length; i++) {
            v[i] = [];
            for (let j = 0; j < results[2].length; j++) {
                if (results[2][j].product_id == results[0][i].id)
                    v[i].push({ color_code: results[2][j].color_code, size: results[2][j].size, stock: results[2][j].stock });

            }
        }

        var data_array = [];
        for (let i = 0; i < results[0].length; i++) {
            p = results[0][i];

            temp = {
                id: p.id, category: p.category, title: p.title, price: p.price, texture: p.texture, wash: p.wash,
                place: p.place, note: p.note, story: p.story, colors: c[i], sizes: JSON.parse(p.sizes),
                variants: v[i], main_image: p.main_image, images: JSON.parse(p.images)
            };
            data_array.push(temp);
        }
        var data = { paging, data: data_array };
        res.json(data)
    });
});
// Invalid token.
router.use((req, res, next) => {
    const err = new Error('Invalid token.');
    err.status = 404;
    next(err);

});
router.use((err, req, res, next) => {
    res.locals.error = err;
    res.status(err.status);

    res.send({ error: "Invalid token." });
});
module.exports = router;