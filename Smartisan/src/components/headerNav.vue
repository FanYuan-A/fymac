<template>
  <div id="header">
    <div class="header-nav">
      <ul class="menu">
        <li class="logo">
          <router-link to="index"><img src="../assets/img/index/site-logo.png" alt=""></router-link>
        </li>
        <li>
          <router-link to="/products">子弹头断货王</router-link>
        </li>
        <li><a href="#">新品快讯</a></li>
        <li>
          <router-link to="/products">全部产品</router-link>
        </li>
        <li>
          <router-link to="/products">热卖产品</router-link>
        </li>
        <li><a href="#">更多</a>
        </li>
        <li><a href="#"><img src="../assets/img/index/search.png" title="搜索"></a></li>
        <li><a href="#" class="email"><img src="../assets/img/index/email.png" title="电子邮箱注册"></a></li>
        <!--<li id="gologin" v-if="!this.$store.isLogin">-->
        <li id="gologin" v-show="!this.$store.state.isLogin">
          <router-link to="/login" class="login"><img src="../assets/img/index/login.png" title="My M·A·C">
          </router-link>
        </li>
        <li id="gologout" v-show="this.$store.state.isLogin" @click="logout">
          <router-link to="/">欢迎{{Uname}}，点我注销登录</router-link>
        </li>
        <li id="cart">
          <router-link to="/cart">
            <img src="../assets/img/index/cart1.png" title="我的购物车">
            <!--<span>{{$store.getters.optCount}}</span>-->
          </router-link>
        </li>
      </ul>
    </div>
    <div class="form-list">
      <!--搜索框-->
      <form action="" class="search animated fadeIn">
        <input type="text" placeholder="输入搜索词" class="search-input" v-model="kw" @keyup.13="search(kw)">
        <input type="submit" value="搜索" class="search-btn" @click="search(kw)">
      </form>
      <!--邮箱注册框-->
      <div class="user-email  animated heartBeat">
        <h2>注册！</h2>
        <p>订阅期刊，接收魅可官网咨询，包含新产品，服务，活动及优惠，得到在门店上线新产品之前购买的提醒。</p>
        <form>
          <input v-model="email" type="email" placeholder="请输入电子邮箱地址" class="email-input" @focusout="isokemail">
          <span id="email"></span>
          <input v-model="uname" type="text" placeholder="请输入用户名称" class="name-input" @focusout="isokuname">
          <span id="uName"></span>
          <input v-model="upwd" type="password" placeholder="请输入用户密码6~8位" class="pwd-input" @focus="isokupwd">
          <span id="upwd"></span>
          <input type="submit" class="email-btn" @click="register">
          <img src="../assets/img/index/MAC_Wechat_QR.png" alt="">
          <p>手机扫码关注</p>
          <p>MAC魅可官方微信</p>
        </form>
      </div>
    </div>
    <div class="erji">
      <div class="new animated bounceIn">
        <div class="img-nav">
          <div class="cover">
            <h4>MAC Girls戏精眼影</h4>
            <p>眼影高光8+1,6组配色演绎个性，1盘9色多功能，玩出戏精本色！</p>
            <a href="#" class="image-hover-link">查看系列</a>
          </div>
          <h4>MAC Girls戏精眼影</h4>
          <img src="../assets/img/index/MG-BITCH-all-collections-640x640.jpg" alt="">
        </div>
        <div class="img-nav">
          <div class="cover">
            <h4>魅可海洋亮白气垫霜SPF50/PA++++</h4>
            <p>魅可全新气垫霜，打造健康光感肌</p>
            <a href="#" class="image-hover-link">查看系列</a>
          </div>
          <h4>魅可海洋亮白气垫霜SPF50/PA++++</h4>
          <img src="../assets/img/index/640.jpg" alt="">
        </div>
        <div class="img-nav">
          <div class="cover">
            <h4>魅可晶亮唇彩</h4>
            <p>独特的光泽闪现玻璃般的润泽</p>
            <a href="#" class="image-hover-link">查看系列</a>
          </div>
          <h4>魅可晶亮唇彩</h4>
          <img src="../assets/img/index/LR-AllCollection-640x640.jpg" alt="">
        </div>
        <div class="img-nav">
          <div class="cover">
            <h4>魅可晶亮唇彩</h4>
            <p>魅可臻透系列为皮肤增添光泽</p>
            <a href="#" class="image-hover-link">查看系列</a>
          </div>
          <h4>魅可臻透系列</h4>
          <img src="../assets/img/index/ntn_640.jpg" alt="">
        </div>
        <div class="img-nav">
          <div class="cover">
            <h4>魅可晶亮唇彩</h4>
            <p>从柔和的粉彩到珊瑚和李子色，色泽自然</p>
            <a href="#" class="image-hover-link">查看系列</a>
          </div>
          <h4>魅可立体绒光系列</h4>
          <img src="../assets/img/index/extradimension_640X640.jpg" alt="">
        </div>
      </div>
      <ul class="product animated jello">
        <li><a href="#">流行趋势</a></li>
        <li><a href="#">彩妆</a></li>
        <li><a href="#">妆前</a></li>
        <li><a href="#">护肤</a></li>
        <li><a href="#">刷子和工具</a></li>
      </ul>
    </div>
  </div>
</template>

<script>
  import {realconsole} from '../assets/js/header'
  import qs from '../.././node_modules/qs/dist/qs'

  export default {
    data() {
      return {
        email: '',
        uname: '',
        upwd: '',
        RegU: /^[0-9a-zA-Z]{3,9}$/,
        RegPwd: /^[0-9a-zA-Z]{6,8}$/,
        RegE: /^([a-zA-Z0-9]+[_|\.])*[a-zA-Z0-9]+@([a-zA-Z-0-9]+[_|\.]?)[A-Za-z-0-9]+\.[a-zA-Z]{2,3}$/,
        islogin1: false,
        Uname: '',
        kw: this.$route.params.kw,
      }
    },
    created() {
      // this.islogin();

    },
    mounted() {
      console.log(this.$store.state.isLogin)
      //判断是否登录
      this.islogin();
      // console.log(onChange());
      // localStorage.setItem(this.islogin1)
     /* this.$bus.on('loading', (val) => {
        location.reload();
        console.log('123');
      })*/
      // console.log(bus);
    },
    /*updated(){
      this.islogin1;
      console.log(1111);
    },*/
    //引入js文件
    methods: {
      methods1: function () {
        realconsole();
      },
      isokemail() {
        if (this.RegE.test(this.email)) {
          this.$axios.get("http://127.0.0.1:3000/register/isemail?email=" + this.email)
            .then(result => {
              if (result.data.ok == 1) {
                $("#email").html("该邮箱已被注册，请更换")
              } else {
                $("#email").html("邮箱格式正确")
              }
            })
        } else {
          $("#email").html("请输入邮箱的正确格式")
        }
      },
      isokuname() {
        if (this.RegU.test(this.uname)) {
          this.$axios.get("http://127.0.0.1:3000/register/isemail?uname=" + this.uname)
            .then(result => {
              if (result.data.ok == 1) {
                $("#uName").html("用户名已被注册，请更换")
              } else {
                $("#uName").html("用户名格式正确")
              }
            })
        } else {
          $("#uName").html("请输入用户名正确格式")
        }
      },
      isokupwd() {
        if (this.RegPwd.test(this.upwd)) {
          $("#upwd").html("密码格式正确")
        } else {
          $("#upwd").html("请输入密码的正确格式")
        }
      },
      //注册
      register() {
        if (this.RegE.test(this.email) && this.RegU.test(this.uname) && this.RegPwd.test(this.upwd)) {
          this.$axios.post("http://127.0.0.1:3000/register/register",
            //将json对象转化成字符串
            qs.stringify({email: this.email, uname: this.uname, upwd: this.upwd})
          ).then(res => {
            if (res.data.code == 1) {
              console.log(this.email + "--" + this.uname + "--" + this.upwd);
              alert(res.data.msg);
              $(".user-email").hide();
              this.$router.push('/login');
            } else {
              alert("注册失败，请按照正确格式填写");
            }
          })
        }
      },
      //判断登录
      islogin() {
        if (window.sessionStorage.uid) {
          this.$axios.get(
            "http://127.0.0.1:3000/user/islogin?uid=" + window.sessionStorage.uid
          ).then(res => {
            // onChange();
              this.$store.commit('myLogin')
            //this.islogin1 = true;
            this.Uname = res.data.msg;
          })
        }
      },
      //注销
      logout() {
        window.sessionStorage.clear();
        // console.log(window.sessionStorage);
        this.islogin();
        location.reload();
        // this.$store.commit('myLogin');
      },
      // 搜索
      search(kw) {
        if (this.kw.trim() !== ""){
          this.$router.push('/allproduct/' + this.kw);
          $("form").hide();
        }
      }
    }

  }

</script>

<style scoped>
  @import "../assets/CSS/header.css";
</style>
