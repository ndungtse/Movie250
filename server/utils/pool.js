const mysql = require("mysql2");

const pool = mysql.createPool({
  connectionLimit: 10,
  host: "localhost",
  user: "root",
  password: "chazard10.3",
  database: "movies",
});

module.exports = pool
