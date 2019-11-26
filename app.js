const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const server = require('http').Server(app);
var cors = require('cors');
var mysql = require('mysql');

// const port = 3000;
const port = process.env.PORT || 8000;


app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use((req, res, next) => {
	res.setHeader('Access-Control-Allow-Origin', 'http://localhost:8080');
	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
	res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept');
	next();
});

//pre-flight requests
app.options('*', function(req, res) {
	res.send(200);
});



var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "I8popcorn",
  database:'contact_senator'
});  
 
connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }

  let sql = `SELECT * FROM senators WHERE id=?`
  connection.query(sql,[152], function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
  console.log('connected as id ' + connection.threadId);
});


server.listen(port, (err) => {
	if (err) {
		throw err;
	}
	/* eslint-disable no-console */
	console.log(`Server running on port ${port})`);
});



module.exports = server;