const express = require('express');
const app = express()
const bodyParser = require('body-parser')
const mysql = require('mysql2');

app.use(bodyParser.urlencoded({ extended: false }))

app.use(bodyParser.json())

const pool = mysql.createPool({
    connectionLimit : 10,
    host        : 'localhost',
    user        : 'root',
    password    : 'chazard10.3',
    database    : 'node'     
    
})

app.get('/', (req, res)=> {
    res.send('Welcome Node-Mysql Charles learnong site')
})

app.get('/beer', (req, res) => {
   pool.getConnection((err, connection) => {
       if(err) throw err
        console.log(`connected as id ${connection.threadId}`)
          connection.query('SELECT * from beers', (err, rows) => {
           connection.release() // return the connection to pool
           if(!err) {
               res.send(rows)
            } else {
               console.log(err)
            }
       })
   })
// res.send('welcome')
})
app.get('/beer/:id', (req, res) => {
    const id =req.params.id
   pool.getConnection((err, connection) => {
       if(err) throw err
        console.log(`connected as id ${connection.threadId}`)
          connection.query(`SELECT * from beers WHERE id=${id}`, (err, rows) => {
           connection.release() // return the connection to pool
           if(!err) {
               res.send(rows)
            } else {
               console.log(err)
            }
       })
   })
})

app.post('/beer', (req, res)=>{
    const { name , image, tagline, description } = req.body;
    pool.getConnection((err, connection) => {
        if(err) throw err
        console.log(`connected as id ${connection.threadId}`);
        connection.query(`INSERT INTO beers (name, image, tagline, description) VALUES ("${name}", "${image}", "${tagline}", "${description}")`, (err, rows) => {
            connection.release()
            if (!err) {
                res.send(rows)
            } else {
                console.log(err);
            }
        })
    })
})

app.delete('/beer/:id', (req, res)=>{
    const id = req.params.id
    pool.getConnection((err, connection)=> {
        if(err) throw err
        connection.query(`DELETE from beers WHERE id =${id}`, (err, rows) => {
          connection.release();
          if (!err) {
            res.send(rows);
          } else {
              res.send(err)
          }
        });
    })
})

app.put('/beer/:id', (req, res)=>{
    const id =req.params.id
    const { name, image, tagline, description } = req.body;
    pool.getConnection((err, connection)=>{
        if(err) throw err
        connection.query(`UPDATE beers SET name="${name}", image="${image}", tagline="${tagline}", description="${description}" WHERE id=${id}`,
        (err, rows) =>{
            if (!err) {
                res.send(rows);
            } else {
                res.send(err)
            }
        })
    })
})

const PORT = process.env.PORT || 2020
app.listen(PORT, ()=> console.log(`Listening to http://localhost:${PORT}`))