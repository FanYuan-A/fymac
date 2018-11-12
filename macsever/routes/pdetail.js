const express=require("express");
var router=express.Router();
var pool=require("../pool");

//详情
router.get("/",(req,res)=>{
    var sql='SELECT pid,lip_color,lip_color_title,lip_sub_title,lip_img,lip_bigimg,color_img FROM lip_detail';
    pool.query(sql,(err,result)=>{
        res.send(result);
    })
});



module.exports=router;