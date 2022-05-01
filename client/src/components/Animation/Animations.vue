<template>
  <div>
    <MyHeader />
    <my-navbar />
    <MyTrends :trends="trends" :image_path="image_path" />
    <MySoons :soons="soons" />
    <MyPops :pops="pops" />
    <!-- <MyOlds :olds="olds" /> -->
    <MyFooter />
  </div>
</template>

<script>
import MyNavbar from "../Navbar.vue";
import MyFooter from "../Footer.vue";
import MyHeader from "../Header.vue";
import MyTrends from "./AnTrends.vue";
// import MyOlds from "./AnOlds.vue";
import MyPops from "./AnPops.vue";
import MySoons from "./AnSoons.vue";

export default {
  name: "MyAnimation",
  components: {
    MyNavbar,
    MyFooter,
    MyHeader,
    MyTrends,
    MySoons,
    // MyOlds,
    MyPops,
  },
  data() {
    return {
      animations: [],
      trends: [],
      soons: [],
      pops: [],
      olds: [],
    };
  },
  props: {
      image_path: String 
  },
  methods: {
    async getAnimation() {
      // const res = await fetch('http://localhost:2020/api/movies')
      // const data = await res.json()
      const fetch = require("node-fetch");

      const url = "https://animes3.p.rapidapi.com/";

      const options = {
        method: "GET",
        headers: {
          "X-RapidAPI-Host": "animes3.p.rapidapi.com",
          "X-RapidAPI-Key":
            "bbce629d3cmsh48cb41094daa35cp1157cejsn05466969482c",
        },
      };
      const res = await fetch(url, options);
    //   console.log(res);
      const data = await res.json();
      return data;
    //   const animation = data.filter((d) => d.genre === "animation");
    //   const trends = animation.filter((r) => r.status === "trending");
    //   const soons = animation.filter((s) => s.status === "coming soon");
    //   const pops = animation.filter((p) => p.other === "popular");
    //   const olds = animation.filter((o) => o.status === "old");

    //   return { animation, trends, soons, pops, olds, data };
    },
    async getTrends() {
            const res = await fetch('https://api.themoviedb.org/3/movie/popular?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1')
            const data = await res.json();
            console.log(data)
            const last = await data.results.filter(d=> d.genre_ids.includes(16));
            return last
        }
  },

  async created() {
    const all = await this.getAnimation();

    this.animations = await all;
    this.trends = await this.getTrends();
    this.soons = await all.filter(a=> a.name=== 'action');
    this.pops = await all.filter(a=> a.name=== 'popular');
    // this.olds = await all.olds;
  },
};
</script>