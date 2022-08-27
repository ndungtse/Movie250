<template>
	<div class="flex flex-col w-full h-screen">
		<Navbar />
		<div class="flex w-full">
			<LeftPanel />
		</div>
	</div>
</template>
<script setup lang="ts">
import { useTest } from "../store/test";

const test = useTest();

</script>