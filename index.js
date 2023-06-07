const express = require('express');


const app = express();


app.get('/',(req,res)=>{
    res.status(200).send("working Fine")
})
app.get('/info',(req,res)=>{
    res.status(200).send("testing ci cd")
})
app.listen(3000,()=>{
    console.log('server is listening on port 3000')
})