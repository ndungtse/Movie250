<template>
    <div class="trendings">
        <div class="trend__title">
            <h2>Comming Soon <i class="bx bxs-chevron-right"></i></h2>
        </div>
        <div class="trends__wrapper">
            <a target="_blank" v-for="soon in soon" :key="soon.id"
             href="https://www.youtube.com/watch?v=nfKO9rYDmE8" class="trends__card">
                <img :src="soon.image"
                    alt="">
                <p>{{soon.name}}</p>
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
            soon: []
        }
    },
    methods: {
        async getSoons(){
           const res = await fetch('http://localhost:2020/api/movies')
           const data = await res.json();
           const soon = data.filter((m)=> m.status === "comming soon")

           return soon
        }
    },
    async created() {
        this.soon = await this.getSoons()
    },
}
</script>