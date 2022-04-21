<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>Comming Soon <i class="bx bxs-chevron-right"></i></h2>
        </div>
        <div class="trends__wrapper">
            <a target="_blank" v-for="soon in soons" :key="soon.id"
             href="https://www.youtube.com/watch?v=nfKO9rYDmE8" class="trends__card">
                <img :src="image_path+soon.poster_path"
                    alt="">
                <p>{{soons.title}}</p>
                <div class="trends__btn"><p>See Trailer</p></div>
            </a>
        </div>
    </div>        
</template>

<script>
export default {
    name: "CoSoon",
    props: {
        soons: Array,
        image_path: String
    }
}
</script>