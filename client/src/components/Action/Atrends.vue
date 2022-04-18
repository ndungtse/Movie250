<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>New releases</h2>
        </div>
        <div class="action__wrapper">
            <a target="_blank" v-for="trend in trends" :key="trend.id"
            href="https://www.youtube.com/watch?v=mqqft2x_Aa4" class="trends__card">
                <img :src="trend.image">
                <p>{{trend.name}}</p>
                <div class="trends__btn"><p>Watch Now</p></div>
            </a>
        </div>    
    </div>
</template>

<script>
export default {
    name: 'AtRends',
    props: {
        trends: Array
    }
}
</script>