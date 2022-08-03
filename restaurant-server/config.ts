import mysql from "mysql";
import dotenv from "dotenv";

dotenv.config();

const con = mysql.createConnection({
    host: 'localhost',
    user: process.env.dbUser,
    password: process.env.pw,
    database: process.env.db
});

con.connect((err)=>{
    if (err) { console.log(err.message) }
});

export default con;