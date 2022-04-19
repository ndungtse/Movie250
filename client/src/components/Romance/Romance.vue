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
import MyTrends from './RTrends'
import MySoons from './RSoons.vue'
import MyPops from './RPops.vue'
import MyOlds from './ROlds.vue'

export default {
    name: 'MyRomance',
    components: {
        MyHeader,
        MyNavbar,
        MyFooter,
        MyTrends,
        MySoons,
        MyPops,
        MyOlds
    },
    data() {
        return {
            romances: [],
            trends: [],
            soons: [],
            pops: [],
            olds: []
        }
    },
    methods: {
        async getRomance(){
            const res = await fetch('http://localhost:2020/api/movies')
            const data = await res.json()

            const romance = data.filter(d => d.genre === 'romance');
            const trends = romance.filter(r => r.status === 'trending')
            const soons = romance.filter(s => s.status === 'coming soon')
            const pops = romance.filter(p => p.other === 'popular')
            const olds = romance.filter(o => o.status === 'old')

            return {romance, trends, soons, pops, olds}
        }
    },

    async created() {
        const all = await this.getRomance()

        this.romances = await all.romance
        this.trends = await all.trends
        this.soons = await all.soons
        this.pops = await all.pops
        this.olds = await all.olds
    },
}
</script>