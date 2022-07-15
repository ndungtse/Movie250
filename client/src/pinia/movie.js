// eslint disable
import { defineStore } from 'pinia'

export const useMovieStore = defineStore({
    id: 'movie',
    state: () => ({
        movies: [],
        selectedMovie: null
    }),
    getters: {
        getMovies: state => state.movies,
        getSelectedMovie: state => state.selectedMovie,
        getSelectedMovieTitle: state => state.selectedMovie ? state.selectedMovie.title : null
    },
    mutations: {
        setMovies: (state, movies) => state.movies = movies,
        setSelectedMovie: (state, movie) => state.selectedMovie = movie,
        updateSelectedMovie: (state, movie) => {
            const index = state.movies.findIndex(m => m.id === movie.id)
            state.movies[index] = movie
        }
    },
    actions: {
        async fetchMovie(id) {
            const movie = await fetch(`https://api.themoviedb.org/3/movie/${id}?api_key=${process.env.VUE_APP_TDB_KEY}&language=en-US`).then(res => res.json())
            this.selectedMovie = movie;
        }
    }
})