<template>
  <div>
    <home-loader v-if="load" />
    <div v-else>
      <my-header />
      <my-navbar />
      <AtRends
        :trends="trends"
        :movie_url="movie_url"
        :image_path="image_path"
      />
      <CoSoon :soons="soons" :movie_url="movie_url" :image_path="image_path" />
      <AcPop :pops="pops" :movie_url="movie_url" :image_path="image_path" />
      <ac-olds :olds="olds" :movie_url="movie_url" :image_path="image_path" />
      <my-footer />
    </div>
  </div>
</template>

<script>
import MyHeader from "../Header.vue";
import MyNavbar from "../Navbar.vue";
import MyFooter from "../Footer.vue";
import AtRends from "./Atrends.vue";
import CoSoon from "./CoSoon.vue";
import AcPop from "./AcPop.vue";
import AcOlds from "./AcOlds.vue";
import HomeLoader from "../Loaders/HomeLoader.vue";

export default {
  name: "MyAction",
  data() {
    return {
      actions: [],
      trends: [],
      soons: [],
      pops: [],
      olds: [],
      load: true,
    };
  },
  props: {
    image_path: String,
    movie_url: String,
  },
  components: {
    MyHeader,
    MyNavbar,
    MyFooter,
    AtRends,
    CoSoon,
    AcPop,
    AcOlds,
    HomeLoader,
  },
  methods: {
    async getAction() {
      const res = await fetch(
        `https://api.themoviedb.org/3/movie/upcoming?api_key=${process.env.VUE_APP_TDB_KEY}&language=en-US&page=1`
      );
      const data = await res.json();

      const actions = data.results.filter((a) => a.genre_ids.includes(28));

      const restr = await fetch(
        `https://api.themoviedb.org/3/movie/now_playing?api_key=${process.env.VUE_APP_TDB_KEY}&language=en-US&page=1`
      );
      const datre = await restr.json();
      const trends = datre.results.filter((a) => a.genre_ids.includes(28));

      const resoon = await fetch(
        `https://api.themoviedb.org/3/movie/upcoming?api_key=${process.env.VUE_APP_TDB_KEY}&language=en-US&page=1`
      );
      const datasoon = await resoon.json();
      const soons = datasoon.results.filter((a) => a.genre_ids.includes(28));

      const fpop = await fetch(
        `https://api.themoviedb.org/3/movie/popular?api_key=${process.env.VUE_APP_TDB_KEY}&language=en-US&page=1`
      );
      const fdata = await fpop.json();
      const pops = fdata.results.filter((a) => a.genre_ids.includes(28));

      //    const res1= await fetch('http://localhost:2020/api/movies')
      //    const data1 = await res1.json()
      //    const acts = data1.filter(a => a.genre ==='action')
      //    const olds = acts.filter(a => a.status === "old")

      return { actions, trends, soons, pops };
    },
  },
  async created() {
    const all = await this.getAction();
    this.actions = await all.actions;
    this.trends = await all.trends;
    this.soons = await all.soons;
    this.pops = await all.pops;
    this.olds = await all.olds;
    this.load = false;
  },
};
</script>
