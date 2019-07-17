const mysql = require('mysql'); //npm install mysql
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
    console.log("stylish connected!");
});

module.exports = db;