import { createRouter, createWebHistory } from 'vue-router'
import Home from '../components/Home.vue'
import Action from '../components/Action/Action.vue'
import MyRomance from '../components/Romance/Romance.vue'
import MyComedy from '../components/Comedy/Comedy.vue'
import MyAdventure from '../components/Adventure/Adventure.vue'
import MyAnimations from '../components/Animation/Animations.vue'
import MyNews from "../components/News.vue";
import MyStore from '../components/store/MyStore.vue'

const routes = [
    {
        path: '/',
        name: 'Home',
        component: Home
    },
    {
        path: '/moviestore',
        name: 'store',
        component: MyStore
    },
    {
        path: '/action',
        name: 'Action',
        component: Action
    },
    {
        path: '/romance',
        name: 'Romance',
        component: MyRomance
    },
    {
        path: '/comedy',
        name: 'Comedy',
        component: MyComedy
    },
    {
        path: '/adventure',
        name: 'Adventure',
        component: MyAdventure
    },
    {
        path: '/animation',
        name: 'Animation',
        component: MyAnimations
    },
    {
        path: '/news',
        name: 'News',
        component: MyNews
    },
    {
        path: '/movie/:id',
        name: 'Movie',
        component: () => import('../components/store/Movie.vue')
    }
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes,
})

export default router