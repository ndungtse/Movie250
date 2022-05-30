<template>
  <div>
    <HomeLoader v-if="loading" />
    <div v-else>
      <MyHeader />
      <MyNavbar />
      <!-- <MyNews :news="news" /> -->
      <MyTrends
        :movies="movies"
        :image_path="image_path"
        :getVideos="getVideos"
        :movie_url="movie_url"
      />
      <MySoon :image_path="image_path"
       :getVideos="getVideos" :movie_url="movie_url"/>
      <my-olds :movie_url="movie_url"/>
      <MyCat />
      <MyFooter />
    </div>
  </div>
</template>

<script>
// import MyNews from "./Home/news.vue";
import MyNavbar from "./Navbar.vue";
import MyHeader from "./Header.vue";
import MyFooter from "./Footer.vue";
import MyTrends from "./Home/trending.vue";
import MySoon from "./Home/soon.vue";
import MyCat from "./Home/cat.vue";
import HomeLoader from "./Loaders/HomeLoader.vue";
import MyOlds from "./Action/AcOlds.vue";

export default {
  name: "MyHome",
  components: {
    // MyNews,
    MyHeader,
    MyFooter,
    MyNavbar,
    MyTrends,
    MySoon,
    MyCat,
    MyOlds,
    HomeLoader,
  },
  mounted(){
    this.movies = this.fethMovies()
  },
  data(){
    return {
      movies: []
    }
  },
  props: {
    news: Array,
    loading: Boolean,
    image_path: String,
    getVideos: {
      type: Function,
    },
    movie_url: String
  },
  emits: ["getVideos"],
  methods: {
    async fethMovies() {
      const res = await fetch(
        `https://api.themoviedb.org/3/movie/popular?api_key=${process.env.VUE_APP_TDB_KEY}&language=en-US&page=1`
      );
      const data = await res.json();
      console.log(data);
      this.movies = await data.results
      return data.results;
    },
  }
};
</script>

<style scoped>
.active {
  color: rgb(42, 164, 235);
}
</style>