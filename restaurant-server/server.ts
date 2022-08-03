import express from 'express';
import con from "./config";

const app = express();
const port = 5000;

app.get("/", (_, res) => {
  con.query("select * from menu_item",  (err, result) => {
    if (err) { res.send("Error: could not get menu items.")}
    else { res.send(result)}
  })
});

app.listen(port, () => {
  console.log(`Express is listening at http://localhost:${port}`);
});