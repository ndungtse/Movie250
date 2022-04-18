<template>
   <div>
     <MyHeader />
     <MyNavbar />
     <MyNews :news="news"/>
     <MyFooter />
    </div>
</template>

<script>
import MyNews from './Home/news.vue'
import MyNavbar from './Navbar.vue'
import MyHeader from './Header.vue'
import MyFooter from './Footer.vue'

export default {
    name: 'MyHome',
    components: {
        MyNews,
        MyHeader,
        MyFooter,
        MyNavbar
    },
    props: {
        tasks: Array,
        movies: Array,
        news: Array
    },
}
</script>