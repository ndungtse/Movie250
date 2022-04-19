<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>Comming Soon</h2>
        </div>
        <div class="action__wrapper">
            <a target="_blank" v-for="soon in soons" :key="soon.id"
            href="https://www.youtube.com/watch?v=-d5ztm8JB8c" class="trends__card">
                <img :src="soon.image" alt="">
                <p>{{soon.name}}</p>
                <div class="trends__btn"><p>See Trailer</p></div>
            </a>
        </div>
    </div>        
</template>

<script>
export default {
    name: 'MySoons',
    props: {
        soons: Array
    }
}
</script>