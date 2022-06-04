<template>
    <div class="container-fluid">
        <my-header />
        <MyNavbar />
    </div>
</template>

<script>
import MyNavbar from '../Navbar.vue'
import myHeader from '../Header.vue'

export default {
    name: "MyStore",
    components: {
        MyNavbar,
        myHeader
    },
    data() {
        return {
            movies: [],
            loading: true,
        };
    },
}
</script>