<template>
	<div class="w-full border-b-2 px-2 h-[50px] bg-white flex items-center justify-between">
		<div class="flex items-center">
			<font-awesome-icon :icon="['fas', 'play']" class="text-gray-600 border-2 py-2 px-[0.7em] rounded-full cursor-pointer"></font-awesome-icon>	
			<p class="font-bold">Movie250</p>
		</div>
		<div class="flex items-center">
			<NuxtLink to="/">
				<p class="font-semibold">Home</p>
			</NuxtLink>
			<NuxtLink to="/">
				<p class="font-semibold ml-4">Categories
					<font-awesome-icon icon="chevron-down" class="ml-1 text-xs"></font-awesome-icon>
				</p>
			</NuxtLink>
			<NuxtLink to="/">
				<p class="font-semibold ml-4">Popular Movies</p>
			</NuxtLink>
			<NuxtLink to="/">
				<p class="font-semibold ml-4">Trendings</p>
			</NuxtLink>
			<NuxtLink to="/">
				<p class="font-semibold ml-4">Favorites</p>
			</NuxtLink>
		</div>
		<div class="flex bg-slate-100 rounded-xl px-3 py-1 items-center">
			<input
				type="text"
				class="outline-none bg-transparent w-full"
				placeholder="Search movies here"
			/>
			<font-awesome-icon icon="search" class="ml-2"></font-awesome-icon>
		</div>
		<div class="flex items-center">
			<p class="text-sm font-semibold">David Simons</p>
			<font-awesome-icon icon="user" class="ml-2 py-2 px-2 rounded-full bg-slate-300" />
		</div>
	</div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
	setup() {},
});
</script>
