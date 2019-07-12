<template>
  <div id="app">
    <Magazine/>
  </div>
</template>

<script>
import Magazine from './pages/Magazine'
// import Mint from 'mint-ui';
// import 'mint-ui/lib/style.css';
// import Vue from "vue";
// Vue.use(Mint)

export default {
  name: 'app',
  components: {
    Magazine
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  /* color: #2c3e50; */
  margin-top: 0px;
}
</style>
