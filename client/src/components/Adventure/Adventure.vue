<template>
    <div>
        <MyHeader />
        <my-navbar />
        <MyTrends :trends="trends" />
        <MySoons :soons="soons" />
        <MyPops :pops="pops" />
        <MyOlds :olds="olds" />
        <MyFooter />
    </div>
</template>

<script>
import MyNavbar from '../Navbar.vue'
import MyFooter from '../Footer.vue'
import MyHeader from '../Header.vue'
import MyTrends from './AdTrends.vue'
import MyOlds from './AdOlds.vue'
import MyPops from './AdPops.vue'
import MySoons from './AdSoons.vue'

export default {
    name: 'MyAdventure',
    components: {
        MyNavbar,
        MyFooter,
        MyHeader,
        MyTrends,
        MySoons,
        MyOlds,
        MyPops
    },
    data() {
        return {
            adventures: [],
            trends: [],
            soons: [],
            pops: [],
            olds: []
        }
    },
    methods: {
        async getAdventure(){
            const res = await fetch('http://localhost:2020/api/movies')
            const data = await res.json()

            const adventure = data.filter(d => d.genre === 'adventure');
            const trends = adventure.filter(r => r.status === 'trending')
            const soons = adventure.filter(s => s.status === 'coming soon')
            const pops = adventure.filter(p => p.other === 'popular')
            const olds = adventure.filter(o => o.status === 'old')

            return {adventure, trends, soons, pops, olds}
        }
    },

    async created() {
        const all = await this.getAdventure()

        this.adventures = await all.adventure
        this.trends = await all.trends
        this.soons = await all.soons
        this.pops = await all.pops
        this.olds = await all.olds
    },
}
</script>