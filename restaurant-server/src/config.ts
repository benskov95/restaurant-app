import mysql2 from "mysql2";
import dotenv from "dotenv";

dotenv.config();

const con = mysql2.createConnection({
    host: process.env.host,
    port: 3306,
    user: process.env.dbUser,
    password: process.env.pw,
    database: process.env.db
});

con.connect((err)=>{
    if (err) { console.log(err.message) }
});

export default con;