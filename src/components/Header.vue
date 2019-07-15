<template>
  <div class="subshop">
    <router-link class="btn" tag="a" to="./Subsearch">
      <mt-button size="large" @click.native="handleClick">
        <i class="mint-toast-icon mintui mintui-search"></i>
        清凉
      </mt-button>
    </router-link>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },

  methods: {
    handleClick() {}
  }
};
</script>

<style lang="scss">
.btn {
  .mint-button {
    background-color: #dedede;
    width: 94%;
    margin-top: 10px;
    margin-left: 3%;
  }
  .mint-button-text {
    font-size: 16px;
  }
  .mint-button i {
    display: inline-block;
    position: absolute;
    left: 36%;
    top: -16%;
  }
}
</style>
