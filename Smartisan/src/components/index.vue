<template>
  <div class="container1">
    <!--轮播效果图-->
    <div class="banner">
      <slider animation="fade" style="height:470px">
        <slider-item v-for="item in sliderlist">
          <div>
            <img :src="item.url">
          </div>
        </slider-item>
<!--        <slider-item>
          <div>
            <img src="http://127.0.0.1:3000/img/index/HP-Banner-PC.jpg" alt="">
          </div>
        </slider-item>
        <slider-item>
          <div>
            <img :src="sliderlist[2].url" alt="">
          </div>
        </slider-item>-->
      </slider>
    </div>
    <!--产品区域-->
    <div class="index">
      <div class="index-left animated bounceInLeft"><h1>猎爱MINI妆备</h1><p>甜蜜轰炸，狂“刷”好感；子弹补给盒mini且强大</p><a href="#"><h4>立即购买</h4></a><img src="../assets/img/index/HP-SECONDARY-Banner_LookInBox-780x445-20180806.jpg" alt=""></div>
      <div class="index-right animated bounceInRight"><h1>玩转梦幻人鱼妆</h1><p>魔力多用粉，一粉多用玩妆必备</p><a href="#"><h4>立即购买</h4></a><img src="../assets/img/index/HP-SENCONDARY-Banner-1PC.jpg" alt=""></div>
    </div>-
    <!--产品导航-->
    <div class="f-nav animated bounceInUp">
      <h1>人气必BUY</h1>
      <ul class="tabs">
        <li><a href="#mouth" data-toggle="tab" class="tab-active">唇部热卖</a></li>
        <li><a data-toggle="tab" href="#eye">眼部热卖</a></li>
        <li><a data-toggle="tab" href="#face">底妆热卖</a></li>
      </ul>
      <!--产品列表-->
      <div class="productlist animated fadeInRight">
        <div id="mouth" class="tabcon-active" >
          <div class="mouth-productlist" v-for="item in mouthlist">
            <div class="product-detail">
              <div class="product-header-detail">
                <router-link :to="'/detail/'+item.pid">
                  <h3 class="product-title">{{item.p_title}}</h3>
                </router-link>
                <div class="score">
                   <div class="star-after">☆☆☆☆☆</div>
                     <div class="star-before" :style="{width: item.score +`%`}">★★★★★</div>
                  <span>{{item.score*1/20}}</span>
                </div>
                <a href="#" class="collect">
                  <img src="../assets/img/index/heart.png" alt="">
                </a>
                <p class="product-subtitle">{{item.p_subtitle}}</p>
                <p>色号：<span>{{item.color}}</span></p>
                <p>{{item.color_family}}</p>

              </div>
              <div class="productlist-img">
                <router-link :to="'/detail/'+item.pid">
                    <img :src="item.img_url" alt="">
                </router-link>
              </div>
            </div>
            <div class="product-content">
              <div>
                <span class="product-price">￥ {{item.p_price}}</span>
                <a href="#" class="cart">加入购物车</a>
              </div>
            </div>
          </div>
        </div>
        <div id="eye">
          <div class="eye-productlist" v-for="item in eyelist">
            <div class="product-detail">
              <div class="product-header-detail">
                <a href="#">
                  <h3 class="product-title">
                    {{item.p_title}}</h3>
                </a>
                <div class="score">
                  <div class="star-after">☆☆☆☆☆</div>
                  <div class="star-before" :style="{width: item.score +`%`}">★★★★★</div>
                  <span>{{item.score*1/20}}</span>
                </div>
                <a href="#" class="collect"><img src="../assets/img/index/heart.png" alt=""></a>
                <p class="product-subtitle">{{item.p_subtitle}}</p>
                <p>色号：
                  <span>{{item.color}}</span></p>
                <p>{{item.color_family}}</p>
              </div>
              <div class="productlist-img">
                <a href="#">
                <img :src="item.img_url" alt="">
                </a>
              </div>
            </div>
            <div class="product-content">
              <div>
                <span class="product-price">￥ {{item.p_price}}</span>
                <a href="#" class="cart">加入购物车</a>
              </div>
            </div>
          </div>

        </div>
        <div id="face">
          <div class="face-productlist"  v-for="item in facelist">
            <div class="product-detail">
              <div class="product-header-detail">
                <a href="#">
                  <h3 class="product-title">{{item.p_title}}</h3>
                </a>
                <div class="score">
                  <div class="star-after">☆☆☆☆☆</div>
                  <div class="star-before" :style="{width: item.score +`%`}">★★★★★</div>
                  <span>{{item.score*1/20}}</span>
                </div>
                <a href="#" class="collect"><img src="../assets/img/index/heart.png" alt=""></a>
                <p class="product-subtitle">{{item.p_subtitle}}</p>
                <p>色号：<span>{{item.color}}</span></p>
                <p>{{item.color_family}}</p>
              </div>
              <div class="productlist-img">
                <a href="#">
                <img :src="item.img_url" alt="">
                </a>
              </div>
            </div>
            <div class="product-content">
              <div>
                <span class="product-price">￥ {{item.p_price}}</span>
                <a href="#" class="cart">加入购物车</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--明星新品-->
    <div class="newtitle animated fadeInUpBig">
      <h1>明星新品</h1>
    </div>
    <div class="starnew animated bounceIn">
        <div class="starnew-item" v-for="item in newlist">
          <a href="#">
            <img :src="item.img_url" alt="">
          </a>
        </div>

      </div>

    <div class="online animated bounceInUp">
      <img src="../assets/img/index/wo-online.png" alt="">
    </div>
  </div>
</template>

<script>
  // 引入轮播组件
  import  {Slider,SliderItem} from 'vue-easy-slider'
  // import {axios} from 'axios'


  export default {
      data(){
        return {
          sliderlist:[],
          newlist:[],
          mouthlist:[],
          eyelist:[],
          facelist:[]
        }
      },
      created(){
        this.getSlider();
        this.getNew();
        this.getmouth();
        this.geteye();
        this.getface()
      },
      mounted(){
        this.Tab();
      },
      methods:{
          //轮播图
         getSlider(){
            this.$axios.get("http://localhost:3000/index")
              .then(res=>{
                this.sliderlist=res.data;
              })
          },
         getNew(){
          this.$axios.get("http://localhost:3000/index/new")
            .then(res=>{
              this.newlist=res.data;
            })
        },
          //唇部热卖
         getmouth(){
           this.$axios.get("http://localhost:3000/index/mouth")
             .then(res=>{
               this.mouthlist=res.data;
               // console.log(this.mouthlist);
             })
         },
         geteye(){
           this.$axios.get("http://localhost:3000/index/eye")
             .then(res=>{
               this.eyelist=res.data;
             })
         },
        getface(){
           this.$axios.get("http://localhost:3000/index/face")
             .then(res=>{
               this.facelist=res.data;
             })
        },
          //切换标签页
          Tab(){
            $(".tabs:has([data-toggle=tab])").on("click","[data-toggle=tab]",e=>{
              e.preventDefault();
              var $tar = $(e.target);
              console.log($tar);
              if (!$tar.is("tab-active")) {
                $tar.addClass("tab-active")
                  .parent().siblings().children(0).removeClass("tab-active");
                var id=$tar.attr("href");
                $(id).addClass("tabcon-active")
                  .siblings().removeClass("tabcon-active");
              }
            })
          }
      },
      components: {
        Slider,
        SliderItem
      }
    }
</script>

<style>
  div.tabcon-active{
    display: flex !important;
    flex-direction:row !important;
    flex-wrap: wrap !important;
  }
  #mouth div.mouth-productlist{
    width: 24%;
  }
</style>
