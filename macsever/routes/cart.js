const express=require("express");
var router=express.Router();
var pool=require("../pool");
var query=require("./query")

router.get("/",(req,res)=>{
    var sql=`SELECT * FROM allproduct INNER JOIN lipcart ON pid = pro_id WHERE user_id = ? order by id desc`;
    var uid=req.query.uid;
    pool.query(sql,[uid],(err,result)=>{
        res.send(({code:1,msg:result}));
    })
});

router.get("/add",(req,res)=>{

     var pid=req.query.pid;
     var uid=req.query.uid;
     var count=req.query.count;

    var sql="select * from lipcart where user_id=? and pro_id=?";
    query(sql,[uid,pid])
        .then(result=>{
            if(result.length==0){
                var sql="insert into lipcart values(null,?,?,1)";
                pool.query(sql,[uid,pid,count],(err,result)=>{
                    if (err) throw err;
                    res.send({code:1,msg:result});

                })
            }else{
                var sql="update lipcart set count=count+ ? where user_id= ? and pro_id= ?";
                pool.query(sql,[count,uid,pid],(err,result)=>{
                    if (err) throw err;
                    res.send({code:1,msg:result});

                })
            }
        })

})


//删除数据
router.get("/delete",(req,res)=>{
    var id=req.query.id;
    console.log(id);
    var sql="DELETE FROM lipcart WHERE id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:"删除成功！"});
    });
});


module.exports=router;