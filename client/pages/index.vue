<template>
  <Hello />
</template>

<script lang="ts">
import Vue from 'vue'
import Hello from '../components/Hello.vue';

export default Vue.extend({
    name: "IndexPage",
    components: { Hello }
})
</script>
