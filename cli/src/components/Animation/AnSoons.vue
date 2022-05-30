<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>action Animations</h2>
        </div>
        <div class="action__wrapper">
            <a target="_blank" v-for="soon in soons" :key="soon.id"
            :href="movie_url+soon.title" class="trends__card">
                <img :src="soon.img" alt="">
                <p>{{soon.title}}</p>
                <div class="trends__btn"><p>See Trailer</p></div>
            </a>
        </div>
    </div>        
</template>

<script>
export default {
    name: 'MySoons',
    props: {
        soons: Array,
        movie_url: String
    }
}
</script>