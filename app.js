const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const server = require('http').Server(app);
var cors = require('cors');
var mysql = require('mysql');
const nodemailer = require('nodemailer')


// const port = 3000;
const port = process.env.PORT || 8000;

var whitelist = ['http://localhost:3000','http://localhost:4200']
// var corsOptions = {
//   origin: function (origin, callback) {
//     if (whitelist.indexOf(origin) !== -1) {
//       callback(null, true)
//     } 
//   }
// }


app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin: *')
	// res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000');
	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
	res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept');
	next();
});

//pre-flight requests
app.options('*', function(req, res) {
	res.send(200);
});


app.get(`/check`, (err, res) => {
    fetch()
	res.status(200);
	res.json({ working: true });
	res.end();
});

app.put('/', (err, res) => {
	res.status(200);
	res.send('working');
	res.end();
});

app.get('/', function(req, res){
   res.redirect('/check');
});

var senators = []
var states = []

var connection = mysql.createConnection({
  host: "localhost",
  user: "root", 
  password: "I8popcorn",
  database:'contact_senator',
  multipleStatements:true
});  
 
connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }

  // let sql = `SELECT * FROM senators`
  let sql = `SELECT  senators.id,senators.name,senators.phoneNumber,senators.email,states.state FROM senators LEFT JOIN states ON senators.state=states.id ORDER BY senators.id`
  connection.query(sql, function (err, result, fields) {
    senators = result
    // console.log(senators)
    if (err) {throw err;}

  });
  console.log('connected as id ' + connection.threadId);
}); 

//get all senators
app.get('/senators', (req, res) => { 
  res.send(senators)
  console.log(senators)

},error=>{
  console.log(error)
  res.send('Error!')

})

//get all states
app.get('/states', (req, res) => { 
connection.query(`SELECT * FROM states`,function (err,result,fields){
  states = result
  console.log(states)
  res.send(states)
  if(err){throw err}
})

},error=>{
  console.log(error)
  res.send('Error!')

})

//delete senator
  app.delete('/senators/:id', (req, res) => { 
    connection.query('DELETE FROM senators where id=?',[req.params.id],(err,rows,fields)=>{
      if(!err){
        let query = `SELECT  senators.id,senators.name,senators.phoneNumber,senators.email,states.state FROM senators LEFT JOIN states ON senators.state=states.id ORDER BY senators.id`
        connection.query(query, function (err, result, fields) {
          console.log('here again')
          senators = result
          console.log(senators)
          res.send(senators)
          if (err) {
            console.log(err)
            res.send('Error!')
            throw err;
          }
        });
      }
      else{
        res.send('Error!')
      }
    })
  },error=>{
    console.log(error)
    res.send('Error!')

  })

  //insert senator
  app.post('/senators', (req, res) => { 
    var sen = req.body
    let sql = "SET @id = ?;SET @name=?;SET @phoneNumber=?;SET @email = ?;SET @state = ?;\
CALL addEditSenator(@id,@name,@phoneNumber,@email,@state )";
    connection.query(sql,[sen.id,sen.name,sen.phoneNumber,sen.email,sen.state],(err,results,fields)=>{
      if(!err){

          let query = `SELECT  senators.id,senators.name,senators.phoneNumber,senators.email,states.state FROM senators LEFT JOIN states ON senators.state=states.id ORDER BY senators.id`
          connection.query(query, function (err, result, fields) {
            console.log('here again')
            senators = result
            console.log(senators)
            res.send(senators)
            if (err) {
              console.log(err)
              res.send('Error!')
              throw err;
            }
          });
      }      
      else{
        console.log(err);
        res.send('Error!')
      }
    })
  },error=>{
    console.log(error)
    res.send('Error!')

  })

//send mail
app.post('/sendmail', (req, res) => { 
  var user = req.body
  sendMail(user,info=>{
    console.log('mail sent successfully')
    res.send(info)
  })
},error=>{
  console.log(error)
  res.send('Error!')

})

async function sendMail(user,callback){
  console.log(user)
  let testAccount = await nodemailer.createTestAccount();

  let transporter = nodemailer.createTransport({
    service: "gmail",
    port: 587,
    secure: false, // true for 465, false for other ports
    auth: {
      user: 'sammyoyekeye70@gmail.com', // generated ethereal user
      pass: 'oluseyi10' // generated ethereal password
    }
  });

  let mailOptions = {
    from: `User - ${user['from']}`, // sender address
    to: `${user['to']}`, // list of receivers
    subject: user.subject, // Subject line
    // text: "Hello world?",
    html: `<h1>Good day Sir/ma</h1><br/>
    <h4>${user['body']}</h4>` // html body
  };
  console.log(mailOptions)

  let info = await transporter.sendMail(mailOptions);

  callback(info)

}


server.listen(port, (err) => {
	if (err) {
		throw err;
	}
	/* eslint-disable no-console */
	console.log(`Server running on port ${port})`);
});



module.exports = server;