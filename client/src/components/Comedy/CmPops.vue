<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>Most Popular</h2>
        </div>
        <div class="action__wrapper">
            <a target="_blank" v-for="pop in pops" :key="pop.id"
            href="https://ww1.goojara.to/mab4BV" class="trends__card">
                <img :src="image_path+pop.backdrop_path" alt="">
                <p>{{pop.name}}</p>
                <div class="trends__btn"><p>Watch Now</p></div>
            </a>
        </div>
    </div>  
</template>

<script>
export default {
    name: 'MyPops',
    props: {
        pops: Array,
        image_path: String
    }
}
</script>