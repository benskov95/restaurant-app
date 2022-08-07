import express from 'express';
import con from "./config";

const app = express();
const port = 5000;

// request not needed, therefore _
app.use((_, res, next) => {
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader("Access-Control-Allow-Methods", "GET");
  res.setHeader("Access-Control-Allow-Headers", "Content-Type");
  next();
})

app.get("/", (_, res) => {
  con.query("select * from menu_item",  (err, result) => {
    if (err) { res.send({msg: "Error in API"}) }
    else { res.send(result) }
  })
});

app.listen(port, () => {
  console.log(`Express is listening at http://localhost:${port}`);
});