<template>
   <div>
     <MyHeader />
     <MyNavbar />
     <MyNews :news="news"/>
     <MyTrends :movies="movies" />
     <MySoon />
     <MyCat />
     <MyFooter />
    </div>
</template>

<script>
import MyNews from './Home/news.vue'
import MyNavbar from './Navbar.vue'
import MyHeader from './Header.vue'
import MyFooter from './Footer.vue'
import MyTrends from './Home/trending.vue'
import MySoon from './Home/soon.vue'
import MyCat from './Home/cat.vue'

export default {
    name: 'MyHome',
    components: {
        MyNews,
        MyHeader,
        MyFooter,
        MyNavbar,
        MyTrends,
        MySoon,
        MyCat
    },
    props: {
        movies: Array,
        news: Array
    },
    created() {
    },
}
</script>

<style scoped>
  .active {
      color: rgb(42, 164, 235);
  }
</style>