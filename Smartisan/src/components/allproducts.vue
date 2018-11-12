<template>
  <div class="plist">
    <div class="search">
      <input type="text" placeholder="请输入搜索的内容" autofocus  v-model="kw" @keyup.13="getList">
      <button @click="getList">搜索</button>
    </div>
    <div class="prolist">
      <div class="p-detail" v-for="item in alllist" :key="item.pid">
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
            <a @click="addcart(item.pid)" class="cart">加入购物车</a>
          </div>
        </div>
             </div>

    </div>
    </div>
</template>

<script>
    export default {
      data(){
        return{
          alllist:[],
          kw:this.$route.params.kw,
          pno:1,
          uid:window.sessionStorage.uid,
          count:1,
        }
      },
      created(){

        this.getList();
      },
      methods: {
        /*getall() {
          this.$axios.get("http://localhost:3000/products/all")
            .then(res => {
              this.alllist = res.data;
            })
        },
   */
      getList() {
        this.$axios.get("http://127.0.0.1:3000/products/list?kw=" + this.kw + "&pno=" + this.pno).then(result => {
          if (result.data.code == 1) {
            this.alllist = result.data.msg;
          }
          else
            alert("商品正在上架中！您也可以搜索哑光和柔感！");
        });
      },
        addcart(pid){
          console.log('pid=' + pid + '&uid=' + this.uid + '&count=' + this.count);
          if(this.uid===undefined){
            confirm("需先登录，方可查看购物车！点击确认跳转登录页面！");
            this.$router.push('/login');
          }else {
            this.$axios.get('http://localhost:3000/cart/add?pid=' + pid + '&uid=' + this.uid + '&count=' + this.count).then(result => {
              if (result.data.code == 1) {
                alert("添加购物车成功")
              } else {
                confirm(result.data.msg);
                this.$router.push('/login');
              }
            })
          }
        }

      }
    }

</script>

<style scoped>
  @import '../assets/CSS/allpro.css';
</style>
