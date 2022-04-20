<template>
    <div>
        <MyHeader />
        <MyNavbar />
        <div class="News">
          <h2>Trending News</h2>
          <div class="newsholder" v-for="news in news" :key="news.id">
              <div class="nesimag">
                  <img :src="news.Related_image" alt="">
              </div>
              <div class="newsdesc">
                  <h3>{{news.title}}</h3>
                  <div class="newscont">
                      <p>{{news.content}}</p>
                  </div>
                  <a href="{{news.Link}}" target="_blank">Read More</a>
              </div>
          </div>
        </div>
        <MyFooter />
    </div>
</template>

<script>
import MyHeader from './Header.vue'
import MyNavbar from './Navbar.vue'
import MyFooter from './Footer.vue'

export default {
    name: 'MyNews',
    components: {
        MyHeader,
        MyNavbar,
        MyFooter
    },
    props: {
        news: Array
    }
}
</script>