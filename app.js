const express = require('express');
const app = express();

const PORT = 3000

app.get("/", (req, res)=>{
    res.end("Hello World");
})

app.listen(PORT, (req, res)=>{
    console.log(`Listening at http://localhost:${3000}`);
})