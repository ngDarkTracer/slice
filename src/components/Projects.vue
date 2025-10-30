<script setup lang="ts">
import ProjectItem from "@/components/ProjectItem.vue";
import ProjectItems from "@/components/ProjectItem.vue";

const items: ProjectItem = [
  {
    image: '',
    title: 'AirBooks v2.0',
    description: 'Description of my folio',
    buttonLabel: 'CASE STUDY'
  },{
    image: '',
    title: 'AirBooks Integrations',
    description: 'Description of my folio',
    buttonLabel: 'CASE STUDY'
  },{
    image: '',
    title: 'TotalEnergies',
    description: 'Description of my folio',
    buttonLabel: 'CASE STUDY'
  },{
    image: '',
    title: 'Enfant du Mekong',
    description: 'Description of my folio',
    buttonLabel: 'CASE STUDY'
  },{
    image: '',
    title: 'Microport',
    description: 'Description of my folio',
    buttonLabel: 'CASE STUDY'
  },{
    image: '',
    title: 'RMC/BFM',
    description: 'Description of my folio',
    buttonLabel: 'CASE STUDY'
  }
]
</script>

<template>
<div class="bg-gray-50 grid grid-rows-[8vh_15vh_76vh] p-[100px]">
  <p class="text-[35px] font-bold text-center after:content-[''] after:absolute after:left-1/2 after:-translate-x-1/2 after:w-12 after:h-1 after:rounded-md after:bg-purple-500 after:mt-[70px]">PROJECTS</p>
  <p class="text-center text-lg mt-10">Here you will find some of the personal and clients projects that I created with each project containing its own case study</p>
  <div class="flex flex-row flex-wrap justify-center items-center gap-[10em] mt-5">
    <project-items v-for="{ image, title, description, buttonLabel } in items">
      <template #image></template>
      <template #title>{{ title }}</template>
      <template #description>{{ description }}</template>
      <template #launch>
        <button>{{ buttonLabel }}</button>
      </template>
    </project-items>
  </div>
</div>
</template>

<style scoped>

</style>