<script setup lang="ts">
import Navigation from "@/components/Navigation.vue";
import About from "@/components/About.vue";
import Projects from "@/components/Projects.vue";
import Contact from "@/components/Contact.vue";
import Hero from "@/components/Hero.vue";
import Footer from "@/components/Footer.vue";
</script>

<template>
<div>
  <Navigation/>
  <main>
    <Hero id="hero"/>
    <About id="about"/>
    <Projects id="projects"/>
    <Contact id="contact"/>
  </main>
  <Footer/>
</div>
</template>

<style scoped>

</style>
