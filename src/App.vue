<template>
  <div class="app">
    <router-view />
    <Foot v-if="$route.meta.keepAlive"/>
  </div>
</template>

<script>
import Foot from "./components/Footer/Footer";

export default {
  name: "app",
  components: {
    Foot
  }
};
</script>
  
<style lang="scss">
body,
html {
  width: 100%;
  height: 100%;
}
* {
  margin: 0;
  padding: 0;
}
.app {
  width: 100%;
  height: 100%;
}
</style>
