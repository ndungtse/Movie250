<template>
  <div class="slide">
    <h2>Trending News</h2>
    <div class="newcard">
            <div class="newsholder slide1">
                <div class="nesimag">
                    <img src="https://static1.moviewebimages.com/wordpress/wp-content/uploads/2022/02/Samuel.jpg?q=50&fit=contain&w=1500&h=&dpr=1.5"
                        alt="">
                </div>
                <div class="newsdesc">
                    <h3>Samuel L. Jackson Fires Back at Filmmakers Slamming Marvel Movies:</h3>
                    <div class="newscont">
                        <p>Marvel movie mainstay Samuel L. Jackson had a fiery response to filmmakers criticizing
                            superhero films.</p>
                        <p>Don't tell Samuel L. Jackson that Marvel movies aren't cinema.
                            In recent years, superhero movies have come under fire from filmmakers like Martin Scorsese,
                            Ridley Scott, and Roland Emmerich, all of whom had negative things to say about the genre
                            and its impact on Hollywood.
                            The situation came up while Jackson was a guest on The View, and the actor brushed off their
                            criticism by suggesting that directors criticizing superhero mo
                            vies are in actuality just upset that their own films aren't performing as well.</p>
                    </div>
                    <a href="">Read More</a>
                </div>
            </div>
            <div class="newsholder slide1">
                <div class="nesimag">
                    <img src="https://cdn.onebauer.media/one/media/6227/ce2e/92ff/e998/1efa/7c84/florence-pugh.jpg?format=jpg&quality=80&width=600&ratio=16-9&resize=aspectfill" alt="">
                </div>
                <div class="newsdesc">
                    <h3>Florence Pugh In Talks For Dune: Part Two</h3>
                    <div class="newscont">
                        <p>Able to flit between the worlds of massive franchise filmmaking (Black Widow) 
                            and indie movie land (Midsommar, Little Women) with ease, Florence Pugh is now in talks for 
                            another giant role. If the deal works out, she'll play Princess Irulan, daughter of Emperor 
                            Shaddam IV in Dune: Part Two.
    
                            Before you start cheering the notion of a Little Women reunion between Pugh and Timothée Chalamet, 
                            The Hollywood Reporter cautions that the actor is waiting to see the script before any final decision.</p>
                    </div>
                    <a href="https://www.empireonline.com/movies/news/florence-pugh-in-talks-for-dune-part-two/" target="_blank">Read More</a>
                </div>
            </div>
            <div class="newsholder slide1">
                <div class="nesimag">
                    <img src="https://cdn.onebauer.media/one/media/622c/85fe/8d5d/eb32/89bd/772c/doctor-strange-header-excl.jpg?format=jpg&quality=80&width=600&ratio=16-9&resize=aspectfill" alt="">
                </div>
                <div class="newsdesc">
                    <h3>Doctor Strange In The Multiverse Of Madness Producer Responds To Professor X And Illuminati Rumours_ Exclusive</h3>
                    <div class="newscont">
                        <p>In the wake of Spider-Man: No Way Home, it’s hard to know what’s real anymore. For months and months, Tom Holland, Andrew Garfield 
                            and Tobey Maguire all flat-out denied that the previous Peter Parkers would turn up in Jon Watts’ third MCU Spider-flick. 
                            But despite their many straight-faced protestations, it turned out – spoiler warning, but come on, you’ve seen it already right?</p>
                    </div>
                    <a href="https://www.empireonline.com/movies/news/doctor-strange-multiverse-of-madness-professor-x-illuminati-rumours-exclusive/" target="_blank">Read More</a>
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