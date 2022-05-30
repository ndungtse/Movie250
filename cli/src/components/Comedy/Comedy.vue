<template>
  <div>
    <home-loader v-if="load" />
    <div v-else>
    <MyHeader />
    <my-navbar />
    <MyTrends :trends="trends" :movie_url="movie_url"
    :image_path="image_path" />
    <MySoons :soons="soons" :movie_url="movie_url"
    :image_path="image_path"/>
    <MyPops :pops="pops" :movie_url="movie_url"
      :image_path="image_path" />
    <!-- <MyOlds :olds="olds" /> -->
    <MyFooter />
    </div>
  </div>
</template>
<script>
import MyNavbar from "../Navbar.vue";
import MyFooter from "../Footer.vue";
import MyHeader from "../Header.vue";
import MyTrends from "./CmTrends.vue";
// import MyOlds from "./CmOlds.vue";
import MyPops from "./CmPops.vue";
import MySoons from "./CmSoons.vue";
import HomeLoader from '../Loaders/HomeLoader.vue'

export default {
  name: "MyComedy",
  components: {
    MyNavbar,
    MyFooter,
    MyHeader,
    MyTrends,
    MySoons,
    // MyOlds,
    MyPops,
    HomeLoader
  },
  data() {
    return {
      comedies: [],
      trends: [],
      soons: [],
      pops: [],
      olds: [],
      load: true
    };
  },
   props:{
       image_path: String,
       movie_url: String
    },
  methods: {
    async getComedy() {
      const res1 = await fetch('https://api.themoviedb.org/3/movie/top_rated?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1')
      const data1 = await res1.json()
      const com = await data1.results
      const pops = com.filter(p => p.genre_ids.includes(35))

      const res = await fetch(
        "https://api.themoviedb.org/3/movie/popular?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1"
      );
      const data = await res.json();
      const comedy = data.results.filter(c=> c.genre_ids.includes(35))
      return {comedy, pops};
    },
  },

  async created() {
    const all = await this.getComedy();

    this.comedies = await all.comedy
    this.trends = await all.comedy
    // this.soons = await all.soons;
    this.pops = await all.pops;
    // this.olds = await all.olds;
    this.load = false
  },
};
</script>