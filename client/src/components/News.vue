<template>
  <div>
    <news-loader v-if="load" />
    <div v-else>
      <MyHeader />
      <MyNavbar />
      <div class="News">
        <h2>Trending News</h2>
        <div class="newsholder" v-for="news in news" :key="news.id">
          <div class="nesimag">
            <img :src="news.image.url" alt="" />
          </div>
          <div class="newsdesc">
            <h3>{{ news.head }}</h3>
            <div class="newscont">
              <p>{{ news.body }}</p>
            </div>
            <a :href="news.link" target="_blank" rel="noreferrer noopener"
              >Read More</a
            >
          </div>
        </div>
      </div>
    </div>
    <MyFooter />
  </div>
</template>

<script>
import MyHeader from "./Header.vue";
import MyNavbar from "./Navbar.vue";
import MyFooter from "./Footer.vue";
import NewsLoader from "./Loaders/NewsLoader.vue";

export default {
  name: "MyNews",
  components: {
    MyHeader,
    MyNavbar,
    MyFooter,
    NewsLoader,
  },
  data() {
    return {
      news: [],
      load: true,
    };
  },
  methods: {
    async getNews() {
      const localNews = localStorage.getItem("news");
      if (localNews) {
        this.news = JSON.parse(localNews);
        this.loading = false;
        return JSON.parse(localNews);
      } else {
        const options = {
          method: "GET",
          headers: {
            "X-RapidAPI-Host": "online-movie-database.p.rapidapi.com",
            "X-RapidAPI-Key":
              "18cae65599mshc2ae603a38272a2p19e31djsn4718e8d63b0c",
          },
        };
        const res = await fetch('https://online-movie-database.p.rapidapi.com/actors/get-all-news?nconst=nm0001667', options)
        const data = await res.json();
        console.log(data);
        
        localStorage.setItem("news", JSON.stringify(data.items));
        this.news = data;
        this.loading = false;
        return data;
      }
    },
  },
  async created() {
    const data = await this.getNews();
    this.news = await data;
    this.load = false;
  },
};
</script>