/****
 *  Async JWT webhook
 * 
 *  - Listens for POST request containing a async signed JWT.
 *  - returns decoded json infromation (including nonce) to user.
 *  
 ****/

/* Load npm packages and enviroment variables */
const express = require("express")
const bodyParser = require("body-parser")
const cors = require('cors')
const { Client } = require('pg')
const jwt = require('jsonwebtoken')
const config = require("./config")
const app = express()
const client = new Client({
    host: config.PG.host,
    port: config.PG.port,
    user: config.PG.user,
    password: config.PG.password,
    database: config.PG.db
  })

/* Middleware / Request Preprocess */
app.use(cors())
app.use(bodyParser.json())

/* Service Webhook */
app.post("/api/v1/webhook", async function (req, res, next) {

    //These are the only vars not immediatly initialized. Intentionally. 
    let email, vendor, token, nonce

    if ( typeof req.body["email"] === 'undefined'){
      res.status(400).json({"error":"Required attribute 'email' not provided in request header"})
    }
    email = req.body["email"];

    //Isolate tokens with a variable name. "x-{vendor}-token" : "Bearer {token}"
    for (const [key, value] of Object.entries(req.headers) ) {
        if(key.startsWith("x-") && key.endsWith("-token") && key.length > 8){
            console.log("found the correct key")
            vendor = String(key).replace("x-","").replace("-token","")
            token = String(value).replace("Bearer ","")
        }
    }
    (typeof vendor === 'undefined' || typeof token === 'undefined') ? res.status(400).json({"error":"Token missing or invalid"}):console.log(`${vendor} found their token`)

    //Get public key
    let results = await client.query('SELECT * FROM vendors.public_key WHERE vendor_id = $1', [vendor]) 
        .then(result => result = result.rows[0]).catch(e => {
            console.error(e.stack)
            res.status(400).json({"error":"Public Key not found."}).send()
        })

    if ( typeof results === 'undefined' || typeof results['pk'] === 'undefined'){
      res.status(400).json({"error":"Vendor key not found"})
    }

    //Isolate key from string format
    let pubkey = results["pk"].replace("-----END PUBLIC KEY-----","")
                .replace("-----BEGIN PUBLIC KEY-----","").replace("\n","")
    
    //Async decode token data
    let decoded = jwt.decode(token, pubkey ,{ algorithm: 'ECDSA384'})
    
    //Handle nonce missing error
    if( typeof decoded["nonce"] === 'undefined'){
      res.status(400).json({"error":`Variable "nonce" not found. There may be a key mismatch in decoded data. 
         Key may be invalid. Varify that the JWT uses ECDSA384/ES384.`}) 
    }
    nonce = decoded["nonce"]
    
   
    //Get user data
    let data = await client.query("SELECT * FROM users.profile, users.address WHERE email = $1 AND users.profile.id =  users.address.user_id",  [email] ) 
        .then(result =>  result = result.rows[0] ).catch(e => {
            console.error(e.stack)
            res.status(204).json({"error":"JWT was valid, but user was not found"})
        })
        
    if ( typeof data === 'undefined'){
      res.status(204).end(); 
    }else {

        let returnJson = `{
          "nonce": "${nonce}",
          "user_id": "${(data.id || "")}",
          "first_name": "${(data.first_name || "")}",
          "last_name": "${(data.last_name || "")}",
          "email": "${email}",
          "dob": "${(data.dob || "" )}",
          "phone": "${(data.phone || "" )}",
          "addresses": [
            {
              "id": "${(data.address_type  || "" )}",
              "line1": "${(data.line1  || "" )}",
              "line2": "${(data.line2  || "" )}",
              "city": "${(data.city  || "" )}",
              "state": "${(data.state  || "" )}",
              "county": "${(data.county  || "" )}",
              "zip": "${(data.zip  || "" )}",
              "country": "${(data.country  || "" )}"
            }
          ]
      }`

          //There is no Address info in the database for this project. It will always be the default.     
      res.status(200).json( JSON.parse(returnJson))
    }
        
        
});

/* Start server and database connection */
(async () => {
    client.connect(err => {
        if (err) {
          console.error('PostGreSQL connection error!', err.stack)
        } else {
          console.log('Connected to PostgreSQL!')
        }
      })
    app.listen(config.APP_PORT, function () {
        console.log(`Async webhook service started on ${config.HOSTNAME}/${config.APP_PORT}.`);
    });
})()
