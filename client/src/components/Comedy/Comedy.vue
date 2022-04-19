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
import MyTrends from './CmTrends.vue'
import MyOlds from './CmOlds.vue'
import MyPops from './CmPops.vue'
import MySoons from './CmSoons.vue'

export default {
    name: 'MyComedy',
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
            comedies: [],
            trends: [],
            soons: [],
            pops: [],
            olds: []
        }
    },
    methods: {
        async getComedy(){
            const res = await fetch('http://localhost:2020/api/movies')
            const data = await res.json()

            const comedie = data.filter(d => d.genre === 'comedy');
            const trends = comedie.filter(r => r.status === 'trending')
            const soons = comedie.filter(s => s.status === 'coming soon')
            const pops = comedie.filter(p => p.other === 'popular')
            const olds = comedie.filter(o => o.status === 'old')

            return {comedie, trends, soons, pops, olds}
        }
    },

    async created() {
        const all = await this.getComedy()

        this.comedies = await all.comedie
        this.trends = await all.trends
        this.soons = await all.soons
        this.pops = await all.pops
        this.olds = await all.olds
    },
}
</script>