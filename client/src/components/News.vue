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
  // props: {
  //     news: Array
  // },
  methods: {
    async getNews() {
      const options = {
        method: "GET",
        headers: {
          "X-RapidAPI-Host": "online-movie-database.p.rapidapi.com",
          "X-RapidAPI-Key":
            "bbce629d3cmsh48cb41094daa35cp1157cejsn05466969482c",
        },
      };
      const res = await fetch(
        "https://online-movie-database.p.rapidapi.com/title/get-news?tconst=tt0944947&limit=25",
        options
      );
      const data = await res.json();
      return data;
    },
  },
  async created() {
    const data = await this.getNews();
    this.news = await data.items;
    this.load = false
  },
};
</script>