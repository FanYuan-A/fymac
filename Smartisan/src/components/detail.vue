<template>
  <div id="detail-main">

    <!--产品详情区-->
    <div class="detail">
      <!--面包屑导航-->
      <div class="crumbs">
        <ul>
          <li><a href="#1">唇部</a></li>
          <li><a href="#2">唇膏</a></li>
          <li><a href="#3">水漾润泽唇膏</a></li>
        </ul>
      </div>
      <!--产品详情区-->
      <div class="site-container">
        <div class="preview">
          <div class="md-img">
            <img src="../assets/img/detail/mac_sku_M31A04_640x600_0.jpg" index="0" class="show">
            <img v-if="i > 0" v-for="(item,i) in liplist" :index="i" :src="item.lip_img" alt="">
            <div id="mask"></div>
            <div id="div-lg" @click="maskshow" @mousemove="mousemove"></div>
            <div id="super-mask">
              <img class="show" src="../assets/img/detail-big/mac_sku_M31A01_640x600_0.jpg" index="0" alt="">
              <img v-if="i > 0" v-for="(item,i) in liplist" :index="i" :src="item.lip_bigimg" alt="">
            </div>

          </div>
        </div>
        <div class="lipdetail">
          <div class="lipdetail-header">
            <h1 class="lip-title">水漾润泽唇膏</h1>
            <p class="lip-subtitle">LUSTRE LIPSTICK</p>
            <p><a class="alldesc" @click="moredesc">完整描述</a></p>
            <div id="alldesc">魅可唇膏—魅可的明星产品。水漾润泽唇膏的独特配方让您的涂抹更加顺滑，纯粹的覆盖打造更为光泽的唇面。</div>
          </div>
          <div class="lipdetail-footer">
            <select id="colorse">
              <option value="c1">LUSTRE</option>
              <option value="c2">LUSTRE</option>
              <option value="c3">LUSTERING</option>
              <option value="c4">LUSTRE</option>
              <option value="c5">LUSTRE</option>
              <option value="c6">LUSTRE</option>
              <option value="c7">LUSTRE</option>
              <option value="c8">LUSTRE</option>
              <option value="c9">LUSTRE</option>
            </select>
            <div class="lipcolorh2">
              <h2 class="h2color show">Lustering</h2>
              <h2 class="h2color" v-if="i > 0" v-for="(item,i) in liplist" :index="i">{{item.lip_color_title}}</h2>
            </div>
            <p class="lipcolor show" index='0'>Outspoken pink [Lustre]</p>
            <p class="lipcolor" v-if="i > 0" v-for="(item,i) in liplist" :index="i">{{item.lip_color}}</p>
            <p class="lip-comment">整体评价：4星</p>
            <p><a href="#read" class="read">阅读所有评论</a><a href="#write" class="write">写一个评论</a></p>
            <p class="detail-desc">3 g / 0.1 US oz <span class="share"><a href="#">分享</a> <img src="img/index/heart.png"
                                                                                               alt="" class="share-img"></span>
            </p>
            <h2 class="price">￥ 170</h2>
          </div>
          <div class="content">
            <a href="#" class="cart">加入购物车</a>
            <p><a href="#">任购免邮</a></p>
            <p><a href="#">何时送达？</a></p>
          </div>
        </div>
        <div class="colorfull">
          <button class="prev" id="prev" @click="prev">
            <img src="../assets/img/detail/prev.png" alt="" class="previcon">
          </button>
          <div class="colorselect">
            <ul class="colorlist">
              <li class="lipic" v-for="(item,i) in liplist" :index="i" @click="imgChange(i)"><img
                :src="item.color_img" alt=""></li>
              <!--  <li><img src="../assets/img/detail/mac_smoosh_M31A04.jpg" alt=""></li>
                <li><img src="../assets/img/detail/mac_smoosh_M31A06.jpg" alt=""></li>
                <li><img src="../assets/img/detail/mac_smoosh_M31A09.jpg" alt=""></li>
                <li><img src="../assets/img/detail/mac_smoosh_M31A12.jpg" alt=""></li>
                <li><img src="../assets/img/detail/mac_smoosh_M31A14.jpg" alt=""></li>
                <li><img src="../assets/img/detail/mac_smoosh_M31A20.jpg" alt=""></li>
                <li><img src="../assets/img/detail/mac_smoosh_M31A21.jpg" alt=""></li>
                <li><img src="../assets/img/detail/mac_smoosh_M31AG7.jpg" alt=""></li>-->
            </ul>
          </div>
          <button class="next" id="next" @click="next">
            <img class="nexticon" src="../assets/img/detail/next.png" alt="">
          </button>
        </div>
      </div>
    </div>
    <!--推荐商品区-->
    <div class="recommend">
      <h1>推荐配合使用</h1>
      <div class="recommendlist">
        <div class="p-detail">
          <div class="p-header-detail">
            <a href="#">
              <p class="p-title">水漾润泽唇膏
              </p>
            </a>
            <a href="#" class="collect"><img src="../assets/img/index/heart.png" alt=""></a>
            <p class="p-subtitle">LUSTRE LIPSTICK</p>
            <p>色号：<span class="color">SEE SHEER|水漾西柚色</span></p>
            <p>[水漾润泽]</p>
          </div>
          <div class="p-img">
            <img src="../assets/img/mouth/mac_sku_M31A14_280x320_0.jpg"/>
          </div>
          <div class="p-content">
            <div>
              <span class="p-price">￥ 170</span>
              <a href="#" class="cart">加入购物车</a>
            </div>
          </div>
        </div>
        <div class="p-detail">
          <div class="p-header-detail">
            <a href="#">
              <p class="p-title">显色丰润唇膏
              </p>
            </a>
            <a href="#" class="collect"><img src="../assets/img/index/heart.png" alt=""></a>
            <p class="p-subtitle">AMPLIFIED LIPSTICK</p>
            <p>色号：<span class="color">VEGAS VOLT|粉橘色</span></p>
            <p>[显色丰润]</p>
          </div>
          <div class="p-img">
            <img src="../assets/img/mouth/mac_sku_M3LN31_280x320_0.jpg"/>
          </div>
          <div class="p-content">
            <div>
              <span class="p-price">￥ 170</span>
              <a href="#" class="cart">加入购物车</a>
            </div>
          </div>
        </div>
        <div class="p-detail">
          <div class="p-header-detail">
            <a href="#">
              <p class="p-title">显色丰润唇膏
              </p>
            </a>
            <a href="#" class="collect"><img src="../assets/img/index/heart.png" alt=""></a>
            <p class="p-subtitle">AMPLIFIED LIPSTICK</p>
            <p>色号：<span class="color">MORANGE|明亮橙红色</span></p>
            <p>[显色丰润]</p>
          </div>
          <div class="p-img">
            <img src="../assets/img/mouth/mac_sku_M3LN20_280x320_0.jpg"/>
          </div>
          <div class="p-content">
            <div>
              <span class="p-price">￥ 170</span>
              <a href="#" class="cart">加入购物车</a>
            </div>
          </div>
        </div>
        <div class="p-detail">
          <div class="p-header-detail">
            <a href="#">
              <p class="p-title">闪亮星泽唇膏
              </p>
            </a>
            <a href="#" class="collect"><img src="../assets/img/index/heart.png" alt=""></a>
            <p class="p-subtitle">FROST LIPSTICK</p>
            <p>色号：<span class="color">CB 96|人鱼姬色</span></p>
            <p>[闪亮星泽]</p>
          </div>
          <div class="p-img">
            <img src="../assets/img/mouth/mac_sku_M3000F_280x320_0.jpg"/>
          </div>
          <div class="p-content">
            <div>
              <span class="p-price">￥ 170</span>
              <a href="#" class="cart">加入购物车</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--评论区-->
    <div class="comment">
      <h1>产品评论</h1>
      <div class="advantage">
        <p class="title">优点：
          <span>显色（5）</span>
          <span>真实颜色（4）</span><span>奶油	（4）</span>
          <span>持久（5）</span>
          <span>颜色好看，日常，显气色。（5）</span>
        </p><a href="#">更多...</a>
      </div>
      <div class="comment-info">
        <span>阅读所有评论</span>
        <span id="write">写一个评论</span>
      </div>
      <div id="read">
        <div class="comment-desc">
          <h3 class="comment-title"><span class="morningstar">五星</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            炒鸡喜欢的</h3>
          <div class="comment-user">
            <p class="comment-date">25/03/2018</p>
            <p class="comment-username">Xiao</p>
            <p class="comment-ad">咸阳</p>
          </div>
          <p class="comment-detail">送给闺蜜的 她一直很中意这款产品 西柚色涂上很粉嫩的感觉 娇俏可爱</p>
          <a class="show" @click="showMore"><span class="more">更多细节...</span></a>
          <dl class="pr-rd-def-list">
            <dt>产品优点</dt>
            <dd>奶油, 持久, 显色, 真实颜色</dd>
          </dl>
          <dl class="pr-rd-def-list">
            <dt>您在哪里购买的该产品?</dt>
            <dd>魅可官网</dd>
          </dl>
          <p class="recommend-comment">是，我会把这个推荐给我的朋友</p>
          <p class="help">这个评论有帮助吗？<span class="have">有帮助（6）</span><span class="no">无用（2）</span></p>
          <p class="tip"><a href="#">举报该评论</a></p>
        </div>
        <div class="comment-desc">
          <h3 class="comment-title"><span class="morningstar">五星</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            炒鸡喜欢的</h3>
          <div class="comment-user">
            <p class="comment-date">25/03/2018</p>
            <p class="comment-username">Xiao</p>
            <p class="comment-ad">咸阳</p>
          </div>
          <p class="comment-detail">送给闺蜜的 她一直很中意这款产品 西柚色涂上很粉嫩的感觉 娇俏可爱</p>
          <a class="show"><span class="more">更多细节...</span></a>
          <dl class="pr-rd-def-list">
            <dt>产品优点</dt>
            <dd>奶油, 持久, 显色, 真实颜色</dd>
          </dl>
          <dl class="pr-rd-def-list">
            <dt>您在哪里购买的该产品?</dt>
            <dd>魅可官网</dd>
          </dl>
          <p class="recommend-comment">是，我会把这个推荐给我的朋友</p>
          <p class="help">这个评论有帮助吗？<span class="have">有帮助（6）</span><span class="no">无用（2）</span></p>
          <p class="tip"><a href="#">举报该评论</a></p>
        </div>
        <div class="comment-desc">
          <h3 class="comment-title"><span class="morningstar">五星</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            炒鸡喜欢的</h3>
          <div class="comment-user">
            <p class="comment-date">25/03/2018</p>
            <p class="comment-username">Xiao</p>
            <p class="comment-ad">咸阳</p>
          </div>
          <p class="comment-detail">送给闺蜜的 她一直很中意这款产品 西柚色涂上很粉嫩的感觉 娇俏可爱</p>
          <a class="show"><span class="more">更多细节...</span></a>
          <dl class="pr-rd-def-list">
            <dt>产品优点</dt>
            <dd>奶油, 持久, 显色, 真实颜色</dd>
          </dl>
          <dl class="pr-rd-def-list">
            <dt>您在哪里购买的该产品?</dt>
            <dd>魅可官网</dd>
          </dl>
          <p class="recommend-comment">是，我会把这个推荐给我的朋友</p>
          <p class="help">这个评论有帮助吗？<span class="have">有帮助（6）</span><span class="no">无用（2）</span></p>
          <p class="tip"><a href="#">举报该评论</a></p>
        </div>
        <div class="comment-desc">
          <h3 class="comment-title"><span class="morningstar">五星</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            炒鸡喜欢的</h3>
          <div class="comment-user">
            <p class="comment-date">25/03/2018</p>
            <p class="comment-username">Xiao</p>
            <p class="comment-ad">咸阳</p>
          </div>
          <p class="comment-detail">送给闺蜜的 她一直很中意这款产品 西柚色涂上很粉嫩的感觉 娇俏可爱</p>
          <a class="show"><span class="more">更多细节...</span></a>
          <dl class="pr-rd-def-list">
            <dt>产品优点</dt>
            <dd>奶油, 持久, 显色, 真实颜色</dd>
          </dl>
          <dl class="pr-rd-def-list">
            <dt>您在哪里购买的该产品?</dt>
            <dd>魅可官网</dd>
          </dl>
          <p class="recommend-comment">是，我会把这个推荐给我的朋友</p>
          <p class="help">这个评论有帮助吗？<span class="have">有帮助（6）</span><span class="no">无用（2）</span></p>
          <p class="tip"><a href="#">举报该评论</a></p>
        </div>
        <div class="comment-desc">
          <h3 class="comment-title"><span class="morningstar">五星</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            炒鸡喜欢的</h3>
          <div class="comment-user">
            <p class="comment-date">25/03/2018</p>
            <p class="comment-username">Xiao</p>
            <p class="comment-ad">咸阳</p>
          </div>
          <p class="comment-detail">送给闺蜜的 她一直很中意这款产品 西柚色涂上很粉嫩的感觉 娇俏可爱</p>
          <a class="show"><span class="more">更多细节...</span></a>
          <dl class="pr-rd-def-list">
            <dt>产品优点</dt>
            <dd>奶油, 持久, 显色, 真实颜色</dd>
          </dl>
          <dl class="pr-rd-def-list">
            <dt>您在哪里购买的该产品?</dt>
            <dd>魅可官网</dd>
          </dl>
          <p class="recommend-comment">是，我会把这个推荐给我的朋友</p>
          <p class="help">这个评论有帮助吗？<span class="have">有帮助（6）</span><span class="no">无用（2）</span></p>
          <p class="tip"><a href="#">举报该评论</a></p>
        </div>
      </div>
    </div>
    <div class="online">
      <img src="../assets/img/index/wo-online.png" alt="">
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        liplist: [],
        moved: 0,
        // pid:this.$route.params.pid
      }
    },

    created() {
      this.getlip();
    },
    mounted() {
      getdisabled:{
        var $btnprev = $("#prev");
        if (this.moved == 0) {
          $btnprev.addClass("disabled");
        }
      }
      mounted:{
          window.scrollTo(0,0)
      }

    },
    methods: {
      getlip() {
        this.$axios.get("http://localhost:3000/detail")
          .then(res => {
            this.liplist = res.data;
          })
      },
      //颜色选择器
      prev() {
        var $btnprev = $("#prev");
        var ulimgs = $btnprev.next().children(":only-child");
        var $btnnext = $("#next");
        if (!$btnprev.hasClass("disabled")) {
          this.moved--;
          ulimgs.css('marginTop', `${-this.moved * 100}px`);
          if (this.moved == 0) $btnprev.addClass("disabled");
          if (this.moved < this.liplist.length - 5)
            $btnnext.removeClass("disabled");
        }
      },
      next() {
        var $btnprev = $("#prev");
        var ulimgs = $btnprev.next().children(":only-child");
        var $btnnext = $("#next");
        if (!$btnnext.hasClass("disabled")) {
          this.moved++;
          ulimgs.css("marginTop", `${-this.moved * 100}px`);
          if (this.liplist.length - this.moved == 5)
            $btnnext.addClass("disabled");
          if (this.moved > 0) {
            $btnprev.removeClass("disabled");
          }
        }
      },
      imgChange(i) {
        var colorList = $(".colorlist").children();
        $(colorList).eq(i).css("height", "180px")
          .siblings().css("height", "100px")
          // .siblings().css("opacity","0.2");
        var $imgs = $(".md-img>img");
        // console.log($($imgs[i]).attr("index"));
        if ($($imgs[i]).attr("index") == i) {
          $($imgs[i]).addClass("show")
            .siblings().removeClass("show");
          $($("#super-mask>img")[i]).addClass("show")
            .siblings().removeClass("show");
          $($(".lipcolor")[i]).addClass('show')
            .siblings("p").removeClass('show');
          $($(".h2color")[i]).addClass('show')
            .siblings("h2").removeClass('show');
        }
      },
      //遮罩显示层和放大镜的显示

      maskshow() {
        $("#mask").toggle("active");
        $("#super-mask").toggle("active");
      },
      //更多描述
      moredesc() {
        $("#alldesc").toggle("active");
      },
      showMore(){
        $(".pr-rd-def-list").toggle("active");
      },
      //移动鼠标放大镜移动
      mousemove(e) {
        var $mask = $("#mask");
        var $smask = $("#super-mask");

        var offsetX = e.offsetX;
        var offsetY = e.offsetY;
        var top = offsetY - 150;
        var left = offsetX - 160;
        // console.log(offsetY+"----"+offsetX);
        top = top < 0 ? 0 : top > 300 ? 300 : top;
        left = left < 0 ? 0 : left > 320 ? 320 : left;
        $mask.css("top", `${top}px`);
        $mask.css("left", `${left}px`);
        // console.log($mask.css("top")+"-----"+$mask.css("left"));
        $smask.children().css("left", `${-2 * left}px`)
          .css("top", `${-2 * top}px`)
      }
    }
  }
</script>

<style>
  @import '../assets/CSS/product-detail.css';
</style>
