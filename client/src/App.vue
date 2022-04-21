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
    async fethNews() {
      const res = await fetch('http://localhost:2020/api/news')
      const data = await res.json();
      console.log(data)
      return data
    },

  },
  async created() {
    this.movies = await this.fethMovies()
    setTimeout(()=>{
      this.loading = false
    }, 2000)
    this.news = await this.fethNews()
  },
}
</script>

<style >
@tailwind base;
@tailwind components;
@tailwind utilities;
@import './assets/styles/style.css';
</style>