import express from 'express';
import pool from "./config";

const app = express();
const port = process.env.PORT || 5000;

// request not needed, therefore _
app.use((_, res, next) => {
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Methods", "GET");
  res.setHeader("Access-Control-Allow-Headers", "Content-Type");
  next();
})

app.get("/", (_, res) => {
  pool.query("select * from menu_item",  (err, result) => {
    if (err) { 
      res.send({msg: "Error in API"});
      console.log(err.message);
      return;
    }
    res.send(result) 
  })
});

app.listen(port, () => {
  console.log(`Server listening on port: ${port}`);
});