<template>
  <div id="products">
    <div class="p-fixed animated fadeInRightBig">
      <div class="product-fixed-nav">
        <header class="submenu-header">
          <h1>热卖唇膏断货王</h1>
        </header>
        <nav class="submenu-nav">
          <ul>
            <li><a href="#lipset">热卖套装</a></li>
            <li><a href="#redlip">红色系断货王</a></li>
            <li><a href="#orangelip">橙色系断货王</a></li>
          </ul>
        </nav>
      </div>
    </div>
    <div class="p-main">
     <div class="plist">
           <div class="hottaozhuang" id="lipset">
                <h1 class="animated fadeInLeft">热卖套装</h1>
                <div class="p-hotlist animated fadeInUp">
                  <div class="p-detail" v-for="item in hotlist" :key="item.pid">
                    <div class="p-header-detail">
                      <p class="p-title">
                        <router-link :to="'/detail/'+item.pid">
                        {{item.p_title}}
                        </router-link>
                      </p>
                      <span class="p-subtitle">{{item.p_subtitle}}</span>
                      <a href="#" class="collect"><img src="../assets/img/index/heart.png" alt=""></a>
                    </div>
                    <div class="p-img">
                      <router-link :to="'/detail/'+item.pid">
                        <img :src="item.img_url" />
                      </router-link>
                    </div>
                    <div class="p-content">
                      <div>
                        <span class="p-price">￥ {{item.p_price}}</span>
                        <a class="cart" @click="addcart(item.pid)">加入购物车</a>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
          <div class="reds" id="redlip">
               <h1 class="animated fadeInRight">红色系断货王</h1>
               <div class="p-redlist">
                 <div class="p-detail" v-for="item in redlist" :key="item.pid">
                   <div class="p-header-detail">
                     <router-link :to="'/detail/'+item.pid">
                       <p class="p-title">{{item.p_title}}
                       </p>
                     </router-link>
                     <a href="#" class="collect"><img src="../assets/img/index/heart.png" alt=""></a>
                     <p class="p-subtitle">{{item.p_subtitle}}</p>
                     <p>色号：<span class="color">{{item.p_color}}</span></p>
                     <p>{{item.color_family}}</p>
                   </div>
                   <div class="p-img">
                     <router-link :to="'/detail/'+item.pid">
                       <img :src="item.img_url" />
                     </router-link>
                   </div>
                   <div class="p-content">
                     <div>
                       <span class="p-price">￥ {{item.p_price}}</span>
                       <a class="cart" @click="addcart(item.pid)">加入购物车</a>
                     </div>
                   </div>
                 </div>

               </div>
             </div>
          <div class="oranges" id="orangelip">
                <h1>橙色系断货王</h1>
                <div class="p-orangelist">
                 <div class="p-detail" v-for="item in orangelist" :key="item.pid">
                    <div class="p-header-detail">
                      <router-link :to="'/detail/'+item.pid">
                        <p class="p-title">{{item.p_title}}
                        </p>
                      </router-link>
                      <a href="#" class="collect"><img src="../assets/img/index/heart.png" alt=""></a>
                      <p class="p-subtitle">{{item.p_subtitle}}</p>
                      <p>色号：<span class="color">{{item.p_color}}</span></p>
                      <p>{{item.color_family}}</p>
                    </div>
                    <div class="p-img">
                      <router-link :to="'/detail/'+item.pid"><img :src="item.img_url" /></router-link>
                    </div>
                   <div class="p-content">
                     <div>
                       <span class="p-price">￥ {{item.p_price}}</span>
                       <a class="cart" @click="addcart(item.pid)">加入购物车</a>
                     </div>
                   </div>
                 </div>

                </div>
              </div>
      </div>
    </div>
    <div id="fbuttons">
        <button class="fb1 btnactive">热卖套装</button>
        <button class="fb2">红色热卖</button>
        <button class="fb3">橙色热卖</button>
    </div>
    <div class="online">
      <img src="../assets/img/index/wo-online.png" alt="">
    </div>
  </div>
</template>

<script>
  import product from '../assets/js/product'
    export default {
      data(){
        return{
          hotlist:[],
          redlist:[],
          orangelist:[],
          count:1,
          pid:this.$route.params.pid,
          uid:window.sessionStorage.uid
        }
      },
      mounted(){},
      created(){
        this.gethot();
        this.getred();
        this.getorange()
      },
      methods:{
        gethot(){
          this.$axios.get("http://localhost:3000/products")
            .then(res=>{
              this.hotlist=res.data;
            })
        },
        getred(){
          this.$axios.get("http://localhost:3000/products/red")
            .then(res=>{
              this.redlist=res.data;
              // console.log(this.redlist);
            })
        },
        getorange(){
          this.$axios.get("http://localhost:3000/products/red")
            .then(res=>{
              this.orangelist=res.data;
            })
        },
        addcart(pid){
          if(this.uid===undefined){
            confirm("需先登录，方可查看购物车！点击确认跳转登录页面！");
            this.$router.push('/login');
          }else{
          this.$axios.get('http://localhost:3000/cart/add?pid='+pid+'&uid='+this.uid+'&count='+this.count).then(result=>{
            console.log(result.data);
            if(result.data.code===1){
                 alert("添加购物车成功")
              console.log(this.uid);
            }else{
              confirm(result.data.msg)
            }
          })
        }
        }
      }

    }
</script>

<style>
@import '../assets/CSS/mouth-product.css';
</style>
