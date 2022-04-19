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
import MyTrends from './AnTrends.vue'
import MyOlds from './AnOlds.vue'
import MyPops from './AnPops.vue'
import MySoons from './AnSoons.vue'

export default {
    name: 'MyAnimation',
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
            animations: [],
            trends: [],
            soons: [],
            pops: [],
            olds: []
        }
    },
    methods: {
        async getAnimation(){
            const res = await fetch('http://localhost:2020/api/movies')
            const data = await res.json()

            const animation = data.filter(d => d.genre === 'animation');
            const trends = animation.filter(r => r.status === 'trending')
            const soons = animation.filter(s => s.status === 'coming soon')
            const pops = animation.filter(p => p.other === 'popular')
            const olds = animation.filter(o => o.status === 'old')

            return {animation, trends, soons, pops, olds}
        }
    },

    async created() {
        const all = await this.getAnimation()

        this.animations = await all.animation
        this.trends = await all.trends
        this.soons = await all.soons
        this.pops = await all.pops
        this.olds = await all.olds
    },
}
</script>