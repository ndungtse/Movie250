<template>
    <div>
     <my-header/>
     <my-navbar/>
     <AtRends :trends="trends"/>  
     <CoSoon :soons="soons" />
     <AcPop :pops="pops" />
     <ac-olds :olds="olds" />
     <my-footer/>
    </div>
</template>

<script>
import MyHeader from '../Header.vue'
import MyNavbar from '../Navbar.vue'
import MyFooter from '../Footer.vue'
import AtRends from './Atrends.vue'
import CoSoon from './CoSoon.vue'
import AcPop from './AcPop.vue'
import AcOlds from './AcOlds.vue'

export default {
    name: 'MyAction',
    data() {
        return {
            actions: [],
            trends: [],
            soons: [],
            pops: [],
            olds: []
        }
    },
    components: {
        MyHeader,
        MyNavbar,
        MyFooter,
        AtRends,
        CoSoon,
        AcPop,
        AcOlds
    },
    methods: {
       async getAction(){
           const res = await fetch('http://localhost:2020/api/movies')
           const data = await res.json();

           const actions = data.filter((m)=> m.genre === "action")
           const trends = actions.filter((a)=> a.status === "trending")
           const soons = actions.filter(a => a.status === "coming soon")
           const pops = actions.filter(a => a.other === "popular")
           const olds = actions.filter(a => a.status === "old")

          return {actions, trends, soons, pops, olds}
       } 
    },
    async created() {
        const all = await this.getAction()
        this.actions = await all.actions
        this.trends = await all.trends
        this.soons = await all.soons
        this.pops = await all.pops
        this.olds = await all.olds
    },

}
</script>
