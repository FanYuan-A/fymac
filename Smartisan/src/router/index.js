import Vue from 'vue'
import Router from 'vue-router'
import index from '../components/index'
import Products from '../components/products'
import Detail from  '../components/detail'
import Login from '../components/login'
import Allpro from '../components/allproducts'
import Cart from '../components/cart'

import '../assets/CSS/reset.css'
import '../assets/CSS/animate.css'
import '../assets/CSS/base.css'
import '../assets/CSS/index.css'

Vue.use(Router);

export default new Router({
  routes: [
    {path:'/', component:index},
    {path:'/index', component:index},
    {path:'/products', component:Products},
    {path:'/detail/:pid', component:Detail},
    {path:'/login', component:Login},
    {path:'/allproduct/:kw',component:Allpro},
    {path:'/cart',component:Cart}
  ]
})

