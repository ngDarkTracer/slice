<script setup lang="ts">

const skills = ['HTML', 'CSS', 'SCSS', 'TAILWIND', 'JAVASCRIPT', 'TYPESCRIPT', 'REACT', 'VUE', 'ANGULAR', 'NUXT', 'NEXT', 'SALESFORCE', 'JAVA', 'C#', 'SPRING', 'UNITY', 'GIT', 'GITHUB', 'BLENDER', 'SUBSTANCE PAINTER']
</script>

<template>
<div class="bg-gray-100 grid grid-rows-[8vh_15vh_50vh] p-[100px]">
  <p class="text-[35px] font-bold text-center after:content-[''] after:absolute after:left-1/2 after:-translate-x-1/2 after:w-12 after:h-1 after:rounded-md after:bg-purple-500 after:mt-[70px]">ABOUT ME</p>
  <p class="text-center text-lg mt-10">Here you will find more information about me, what I do, and my current skills mostly in terms of programming and technology</p>
  <div class="grid grid-cols-[1fr_1fr] gap-[10rem]">
    <div class="">
      <p class="font-bold text-2xl mb-8">Get to know me!</p>
      <p>I'm a <b>Fullstack Web Developer</b> building and managing the Front-end of Websites and Web Applications that leads to the success of the overall product. Check out some of my work in the <b>Projects</b> section.</p>
      <p>I also like sharing content related to the stuff that I have learned over the years in <b>Web Development</b> so it can help other people of the Dev Community. Feel free to Connect or Follow me on my
        <a href="" target="_blank" class="underline font-bold text-[#7743e8]">Linkedin</a> and <a href="" target="_blank" class="underline font-bold text-[#7743e8]">Instagram</a> where I post useful content related to Web Development and Programming</p>
      <p>I'm open to <b>Job</b> opportunities where I can contribute, learn and grow. If you have a good opportunity that matches my skills and experience then don't hesitate to <b>contact</b> me.</p>
      <button class="bg-[#7743e8] mt-[50px] px-[50px] py-4 shadow-lg text-white font-bold rounded-sm hover:cursor-pointer">CONTACT</button>
    </div>
    <div>
      <p class="font-bold text-2xl mb-8">My Skills</p>
      <div class="flex flex-row flex-wrap gap-4">
        <span v-for="skill in skills" class="text-sm text-gray-500 font-bold px-4 py-2 bg-gray-200 rounded-lg">{{ skill }}</span>
      </div>
    </div>
  </div>
</div>
</template>

<style scoped>

</style>