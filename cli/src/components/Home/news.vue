<template>
  <div class="slide">
    <h2>Trending News</h2>
    <div class="newcard">
      <div class="newsholder slide1"   v-for="news in home_news" :key="news.id">
        <div class="nesimag">
          <img :src="news.image.url" alt="" class="w-[70%]"/>
        </div>
        <div class="newsdesc">
          <h3>{{ news.head}}</h3>
          <div class="newscont">
            <p>{{ news.body }}</p>
          </div>
          <a :href="news.link" target="_blank" rel="noreferrer noopener">Read More</a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "MyNews",
  data() {
    return {
      home_news: []
    }
  },
  methods: {
    async getHomeNews(){
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
      const rel = await data.items.slice(0, 3)
      return rel;
    }
  },
  async created() {
    this.home_news = await this.getHomeNews()
  },
};
</script>