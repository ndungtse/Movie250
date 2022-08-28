<template>
	<div class="flex flex-col w-full h-screen">
		<Navbar />
		<div class="flex w-full">
			<leftpanelVue />
		</div>
	</div>
</template>
<script lang="ts">
import navbarVue from "../components/navbar.vue";
import leftpanelVue from "../components/home/leftpanel.vue";
import { useTest } from "../store/test";
	
	export default {
		components: {
			navbarVue,
			leftpanelVue,
		},
	}

// const test = useTest();

</script>