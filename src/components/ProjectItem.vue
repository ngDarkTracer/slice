<script setup lang="ts">

</script>

<template>
  <div>
    <div>
      <slot name="image"></slot>
    </div>
    <div>
      <h3><slot name="title"></slot></h3>
      <p><slot name="description"></slot></p>
      <slot name="launch"></slot>
    </div>
  </div>
</template>

<style scoped>

</style>