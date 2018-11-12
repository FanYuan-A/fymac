$(function() {
  var $fbuttons = $("#fbuttons");
  $(window).scroll(function () {
    //所有楼层
    var $fs = $(".plist").children();

    //所有楼层的第一个子元素
  // var $f1 = $fs.first();
    var scrollTop = $("html,body").scrollTop();
    var offsetTop = $($fs.offset().top);
    //当1/2的文档区的高和页面滚动过的高度（body顶部超出文档显示区顶部的距离）之和大于楼层的offsetTop时，$diLift显示，否则隐藏
    //     红           绿       蓝
    /* if (innerHeight / 2 + scrollTop > offsetTop) {
       $fbuttons.show();
     } else {
       $fbuttons.hide();
     }*/
     //根据楼层，显示楼层对应的按钮变亮
     //遍历每个楼层
    $fs.each((i,f)=>{
      offsetTop=$(f).offset().top;
      if(innerHeight/2+scrollTop>offsetTop){
        $fbuttons.children(`:eq(${i})`)
          .addClass("btnactive")
          .siblings()
          .removeClass("btnactive")
      }
    })
  })
  //点击按钮，相对应的楼层滚动显示
  $fbuttons.on("click", "button", function () {
    //获取第几个按钮
    var i = $(this).index();
    var offsetTop =//获得对应楼层距顶部的总距离
      $(`.plist>div:eq(${i})`).offset().top;
    //让页面滚动到和楼层距body顶部总距离相同的位置
    $("html").animate({
      scrollTop: offsetTop
    }, 800)
  })
})
