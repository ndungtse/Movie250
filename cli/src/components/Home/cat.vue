<template>
    <div class="categories">
        <h2>Categories</h2>
        <div class="cat-cont">
            <router-link to="/action" class="cat-card">
                <div class="desc">
                    <p>Action</p>
                    <div class="trends__btn"><p>Explore</p></div>
                </div>

            </router-link>
            <router-link to="/romance" class="cat-card">
                <div class="desc">
                    <p>Romance</p>
                    <div class="trends__btn"><p>Explore</p></div>
                </div>

            </router-link>
            <router-link to="/adventure" class="cat-card">
                <div class="desc">
                    <p>Adventures</p>
                    <div class="trends__btn"><p>Explore</p></div>
                </div>

            </router-link>
            <router-link to="/comedy" class="cat-card">
                <div class="desc">
                    <p>Comedy</p>
                    <div class="trends__btn"><p>Explore</p></div>
                </div>

            </router-link>
            <router-link to="/animation" class="cat-card">
                <div class="desc">
                    <p>Animation</p>
                    <div class="trends__btn"><p>Explore</p></div>
                </div>

            </router-link>
            <router-link to="/news" class="cat-card">
                <div class="desc">
                    <p>Other</p>
                    <div class="trends__btn"><p>Explore</p></div>
                </div>

            </router-link>
        </div>
    </div>
</template>
<script>
export default {
    name: 'MyCat'
}
</script>