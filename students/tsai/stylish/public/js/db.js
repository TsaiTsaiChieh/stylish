const mysql = require('mysql'); //npm install mysql
// database
// const db = mysql.createConnection({
//     host: "localhost",
//     user: "root",
//     password: "0000",
//     database: "stylish"
// });
const db = mysql.createPool({
    connectionLimit: 100,
    host: "localhost",
    user: "root",
    password: "0000",
    database: "stylish",
    /* optional */
    acquireTimeout: 10000,
    waitForConnections: true,
    queueLimit: 5
});

// db.connect(function (err) {
//     if (err) {
//         throw err;
//     }
//     console.log("stylish connected!");
// });

module.exports = db;