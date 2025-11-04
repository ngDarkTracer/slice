<script setup lang="ts">
import { ref } from "vue";
import ProjectItem from "@/components/ProjectItem.vue";
import {ProjectItemStruct} from "@/utils/configuration";

const delay = ref<Number>(30)
const items: ProjectItemStruct[] = [
  {
    image: 'src/assets/airbooks-logo.png',
    title: 'AirBooks v2.0',
    description: 'A solid CIS to scale up your business',
    buttonLabel: 'CASE STUDY'
  },{
    image: 'src/assets/airbooks-logo.png',
    title: 'AirBooks Integrations',
    description: 'Airbooks integrations provided to bring it to another level',
    buttonLabel: 'CASE STUDY'
  },{
    image: 'src/assets/totalenergies.svg',
    title: 'TotalEnergies',
    description: 'Salesforce app used by TotalEnergies to sell charges card',
    buttonLabel: 'CASE STUDY'
  },{
    image: 'src/assets/salesforce.svg',
    title: 'Enfant du Mekong',
    description: 'Heal the world with salesforce',
    buttonLabel: 'CASE STUDY'
  },{
    image: 'src/assets/salesforce.svg',
    title: 'Microport',
    description: 'Projet made to export and save Microport data',
    buttonLabel: 'CASE STUDY'
  },{
    image: 'src/assets/rmc-info.svg',
    title: 'RMC/BFM',
    description: 'Salesforce app built for RMC',
    buttonLabel: 'CASE STUDY'
  },{
    image: 'src/assets/logo-blender.svg',
    title: 'Blender artist',
    description: 'Create 3D models and animation',
    buttonLabel: 'CASE STUDY'
  },{
    image: 'src/assets/Unity.svg',
    title: 'Unity developer',
    description: 'Make some fun videos games',
    buttonLabel: 'CASE STUDY'
  }
]

</script>

<template>
<div class="bg-gray-50 grid grid-rows-[8vh_15vh_76vh] p-[100px]">
  <p class="text-[35px] font-bold text-center after:content-[''] after:absolute after:left-1/2 after:-translate-x-1/2 after:w-12 after:h-1 after:rounded-md after:bg-purple-500 after:mt-[70px]">PROJECTS</p>
  <p class="text-center text-lg mt-10">Here you will find some of the personal and clients projects that I created with each project containing its own case study</p>
  <div class="flex flex-row flex-nowrap justify-center items-center w-[100%] absolute slide mt-[25em]">
    <div v-for="({ image, title, description, buttonLabel }, i) in items" class="absolute size-[20em]" :style="`--i:${i}; --my-delay:${delay}s; --number-of-projects:${items.length}`">
      <project-item>
        <template #image>
          <img :src="image" :alt="title">
        </template>
        <template #title>{{ title }}</template>
        <template #description>{{ description }}</template>
<!--        <template #launch>-->
<!--          <button>{{ buttonLabel }}</button>-->
<!--        </template>-->
      </project-item>
    </div>
  </div>
</div>
</template>

<style scoped>

@keyframes slideAnimation {
  0% {
    left: -100%;
  }
  100% {
    left: 100%;
  }
}

.slide > * {
  animation: slideAnimation var(--my-delay, 20s) linear infinite;
  animation-delay: calc(var(--i) * (var(--my-delay, 20s) / var(--number-of-projects, 1)));
}

</style>