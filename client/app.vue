<template>
  <h1 class="text-3xl font-bold underline">
    Hello world!
    {{ test.value }}
  </h1>
</template>
<script setup lang="ts">
import { useTest } from "./store/test";
const test = useTest()
</script>