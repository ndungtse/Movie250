<template>
  <div class="a-trending">
    <div class="trend__title">
      <h2>Comming Soon</h2>
    </div>
    <div class="action__wrapper">
      <a
        target="_blank"
        v-for="soon in soons"
        :key="soon.id"
        :href="movie_url+soon.title"
        class="trends__card"
      >
        <img :src="image_path+soon.poster_path" alt="" />
        <p>{{ soon.title }}</p>
        <div class="trends__btn"><p>See Trailer</p></div>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  name: "MySoons",
  data() {
      return {
          soons:[]
      }
  },
  props: {
    image_path: String,
    movie_url: String
  },
  methods: {
    async getSoons() {
      const resoon = await fetch(
        "https://api.themoviedb.org/3/movie/upcoming?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1"
      );
      const datasoon = await resoon.json();
      const soons = datasoon.results.filter((a) => a.genre_ids.includes(36) || a.genre_ids.includes(878));
      return soons;
    },
  },
  async created() {
      this.soons = await this.getSoons()
  },
};
</script>