<template>
  <div id="app">
    <HeaderNav></HeaderNav>
    <router-view></router-view>
    <FooterNav></FooterNav>
  </div>
</template>

<script>

  import HeaderNav from './components/headerNav'
  import FooterNav from './components/footerNav'


  export default {
    data(){
      return {
        hackReset:false
      }

    },
    mounted() {
      // console.log(Bus);
    },
    methods:{
      onChange() {
        this.hackReset = false
        this.$nextTick(() => {
          this.hackReset = true
        })
      }
    },
    //渲染
    components: {
      HeaderNav,
      FooterNav
    }
  }
</script>

<style>

</style>
