import { createRouter, createWebHistory } from 'vue-router'
import Home from '../components/Home.vue'
import Action from '../components/Action/Action.vue'

const routes = [
    {
        path: '/',
        name: 'Home',
        component: Home
    },
    {
        path: '/action',
        name: 'Action',
        component: Action
    }
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes,
})

export default router