<template>
  <div class="slide">
    <h2>Trending News</h2>
    <div class="newcard">
      <div class="newsholder slide1"   v-for="news in news" :key="news.id">
        <div class="nesimag">
          <img
            src="https://static1.moviewebimages.com/wordpress/wp-content/uploads/2022/02/Samuel.jpg?q=50&fit=contain&w=1500&h=&dpr=1.5"
            alt=""
          />
        </div>
        <div class="newsdesc">
          <h3>
            {{news.title}}
          </h3>
          <div class="newscont">
            <p>{{news.content}}
            </p>
          </div>
          <a href="">Read More</a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: "MyNews",
  props: {
    news: Array
  }
};
</script>