<script setup lang="ts">

</script>

<template>
  <div class="grid grid-rows-[20em_10em] place-items-center">
    <div class="w-full">
      <slot name="image"></slot>
    </div>
    <div class="w-full text-center">
      <p class="w-full text-[30px] text-blue-400 font-bold"><slot name="title"></slot></p>
      <p class="w-full italic text-gray-400"><slot name="description"></slot></p>
      <slot name="launch"></slot>
    </div>
  </div>
</template>

<style scoped>

</style>