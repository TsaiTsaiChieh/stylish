const express = require('express');
const mysql = require('mysql'); // npm install mysql
const router = express.Router();

// const db = mysql.createConnection({
//     host: "localhost",
//     user: "root",
//     password: "07081009",
//     database: "assignment"
// });

// db.connect(function (err) {
//     if (err) {
//         throw err;
//     }
//     console.log("Connected!");
// });

// router.get('/admin', (req, res) => {
//     res.send('admin');
// });
module.exports = router;