<template>
  <div id="cartcontainer">
    <div style="height: 50px"></div>
    <div class="cart_detail">
      <div class="wrap">
        <h1 class="your_cart">购物车</h1>
        <div v-if="!(list.length)">
          <div style="width: 100%">
            <h1>您的购物车里没有任何商品，无法结账。</h1>
            <router-link to="/products"  style="color: red;text-decoration: underline;font-size: 24px">去购物</router-link>
          </div>
        </div>
        <table v-else id="cart_table">
          <thead>
          <tr>
            <th class="section_header product" colspan="2"><p>产品</p></th>
            <th class="section_header">数量</th>
            <th class="section_header">价格</th>
            <th class="section_header">总额</th>
            <th class="section_header"></th>
          </tr>
          </thead>
          <tbody>
         <tr  v-for="item in list" :key="item.id">
              <td class="item_detail" colspan="2">
                  <div>
                      <img :src="item.img_url" alt="">
                      <div>
                          <p>{{item.p_title}}</p>
                          <p>{{item.p_subtitle}}</p>
                          <p>{{item.color_family}}</p>
                          <p>{{item.p_color}}</p>
                      </div>
                  </div>
              </td>
              <td class="item_count">
                <button @click="mut">-</button>
                <span>{{item.count}}</span>
                <button @click="add">+</button>
              </td>
              <td class="price">
                  ¥<span>{{item.p_price}}</span>
              </td>
              <td>
                  ¥<span id="total1">{{(item.p_price*item.count).toFixed(2)}}</span>
              </td>
               <td>
                 <button @click="deletecart(item.id)">移除</button>
               </td>
          </tr>

          </tbody>
        </table>
        <div  class="cart_bottom">
          <div>
            <a href="#">新增优惠代码</a>
          </div>
          <div>
            <h1>您的订单小计</h1>
            <div><p>预计总额</p>
            <p>￥<span>{{total.toFixed(2)}}</span></p></div>
          </div>
        </div>
      </div>
    </div>
    <div class="cart_nav">
      <div class="wrap">
        <router-link to="products"  class="goon_buy">
          <div class="left_arrow"></div>
          继续购买
        </router-link>
        <a href="#" class="check_out" @click="checkout">结账</a>
      </div>
    </div>
    <div class="promise">
      <h3>我们承诺</h3>
      <p>顾客在本网站订购产品，在收到货物后10天内，发现有质量问题或损坏，可以咨询客服进行换货或退货</p>
    </div>

  </div>
</template>

<script>
    export default {
        data(){
          return {
            uid:window.sessionStorage.uid,
            list:[],
            total:0,
            count:1,
            pid:this.$route.params.pid
          }
        },
      created(){
        this.getList();
      },
      mounted(){},
      methods:{
        // 购物车加号按钮
        add(e){
          var count=e.target.previousElementSibling;
          var price=e.target.parentElement.nextElementSibling.firstElementChild;
          var itemtotal=price.parentElement.nextElementSibling.firstElementChild;
          (count.innerHTML)++;
          itemtotal.innerHTML=parseInt(parseInt(price.innerHTML)*parseInt(count.innerHTML)).toFixed(2);
          this.total+=parseInt(price.innerHTML);
          // this.addcart(pid);
          // console.log(this.total);
          // console.log(price.innerHTML);

        },
        //  购物车减号按钮
        mut(e){
          var count=e.target.nextElementSibling;
          var price=e.target.parentElement.nextElementSibling.firstElementChild;
          var itemtotal=price.parentElement.nextElementSibling.firstElementChild;
          if(parseInt(count.innerHTML)>1){
          (count.innerHTML)--;
          itemtotal.innerHTML=parseInt(parseInt(price.innerHTML)*parseInt(count.innerHTML)).toFixed(2);
          // if(parseInt(count.innerHTML)>1){
          this.total-=parseInt(price.innerHTML);
            this.getList();
            // console.log(pid);
          // console.log(this.total);
          // }
          }
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
        },
        //通过uid获取购物车内容
        getList(){
          if(this.uid==undefined){
            if(confirm("需先登录，方可查看购物车！点击确认跳转登录页面！")){
              this.$router.push('/login');
            }
          }else{
            this.$axios.get("http://127.0.0.1:3000/cart?uid="+this.uid).then(result=>{
              if(result.data.code==1){
                this.list=result.data.msg;
                var total=0;
                for(var i=0;i<this.list.length;i++){
                  total+=this.list[i].count*this.list[i].p_price;
                }
                this.total=total;
                // console.log(this.total);
              }
            })
          }
        },
        deletecart(id){
          this.$axios.get("http://127.0.0.1:3000/cart/delete?id="+id).then(result=>{
            if(result.data.code==1){
            confirm("请确认是否删除该购物车记录");
              this.getList();

            /*this.$axios.get("http://127.0.0.1:3000/cart?uid="+this.uid).then(result=>{
              this.list=result.data.msg;
              var total=0;
              for(var i=0;i<this.list.length;i++){
                total+=this.list[i].count*this.list[i].p_price;
              }
              this.total=total;
            })*/
            }
          })
        },
        checkout(){
          alert('订单已完成完成，我们会尽快安排给您发货，谢谢');
          this.$router.push('/');
        }

      }
    }
</script>

<style scoped>
@import "../assets/CSS/cart.css";
</style>
