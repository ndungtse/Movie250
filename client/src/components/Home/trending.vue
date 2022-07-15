<template>
  <div class="trendings">
    <div class="trend__title">
      <h2>Trending Movies <i class="bx bxs-chevron-right"></i></h2>
    </div>
    <div class="trends__wrapper">
      <router-link
        :to="{ name: 'Movie', params: { id: trend.id } }"
        v-for="trend in movies"
        :key="trend.id"
        target="_blank"
        class="trends__card"
      >
        <img :src="image_path + trend.poster_path" alt="" />
        <p>{{ trend.title }}</p>
        <div class="trends__btn"><p>Watch Now</p></div>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: "MyTrends",
  data() {
    return {
      trends: [],
    };
  },
   props: {
    movies: Array,
    image_path: String,
    movie_url: String
  },
  methods: {
    async getTrends() {
      const res = await fetch("http://localhost:2020/api/movies");
      const data = await res.json();
      const trends = data.filter((m) => m.status === "trending");
      console.log(trends);

      return trends;
    },
    async getVideos(id) {
      const res = await fetch(
        `https://api.themoviedb.org/3/movie/${id}/watch/providers?api_key=580723fc25986a1cec69f928267db062`
      );
      const data = await res.json();
      const lin = await data.results
      const lin1 = await lin.AR
      const link = await lin1.link
    //   console.log(link);
      return await link;
    },
  },
};
</script>