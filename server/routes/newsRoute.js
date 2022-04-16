const express = require('express');
const router = express.Router()
const pool  = require('../utils/pool')

router.get("/", (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) throw err;
    console.log(`connected as id ${connection.threadId}`);
    connection.query("SELECT * from news", (err, rows) => {
      connection.release(); // return the connection to pool
      if (!err) {
        res.send(rows);
      } else {
        console.log(err);
      }
    });
  });
});

module.exports = router