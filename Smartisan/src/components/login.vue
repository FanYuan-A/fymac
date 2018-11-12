<template>
  <div id="logins">
    <h1 class="animated bounceInDown">M·A·C Login</h1>
    <div class="login-form animated bounceInDown">
      <div class="close"></div>
      <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
      </div>
      <div class="clear"></div>
      <div class="avtar">
        <img src="../assets/img/login/avtar.png"/>
      </div>
      <form>
        <div id="showuname">
          <input v-model="uname" type="text" class="text" placeholder="请输入3~9位用户名" autofocus>
        </div>
        <div id="showupwd">
          <input v-model="upwd" autocomplete value="123456" type="password" placeholder="请输入6~8位密码" @keyup.13="ulogin">
        </div>
      </form>
      <div class="signin">
        <input type="submit" value="Login" @click="ulogin" >
      </div>
    </div>
  </div>
</template>

<script>
  import qs from '../.././node_modules/qs/dist/qs'


  export default {
    data() {
      return {
        uname: 'dingding',
        upwd: '123456',
      }
    },
    created() {
    },
    mounted() {
      // console.log(bus);
    },
    methods: {
      //用户登录
      ulogin() {
        this.$axios.post("http://127.0.0.1:3000/user/login",
          // {uname:this.uname,upwd:this.upwd}
          qs.stringify({uname: this.uname, upwd: this.upwd})
        ).then(res => {
          // console.log(this.uname+"--"+this.upwd)
          if (res.data.ok == 1) {
            window.sessionStorage.uid = res.data.uid;
            alert("登录成功，确认后返回上一页！");
               // onChage();
            this.$store.commit('myLogin')
            this.$router.back();
            // this.$bus.emit('loading','123')
          } else {
            alert(res.data.msg);
          }
        })
      },


    }
  }
</script>

<style scoped>
  @import "../assets/CSS/login.css";
</style>
