<template>
  <div class="a-trending">
    <div class="trend__title">
      <h2>Old Schools</h2>
    </div>
    <div class="action__wrapper">
      <a
        target="_blank"
        v-for="old in olds"
        :key="old._id"
        href="https://ww1.goojara.to/moPGgY"
        class="trends__card"
      >
        <img :src="old.image" />
        <p>{{ old.title }}</p>
        <div class="trends__btn"><p>Watch Now</p></div>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  name: "AcOlds",
  data() {
    return {
      olds: [],
    };
  },
  // props: {
  //     olds: Array
  // },
  methods: {
    async getAction() {
      const fetch = require("node-fetch");

      const url = "https://movies-app1.p.rapidapi.com/api/movies";

      const options = {
        method: "GET",
        headers: {
          "X-RapidAPI-Host": "movies-app1.p.rapidapi.com",
          "X-RapidAPI-Key":
            "bbce629d3cmsh48cb41094daa35cp1157cejsn05466969482c",
        },
      };
      const res = await fetch(url, options);
      console.log(res);
      const data = await res.json();
      return data;
    },
  },
  async created() {
    const data = await this.getAction();
    this.olds = await data.results;
  },
};
</script>