<template>
    <div>
        <home-loader v-if="load" />
        <div v-else>
        <MyHeader />
        <my-navbar />
        <MyTrends :trends="trends" :movie_url="movie_url"
         :image_path="image_path" />
        <MySoons :soons="soons" :movie_url="movie_url"
        :image_path="image_path" />
        <!-- <MyPops :pops="pops" /> -->
        <MyOlds :olds="olds" :movie_url="movie_url"
        :image_path="image_path" />
        <MyFooter />
        </div>
    </div>
</template>

<script>
import MyNavbar from '../Navbar.vue'
import MyFooter from '../Footer.vue'
import MyHeader from '../Header.vue'
import MyTrends from './RTrends.vue'
import MySoons from './RSoons.vue'
// import MyPops from './RPops.vue
import MyOlds from './ROlds.vue'
import HomeLoader from '../Loaders/HomeLoader.vue'

export default {
    name: 'MyRomance',
    components: {
        MyHeader,
        MyNavbar,
        MyFooter,
        MyTrends,
        MySoons,
        // MyPops,
        MyOlds,
        HomeLoader
    },
    data() {
        return {
            romances: [],
            trends: [],
            soons: [],
            pops: [],
            olds: [],
            load: true
        }
    },
    props: {
        image_path: String,
        movie_url: String
    },
    methods: {
        async getRomance(){
            
            const res = await fetch('https://api.themoviedb.org/3/movie/829557/similar?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1')
            const data = await res.json()
            const olds = await data.results

            const res1 = await fetch('https://api.themoviedb.org/3/movie/upcoming?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1')
            const data1 = await res1.json()
            const rom = await data1.results
            const soons = await rom.filter(s=> s.genre_ids.includes(10749))

            const res2 = await fetch('https://api.themoviedb.org/3/movie/top_rated?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1')
            const data2= await res2.json()
            const rom1 = await data2.results
            const trends = await rom1.filter(r=> r.genre_ids.includes(10749))

            return {olds, soons, trends}
        }
    },

    async created() {
        const all = await this.getRomance()

        this.romances = await all
        this.trends = await all.trends
        this.soons = await all.soons
        // this.pops = await all.pops
        this.olds = await all.olds
        this.load = false
    },
}
</script>