var express=require("express");
var router=express.Router();
var pool=require("../pool");
//用户登录
router.post("/login",(req,res)=>{
    var {uname,upwd}=req.body;
    var sql="select uid,uname,upwd,email from users where uname=? and upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;

        if(result.length>0){
            req.session.uid=result[0].uid;
            // console.log(req.session.uid);
            res.write(JSON.stringify({ok:1,uid:result[0].uid}));
        }else{
            res.write(JSON.stringify({ok:0,msg:"用户名或密码错误!请重新输入"}));
        }
        res.end();
    })
})

//判断登录
router.get("/islogin",(req,res)=>{
    var uid=req.query.uid;
    // console.log(uid);
    if(uid==null){
        res.write(JSON.stringify({ok:0}));
        res.end();
    }else{
        var sql="select uid,uname,upwd,email from users where uid=?";
        pool.query(sql,[uid],(err,result)=>{
            // console.log(result[0].uname);
            res.write(JSON.stringify({ok:1,msg:result[0].uname}));
            res.end();
        })
    }
})
//注销登录
router.get("/signout",(req,res)=>{
    delete req.session.uid;
    res.send();
})

module.exports=router;