<template>
  <router-view
    :movies="movies"
    :image_path="image_path"
    :news="news"
    :loading="loading"
    :getVideos="this.getVideos"
    :movie_url="movie_url"
   />
</template>

<script>
export default {
  name: "MyRoutes",
  data() {
    return {
      movies: [],
      news: [],
      loading: false,
      image_path: "https://image.tmdb.org/t/p/w500",
      movie_url: 'https://www.youtube.com/results?search_query='
    };
  },
  methods: {
    async fethMovies() {
      const res = await fetch(
        `https://api.themoviedb.org/3/movie/popular?api_key=${process.env.VUE_APP_TBD_KEY}&language=en-US&page=1`
      );
      const data = await res.json();
      console.log(data);
      return data.results;
    },
    async getHomeNews() {
      const localNews = localStorage.getItem("news");
      if(localNews){
        this.news = JSON.parse(localNews);
        this.loading = false;
        return JSON.parse(localNews);
      }else{
        const options = {
        method: "GET",
        headers: {
          "X-RapidAPI-Host": "online-movie-database.p.rapidapi.com",
          "X-RapidAPI-Key":
            "18cae65599mshc2ae603a38272a2p19e31djsn4718e8d63b0c",
        },
      };
      const res = await fetch(
        "https://online-movie-database.p.rapidapi.com/title/get-news?tconst=tt0944947&limit=25",
        options
      );
      const data = await res.json();
      const rel = await data.items.slice(0, 3);
        localStorage.setItem("news", JSON.stringify(data.items));
        this.news = rel;
        this.loading = false;
      return rel;
      }
    },

    async getVideos(id) {
      const res = await fetch(
        `https://api.themoviedb.org/3/movie/${id}/watch/providers?api_key=${process.env.VUE_APP_TBD_KEY}&language=en-US`
      );
      const data = await res.json();
      console.log(data.results.AE);
      return data.results.AE.link;
    },
  },
  async created() {
    console.log(process.env.VUE_APP_TBD_KEY);
    
    this.movies = await this.fethMovies();
    this.news = await this.getHomeNews();
    this.loading = false;
  },
};
</script>

<style >
@tailwind base;
@tailwind components;
@tailwind utilities;
@import "./assets/styles/style.css";
</style>
