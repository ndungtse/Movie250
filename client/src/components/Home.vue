<template>
   <div>
      <HomeLoader v-if="loading" />
      <div v-else>
     <MyHeader />
     <MyNavbar />
     <MyNews :news="news"/>
     <MyTrends :movies="movies" :image_path="image_path"/>
     <MySoon :image_path="image_path" />
     <my-olds/>
     <MyCat />
     <MyFooter />
     </div> 
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
import HomeLoader from './Loaders/HomeLoader.vue'
import MyOlds from './Action/AcOlds.vue'

export default {
    name: 'MyHome',
    components: {
        MyNews,
        MyHeader,
        MyFooter,
        MyNavbar,
        MyTrends,
        MySoon,
        MyCat,
        MyOlds,
        HomeLoader
    },
    props: {
        movies: Array,
        news: Array,
        loading: Boolean,
        image_path: String
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