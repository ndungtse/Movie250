<template>
    <div class="trendings">
        <div class="trend__title">
            <h2>Comming Soon <i class="bx bxs-chevron-right"></i></h2>
        </div>
        <div class="trends__wrapper">
            <a target="_blank" v-for="soon in soon" :key="soon.id"
             href="https://www.youtube.com/watch?v=nfKO9rYDmE8" class="trends__card">
                <img :src="image_path+soon.poster_path"
                    alt="">
                <p>{{soon.title}}</p>
                <div class="trends__btn"><p>See Trailer</p></div>
            </a>
        </div>
    </div>
</template>

<script>
export default {
    name: 'MySoon',
    data() {
        return {
            soon: [],
        }
    },
    props: {
        image_path: String
    },
    methods: {
        async getSoons(){
           const res = await fetch('https://api.themoviedb.org/3/movie/upcoming?api_key=580723fc25986a1cec69f928267db062&language=en-US&page=1')
           const data = await res.json();
        //    const soon = data.filter((m)=> m.status === "comming soon")
            console.log(data);

           return data.results
        }
    },
    async created() {
        this.soon = await this.getSoons()
    },
}
</script>