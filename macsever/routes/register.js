const express=require("express");
var router=express.Router();
var pool=require("../pool");

// 邮箱验证是否注册
router.get("/isemail",(req,res)=>{
    var {email}=req.query;
    var sql="SELECT uid FROM users WHERE email=?";
    pool.query(sql,[email],(err,result)=>{
        if(err) throw err;
        if(result.length>0)
            res.send({ok:1,msg:"邮箱已被注册"});
        else
            res.send({ok:0,msg:"邮箱正确"});
    });
});
// 用户名是否注册
router.get("/isuname",(req,res)=>{
    var {email}=req.query;
    var sql="SELECT uid FROM users WHERE uname=?";
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw err;
        if(result.length>0)
            res.send({ok:1,msg:"用户名已被占用"});
        else
            res.send({ok:0,msg:"用户名正确"});
    });
});

// 用户注册
router.post('/register',(req,res)=>{
    var {uname,upwd,email}=req.body;
    var sql="INSERT INTO users(uname,upwd,email) VALUES(?,?,?)";
    pool.query(sql,[uname,upwd,email],(err,result)=>{
        if(err) throw err;
        // console.log(result);
        res.send({code:1,msg:"注册成功，确认后跳转到登录页面！"});
    });
});

module.exports=router;