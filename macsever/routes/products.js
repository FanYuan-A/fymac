const express=require("express");
var router=express.Router();
var pool=require("../pool");

//热卖套装
router.get("/",(req,res)=>{
    var sql='SELECT pid,p_title,p_subtitle,img_url,p_price FROM allproduct WHERE color_id = 1';
    pool.query(sql,(err,result)=>{
        res.send(result);
    })
});

//红色热卖
router.get("/red",(req,res)=>{
    var sql='SELECT pid,p_title,p_subtitle,p_color,color_family,img_url,p_price FROM allproduct WHERE color_id = 2';
    pool.query(sql,(err,result)=>{
        res.send(result);
    })
});
//橙色热卖
router.get("/orange",(req,res)=>{
    var sql='SELECT pid,p_title,p_subtitle,p_color,color_family,img_url,p_price FROM allproduct WHERE color_id = 3';
    pool.query(sql,(err,result)=>{
        res.send(result);
    })
});

//所有商品表
/*router.get("/all",(req,res)=>{
    var sql='SELECT pid,p_title,p_subtitle,p_color,color_family,img_url,p_price FROM allproduct';
    pool.query(sql,(err,result)=>{
        res.send(result);
    })
});*/

//搜索
router.get("/list",(req,res)=>{
    var pno=req.query.pno;
    if(!pno) pno=1;
    var count =0;
    var pageCount=0;
    var pageSize=12;
    var offset=parseInt((pno-1)*pageSize);
    var kw=req.query.kw;
    var kws=kw.split(" ");
    kws.forEach((elem,i,arr)=>{
        arr[i]=`p_title LIKE '%${elem}%'`;
    });
    var where=kws.join(" and ");
    var sql=`SELECT pid,p_title,p_subtitle,p_color,color_family,img_url,p_price FROM allproduct WHERE ${where}`;
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        count=result.length;
        pageCount=Math.ceil(result.length);
    });
    sql+=`LIMIT ?,?`;
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err) throw err;
        if(result.length>0)
        {
            // console.log(result);
        res.send({code:1,msg:result,count,pageCount});}
        else
            res.send({code:0});
    });
});

module.exports=router;