<template>
    <div>
     <my-header/>
     <my-navbar/>
     <AtRends />  
     <my-footer/>
    </div>
</template>

<script>
import MyHeader from '../Header.vue'
import MyNavbar from '../Navbar.vue'
import MyFooter from '../Footer.vue'
import AtRends from './Atrends.vue'

export default {
    name: 'MyAction',
    data() {
        return {
            actions: [],
            trends: []
        }
    },
    components: {
        MyHeader,
        MyNavbar,
        MyFooter,
        AtRends,
    },
    methods: {
       async getAction(){
           const res = await fetch('http://localhost:2020/api/movies')
           const data = await res.json();
           const actions = data.filter((m)=> m.genre === "action")
           const trends = actions.filter((a)=> a.status === "trending")
           const soon = actions.filter(a => a.status === "coming soon")
          return {actions,trends}
       } 
    },
    async created() {
        const all = await this.getAction()
        this.actions = await all.actions
        this.trends = await all.trends
    },

}
</script>