<template>
    <div class="trends__wrapper">
      <a
        v-for="trend in movies"
        :key="trend.id"
        target="_blank"
        :href="movie_url+trend.title"
        class="trends__card"
      >
        <img :src="image_path + trend.poster_path" alt="" />
        <p>{{ trend.title }}</p>
        <div class="trends__btn"><p>Watch Now</p></div>
      </a>
    </div>
</template>

<script>
export default {
    name: 'MovieCard',
    props: {
        movies: Array,
        image_path: String,
        movie_url: String
    },
    
}
</script>