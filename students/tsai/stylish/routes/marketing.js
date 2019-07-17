const express = require('express');
const router = express.Router();
const db = require('../public/js/db');

router.get('/', (req, res) => {
    res.send('marketing');
});
router.get('/campaigns', (req, res) => {
    let sql_search_campaign = `SELECT * FROM campaign`;
    db.query(sql_search_campaign, (err, result) => {
        if (err) throw err;
        else console.log('Search campaign:', result);
        var data = { data: result };
        res.json(data);
    });
});

module.exports = router;