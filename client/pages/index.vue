<template>
  <div class="flex w-full h-screen">
    <Navbar />
  </div>
</template>
<script setup lang="ts">
import { useTest } from "../store/test";
const test = useTest()
</script>