<template>
	<div class="container-fluid text-white">
		<my-header />
		<MyNavbar />
		<div class="" v-if="loading">loading...</div>
		<div v-else class="flex w-full px-[10%] mt-7">
			<div class="flex flex-col w-1/2">
				<img :src="image_path + movieDetails.backdrop_path" alt="">
			</div>
			<div class="flex flex-col w-1/2 px-4">
				<h2 class="text-xl font-bold">{{movieDetails.title}}</h2>
			</div>
		</div>
		<MovieCard />
		<MyFooter />
	</div>
</template>

<script>
import MyNavbar from "../Navbar.vue";
import MyHeader from "../Header.vue";
import MyFooter from "../Footer.vue";
import MovieCard from "../Card.vue";
import { useMovieStore } from '../../pinia/movie'

export default {
	name: "MyStore",
	components: {
		MyNavbar,
		MyHeader,
		MyFooter,
		MovieCard,
	},
	data() {
		return {
			loading: true,
            id: this.$route.params.id,
			movieDetails: {},
		};
	},
	props: {
		image_path: String,
	},
	setup() {
		const movie = useMovieStore();
		async function getMovie() {
			await movie.fetchMovie(this.id);
			console.log(movie.selectedMovie);
			this.movieDetails = await movie.selectedMovie;
			this.loading = false;
		}
		return {
			movie,
			getMovie,
		};
	},
	async mounted() {
		this.getMovie();
	},
};
</script>