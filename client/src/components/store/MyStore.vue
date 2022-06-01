<template>
    <div class="container-fluid">
        <MyNavbar />
    </div>
</template>

<script>
import MyNavbar from '../Navbar.vue'

export default {
    name: "MyStore",
    components: {
        MyNavbar,
    },
    data() {
        return {
            movies: [],
            loading: true,
        };
    },
}
</script>