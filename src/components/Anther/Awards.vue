<template>
  <div class="awards">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide" v-for="(item,idx) in bans" :key="idx">
          {{item.url}}
        </div>
      </div>
    </div>
    
  </div>
</template>

<script>
export default {
  data() {
    return {
      bans: [
        {
          name: 1,
          url: require("../../assets/Da/dashang1.gif")
        },
        {
          name: 2,
          url: require("../../assets/Da/dashang2.jpg")
        }
      ]
    };
  },
  mounted() {
    var mySwiper = new Swiper(".swiper-container", {
      // centeredSlides: true,
      slidesPerView: "auto"
    });
  }
};
</script>

<style>
.awards {
  width: 100%;
}
</style>
