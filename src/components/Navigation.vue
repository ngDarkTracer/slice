<script setup lang="ts">
import {NavigationItem} from "@/utils/configuration";


const navItems: NavigationItem[] = [
  { label: 'HOME', url:'' },
  { label: 'ABOUT', url:'#about' },
  { label: 'PROJECTS', url:'#projects' },
  { label: 'CONTACT', url:'#contact' }
]

const emits = defineEmits<{
  (event: 'goto', value: string): void
}>()

function goto(anchor: string) {
  emits('goto', anchor)
}
</script>

<template>
<header class="w-full h-5 flex flex-row items-center justify-between px-8 shadow-sm h-[90px] bg-white fixed top-0 z-50">
  <div class="mx-8 flex flex-row items-center">
    <span class="rounded-[50%] border-4 border-amber-500 w-[4em] mr-2"><img src="@/assets/user-icon.svg" alt=""></span>
    <span class="font-bold">PIERRE LOREL</span>
  </div>
  <div>
    <ul class="flex flex-row">
      <li v-for="{ label, url } of navItems" class="mx-3 cursor-pointer">
        <span @click="goto(url)" class="font-bold transition-all hover:text-[#7743e8]">{{ label }}</span>
      </li>
    </ul>
  </div>
</header>
</template>

<style scoped>

</style>