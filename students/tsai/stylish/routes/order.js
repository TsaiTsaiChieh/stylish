const express = require('express');
const router = express.Router();
var async = require("async"); //npm install --save async
const db = require('../public/js/db');
const body_parser = require('body-parser');
// const request = require('request'); // npm install request

router.use(body_parser.urlencoded({ extended: false }));
// router.use(body_parser.json());

router.get('/', (req, res) => {
    res.send('order');
});
router.post('/checkout', (req, res) => {
    const { prime } = req.body;
    res.json({ prime });
});

module.exports = router;