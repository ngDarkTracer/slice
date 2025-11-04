<script setup lang="ts">
import Navigation from "@/components/Navigation.vue";
import About from "@/components/About.vue";
import Projects from "@/components/Projects.vue";
import Contact from "@/components/Contact.vue";
import Hero from "@/components/Hero.vue";
import Footer from "@/components/Footer.vue";

function jump(anchor: string) {
  const fakeLink = document.createElement('a')
  fakeLink.href = `${anchor}`
  document.body.appendChild(fakeLink)
  fakeLink.click()
  document.body.removeChild(fakeLink)
}
</script>

<template>
<div>
  <Navigation @goto="value => jump(value)"/>
  <main>
    <Hero id="hero" @goto="value => jump(value)"/>
    <About id="about" @goto="value => jump(value)"/>
    <Projects id="projects"/>
    <Contact id="contact"/>
  </main>
  <Footer/>
</div>
</template>

<style scoped>

</style>
