<script setup lang="ts">
import {NavigationItem} from "@/utils/configuration";


const navItems: NavigationItem = [
  { label: 'HOME', url: '' },
  { label: 'ABOUT', url: '' },
  { label: 'PROJECTS', url: '' },
  { label: 'CONTACT', url: '' }
]
</script>

<template>
<header class="w-full h-5 flex flex-row items-center justify-between px-8 shadow-sm h-[90px] bg-white fixed top-0 z-50">
  <div class="mx-8">
    <span class="rounded-[50%]"><img src="" alt=""></span>
    <span class="font-bold">PIERRE LOREL</span>
  </div>
  <div>
    <ul class="flex flex-row">
      <li v-for="{ label, url } of navItems" class="mx-3">
        <a :href="url" class="font-bold transition-all hover:text-[#7743e8]">{{ label }}</a>
      </li>
    </ul>
  </div>
</header>
</template>

<style scoped>

</style>