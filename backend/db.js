const {createPool} = require('mysql')

const pool = createPool({
 host: "https://w01890cf.kasserver.com/mysqladmin/kaslogin.php",
 user: "d0391dc4",
 password: "2hgXnYYTmySkEku",
 connectionLimit: 10
})

pool.query(`select mName from d0391dc4.member`, (err, res) => {
 return console.log(res)
})