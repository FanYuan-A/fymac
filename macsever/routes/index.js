const express=require("express");
var router=express.Router();
var pool=require("../pool");

//轮播图
router.get('/',(req,res)=>{
    var sql='SELECT id,img,url FROM index_banner';
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
});
//明星新品
router.get('/new',(req,res)=>{
    var sql='SELECT id,img,img_url FROM index_new';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//唇部热卖
router.get('/mouth',(req,res)=>{
    var sql='SELECT pid,p_title,p_subtitle,color,color_family,score,img_url,p_price FROM mouth_product_hot';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//眼部热卖
router.get('/eye',(req,res)=>{
    var sql='SELECT pid,p_title,p_subtitle,color,color_family,score,img_url,p_price FROM eye_product_hot';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//底妆热卖
router.get('/face',(req,res)=>{
    var sql='SELECT pid,p_title,p_subtitle,color,color_family,score,img_url,p_price FROM face_product_hot';
    pool.query(sql,(err,result)=>{
        if(err)throw err;
        res.send(result);
    })
})

module.exports=router;