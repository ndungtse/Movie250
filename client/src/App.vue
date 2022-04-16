<template>
  <div>
    <Header />
    <Navbar />
    <Footer />
  </div>
</template>

<script>
import Header from './components/Header.vue'
import Navbar from './components/Navbar.vue'
import Footer from './components/Footer.vue'

export default {
  name: 'App',
  components: {
    Header,
    Navbar,
    Footer
  },
  data() {
    return {
      movies: []
    }
  },
  methods: {
    async fethMovies() {
      const res = await fetch('http://localhost:2020/api/movies')
      const data = await res.json();
      console.log(data)
      return data
    }
  },
  async created() {
    this.movies = await this.fethMovies()
  },
}
</script>

<style>
</style>
