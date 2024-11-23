const mysql = require('mysql')
require('dotenv').config()

dbConfig = {
  host: process.env.DB_HM_HOST,
  user: process.env.DB_HM_USERNAME,
  password: process.env.DB_HM_SECRET,
  database: process.env.DB_HM_DBNAME,
}

const connection = mysql.createConnection(dbConfig)

connection.connect((err) => {
  if (err) {
    console.error('Error connectiong to MySQL: ' + err.stack)
    return
  }
  console.log('Connected to MySQL as ID ' + connection.threadId)
})

module.exports = connection
