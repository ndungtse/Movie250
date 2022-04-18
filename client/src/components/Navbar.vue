<template>
    <nav class="navbar">
        <ul class="navconts">
            <li class="navitem">
                <a href="movie.html" class="link active ">Home</a>
            </li>
            <li class="navitem">
                <router-link to="/action" class="link">Action</router-link>
            </li>
            <li class="navitem">
                <a href="Romance.html" class="link">Romance</a>
            </li>
            <li class="navitem">
                <a href="Comedy.html" class="link">Comedy</a>
            </li>
            <li class="navitem">
                <a href="Adventure.html" class="link">Adventure</a>
            </li>
            <li class="navitem">
                <a href="Animation.html" class="link">Animation</a>
            </li>
            <li class="navitem">
                <a href="News.html" class="link">News</a>
            </li>
        </ul>
    </nav>
</template>

<script>
export default {
    name: 'MyNavbar'
}
</script>