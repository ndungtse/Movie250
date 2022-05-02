<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>Comming Soon</h2>
        </div>
        <div class="action__wrapper">
            <a target="_blank" v-for="soon in soons" :key="soon.id"
             href="" class="trends__card">
                <img :src="image_path+soon.backdrop_path">
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
        image_path: String
    }
}
</script>