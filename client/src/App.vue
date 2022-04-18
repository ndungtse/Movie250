<template>
        <router-view :movies="movies" :news="news"></router-view>
</template>

<script>
export default {
    name: 'MyRoutes',
  data() {
    return {
      movies: [],
      news: []
    }
  },
  methods: {
    async fethMovies() {
      const res = await fetch('http://localhost:2020/api/movies')
      const data = await res.json();
      console.log(data)
      return data
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
    this.news = await this.fethNews()
  },
}
</script>