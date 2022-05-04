<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>Trending</h2>
        </div>
        <div class="action__wrapper">
            <a target="_blank" v-for="trend in trends" :key="trend.id"
            :href="movie_url+trend.title" class="trends__card">
                <img :src="image_path+trend.poster_path" alt="">
                <p>{{trend.title}}</p>
                <div class="trends__btn"><p>Watch Now</p></div>
            </a>
        </div>
    </div>        
</template>

<script>
export default {
    name: 'MyTrends',
    data() {
        return{
            // trends: [],
        }
    },
    props: {
        trends: Array,
        image_path: String ,
        movie_url: String
    },
    methods:{
        async getTrends() {
            const res = await fetch('https://api.themoviedb.org/3/movie/popular?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1')
            const data = await res.json();
            console.log(data)
            return data.results
        }
    },

    async created() {
        console.log('hell');
    }

}
</script>