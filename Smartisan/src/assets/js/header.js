$(function(){
      var $news=$("#header>div:first-child>ul>li:nth-child(3)>a");
      var $new=$(".new");
      $news.mouseenter(function () {
          $new.addClass("new_active");
      });
      $new.mouseleave(function (e) {
          e.preventDefault();
          $new.removeClass("new_active");
      });
      $new.on("mouseenter","div",function (e) {
        e.preventDefault();
          $(this).children(":first-child").show();
      })
      $new.on("mouseleave","div",function (e) {
          e.preventDefault();
          $(this).children(":first-child").hide();
      })
      // 全部产品
      var $allp=$("#header>div:first-child>ul>li:nth-child(4)>a");
      var $allptype=$(".product");

      $allp.mouseenter(function () {
          $allptype.addClass("product_active");
      });
      $allptype.mouseleave(function (e) {
          e.preventDefault();
          $allptype.removeClass("product_active");
      })
      //邮箱注册
      var $emailbtn=$("#header>div:first-child>ul>li:nth-child(8)>a");
      var $useremail=$(".user-email");
      $emailbtn.click(function () {
          $useremail.toggleClass("user-email-active");
      })
      //搜索框
      var $searchbtn=$("#header>div:first-child>ul>li:nth-child(7)>a");
      var $search=$(".search")
      $searchbtn.click(function () {
          $search.toggle("active");
      })
})
export {
  realconsole
}
