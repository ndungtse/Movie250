<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>New releases</h2>
        </div>
        <div class="trends__wrapper">
            <a target="_blank" v-for="trend in trends" :key="trend.id"
            :href="movie_url+trend.title" class="trends__card">
                <img :src="image_path+trend.poster_path">
                <p>{{trend.title}}</p>
                <div class="trends__btn"><p>Watch Now</p></div>
            </a>
        </div>    
    </div>
</template>

<script>
export default {
    name: 'AtRends',
    props: {
        trends: Array,
        image_path: String,
        movie_url: String
    }
}
</script>