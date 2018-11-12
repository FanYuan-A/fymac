// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import 'swiper/dist/css/swiper.css';
import $ from 'jquery'
import axios from 'axios'
import VueAxios from 'vue-axios'
import VueBus from 'vue-bus'
import Vuex from 'vuex'


Vue.use(Vuex)

Vue.use(VueBus);

Vue.use(VueAxios, axios)

//1.3.3创建vuex实例
var store=new Vuex.Store({
  //创建共享数据
  state:{
    count:0,
    isLogin:false
  },
  //提供操作数据的共享方法
  mutations:{
    increment(state){
      state.count++;
    },
    subtract(state){
      if(state.count>1)
        state.count--;
    },
    myLogin(state){
      state.isLogin = true
    }
  },
  getters:{
    optCount:function(state){
      return state.count;
    },
    optLogin:function(state){
      return state.isLogin;
    }
  }
});

// Vue.config.productionTip = false;
Vue.prototype.$axios=axios;




new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
}).$mount("#app")
