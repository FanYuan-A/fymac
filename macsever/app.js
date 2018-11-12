const express=require('express');
const session = require("express-session");
const bodyParser = require('body-parser');
const cors=require("cors");

var index=require('./routes/index');
var products=require('./routes/products');
var detail=require('./routes/pdetail');
var user=require('./routes/user')
var register=require('./routes/register')
var cart=require('./routes/cart')
var app=express();

app.listen(3000);
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static(__dirname+"/public"));

app.use(cors({
    origin: ["http://127.0.0.1:8080","http://localhost:8080","http://127.0.0.1:8081","http://localhost:8081","http://localhost:4200"],
    credentials:true
}));
app.use(session({
    secret:'随机字符串',
    cookie:{maxAge:60*1000*30},//过期时间ms
    resave:false,
    saveUninitialized:true
}));


app.use("/index",index);
app.use("/products",products);
app.use("/detail",detail);
app.use("/register",register)
app.use("/user",user);
app.use("/cart",cart)
