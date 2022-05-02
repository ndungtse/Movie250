<template>
  <div class="a-trending">
    <div class="trend__title">
      <h2>Trending</h2>
    </div>
    <div class="action__wrapper">
      <a v-for="trend in trends" :key="trend.id"
        target="_blank"
        href="https://ww1.goojara.to/mab4BV"
        class="trends__card"
      >
        <img
          :src="image_path+trend.backdrop_path"
          alt=""
        />
        <p>{{trend.title}}</p>
        <div class="trends__btn"><p>Watch Now</p></div>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  name: "MyTrends",
  props: {
      trends: Array,
      image_path: String
  }
};
</script>