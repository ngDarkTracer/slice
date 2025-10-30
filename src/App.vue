<script setup lang="ts">

import Navigation from "@/components/Navigation.vue";
import About from "@/components/About.vue";
import Projects from "@/components/Projects.vue";
import Contact from "@/components/Contact.vue";
import Hero from "@/components/Hero.vue";
</script>

<template>
<div>
  <Navigation/>
  <main>
    <Hero/>
    <About/>
    <Projects/>
    <Contact/>
  </main>
<!--  <footer></footer>-->
</div>
</template>

<style scoped>

</style>
