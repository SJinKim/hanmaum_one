var mysql = require('mysql')

var con = mysql.createConnection({
  host: '',
  user: '',
  password: '',
})

con.connect(function (err) {
  if (err) throw err
  console.log('Connected')
})

// pool.query(`select mName from d0391dc4.member`, (err, res) => {
//  return console.log(res)
