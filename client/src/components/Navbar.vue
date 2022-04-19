<template>
    <nav class="navbar">
        <ul class="navconts">
            <li class="navitem">
                <router-link to="/" class="link active ">Home</router-link>
            </li>
            <li class="navitem">
                <router-link to="/action" class="link">Action</router-link>
            </li>
            <li class="navitem">
                <router-link to="/romance" class="link">Romance</router-link>
            </li>
            <li class="navitem">
                <router-link to="/comedy" class="link">Comedy</router-link>
            </li>
            <li class="navitem">
                <router-link to="/adventure" class="link">Adventure</router-link>
            </li>
            <li class="navitem">
                <router-link to="/animation" class="link">Animation</router-link>
            </li>
            <li class="navitem">
                <router-link to="/news" class="link">News</router-link>
            </li>
        </ul>
    </nav>
</template>

<script>
export default {
    name: 'MyNavbar'
}
</script>