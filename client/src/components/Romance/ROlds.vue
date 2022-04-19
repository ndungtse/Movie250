<template>
    <div class="a-trending">
        <div class="trend__title">
            <h2>Old Schools</h2>
        </div>
        <div class="action__wrapper">
            <a target="_blank" v-for="old in olds" :key="old.id"
             href="" class="trends__card">
                <img :src="old.image" alt="">
                <p>{{old.name}}</p>
                <div class="trends__btn"><p>Wath Now</p></div>
            </a>
        </div>
    </div>        
</template>

<script>
export default {
    name: 'MyOlds',
    props: {
        olds: Array
    }
}
</script>