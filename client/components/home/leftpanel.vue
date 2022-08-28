<template>
    <div class="flex flex-col px-2 w-1/5 min-w-[300px]">
        <h2 class="font-semibold">New trailers</h2>
        <div class="flex relative w-full">
            <img src="https://i0.wp.com/bloody-disgusting.com/wp-content/uploads/2021/08/dune-poster-2-new.png?w=1515&ssl=1" alt="">
            <div class="absolute bottom-0 left-0 w-full h-1/4 flex items-center">
			<font-awesome-icon :icon="['fas', 'play']" class="text-gray-600 border-2 py-2 px-[0.7em] rounded-full cursor-pointer"></font-awesome-icon>
            <div class="flex flex-col">
                <h3>Dune 2</h3>
                <p class="text-sm">Action, adventure</p>
            </div>
            </div>
        </div>
    </div>
</template>
<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
    setup() {},
});
</script>