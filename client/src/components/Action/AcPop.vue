<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>Most Rated</h2>
        </div>
        <div class="trends__wrapper">
            <a target="_blank" v-for="pop in pops" :key="pop.id"
            href="https://ww1.goojara.to/mwOGd7" class="trends__card">
                <img :src="image_path+pop.poster_path">
                <p>{{pop.name}}</p>
                <div class="trends__btn"><p>Watch Now</p></div>
            </a>
        </div>
    </div>        
</template>

<script>
export default {
    name: 'AcPop',
    props: {
        pops: Array,
        image_path: String
    }
}
</script>