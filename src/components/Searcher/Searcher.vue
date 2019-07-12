<template>
  <div>
    <i class="iconfont icon-jiankuohaoxixia back"></i>
    <!-- <input type="button" class="back" value=" < " /> -->
    <input type="text" placeholder="清凉" class="search" />
  </div>
</template>

<script>
export default {
  data() {
    return {
      methods: {}
    };
  }
};
</script>

<style lang="scss">
.back {
  display: inline-block;
  width: 30px;
  height: 30px;
  border: 0px;
  color: black;
  text-align: center;
  line-height: 30px;
}
.search {
  width: 90%;
  height: 30px;
  padding-left: 8px;
  line-height: 30px;
  border: 0px;
  background: #ebe8e8;
}
</style>
