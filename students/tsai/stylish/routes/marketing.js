const express = require('express');
const router = express.Router();
const db = require('../public/js/db');
const async = require('async');
// const NodeCache = require("node-cache");
// const cache = new NodeCache({ stdTTL: 100, checkperiod: 120 });
const cache = require('global-cache');

router.get('/', (req, res) => {
    res.send('marketing');
});
router.get('/campaigns', (req, res) => {
    async.waterfall([
        function (next) {  // 1. Every time we need campaign data, check cache first.
            value = cache.get("campaigns_key");
            if (value) {  // 2. If data existed in the cache, get it.
                // console.log('the same');
                var data = { data: value };
                res.json(data);
            }
            else if (value == undefined) { // 3. If there is no data in the cache, get it from database and store in the cache.
                next(null);
            }
        },
        function (next) {
            let sql_search_campaign = `SELECT * FROM campaign`;
            db.query(sql_search_campaign, (err1, result1) => {
                next(err1, result1);
            });
        },
        function (rst1, next) {
            cache.set("campaigns_key", rst1);
            res.json({ data: rst1 });
        },
    ], function (err, result) {
    });
});

module.exports = router;