<template>
  <div class="trendings">
      <div class="trend__title">
            <h2>Trending Movies <i class="bx bxs-chevron-right"></i></h2>
        </div>
        <div class="trends__wrapper">
            <a v-for="trend in trends" :key="trend.id" target="_blank"
             href="https://www.youtube.com/watch?v=mqqft2x_Aa4" class="trends__card">
                <img :src="trend.image"
                    alt="">
                <p>{{trend.name}}</p>
                <div class="trends__btn"><p>Watch Now</p></div>
            </a>
        </div>
  </div>
</template>

<script>

export default {
    name: 'MyTrends',
    data() {
        return {
            trends: [],
        }
    },
    props: {
        movies: Array,
    },
    methods: {
       async getTrends(){
           const res = await fetch('http://localhost:2020/api/movies')
           const data = await res.json();
           const trends = data.filter((m)=> m.status === "trending")
           console.log(trends);

           return trends
        }
    },
  
async created() {
    this.trends = await this.getTrends()
  }
}
  
</script>