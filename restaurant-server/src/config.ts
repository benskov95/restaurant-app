import mysql2 from "mysql2";
import dotenv from "dotenv";

dotenv.config();

const pool = mysql2.createPool({
    host: process.env.host,
    port: 3306,
    user: process.env.user,
    password: process.env.pw,
    database: process.env.db,
});

export default pool;