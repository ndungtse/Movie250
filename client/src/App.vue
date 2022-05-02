<template>
        <router-view :movies="movies" :image_path="image_path"
         :news="news" :loading="loading" ></router-view>
</template>

<script>
export default {
    name: 'MyRoutes',
  data() {
    return {
      movies: [],
      news: [],
      loading: true,
      image_path: 'https://image.tmdb.org/t/p/w500'
    }
  },
  methods: {
    async fethMovies() {
      const res = await fetch('https://api.themoviedb.org/3/movie/popular?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1')
      const data = await res.json();
      console.log(data)
      return data.results
    },
    async getHomeNews(){
      const options = {
        method: "GET",
        headers: {
          "X-RapidAPI-Host": "online-movie-database.p.rapidapi.com",
          "X-RapidAPI-Key":
            "bbce629d3cmsh48cb41094daa35cp1157cejsn05466969482c",
        },
      };
      const res = await fetch(
        "https://online-movie-database.p.rapidapi.com/title/get-news?tconst=tt0944947&limit=25",
        options
      );
      const data = await res.json();
      console.log(data.items);
      const rel = await data.items.slice(0, 3)
      return rel;
    }

  },
  async created() {
    this.movies = await this.fethMovies()
    this.news = await this.getHomeNews()
      this.loading = false
  },
}
</script>

<style >
@tailwind base;
@tailwind components;
@tailwind utilities;
@import './assets/styles/style.css';
</style>