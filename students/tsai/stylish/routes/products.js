const express = require('express');
const mysql = require('mysql');
const router = express.Router();

router.get('/products', (req, res) => {
    res.send('products');
});
module.exports = router;