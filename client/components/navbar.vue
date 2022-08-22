<template>
    <div class="w-full h-[100px] bg-white flex items-center">
        <NuxtLink to="/">
            <p class="font-semibold">Home</p>
        </NuxtLink>
        <NuxtLink to="/">
            <p class="font-semibold ml-4">TV Show</p>
        </NuxtLink>
        <NuxtLink to="/">
            <p class="font-semibold ml-4">Anime</p>
        </NuxtLink>
    </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue'

export default defineComponent({
    setup() {
        
    },
})
</script>
