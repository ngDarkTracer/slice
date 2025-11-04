<script setup lang="ts">
const emits = defineEmits<{
  (event: 'goto', value: string): void
}>()

function goto() {
  emits('goto', '#projects')
}
</script>

<template>
  <div class="bg-gradient-to-r inset-0 from-blue-400 to-purple-400 h-[100vh] relative grid grid-rows-3">
    <div class="flex flex-col items-center gap-y-10 text-white row-start-2">
      <p class="text-[60px]">AHOY, I'M PL</p>
      <p class="text-lg w-[50em] text-center">I'm a fullstack software developer at <b>NEEMA</b>, company based in Cameroon. I'm also CEO of <b>AWAKE Entertainment</b>, a video games and 3D animation studio.</p>
      <button class="bg-[#7743e8] px-[80px] py-4 shadow-lg text-white font-bold rounded-sm hover:cursor-pointer"
      @click="goto">PROJECTS</button>
    </div>
    <div class="row-start-3 row-span-2 flex justify-center items-end">
      <span class="rounded-b-[60px] rounded-t-[60px] h-[60px] w-[30px] border-2 border-white mb-4
      after:content[''] after:block after:h-[5px] after:w-[5px] after:rounded-[50%] after:bg-white
      after:absolute after:left-1/2 after:-translate-x-1/2 scroll"></span>
    </div>
  </div>
</template>

<style scoped>
@keyframes scrollAnim {
  0% {
    transform: translateY(50px);
    opacity: 0;
  }
  50% {
    transform: translateY(25px);
    opacity: 1;
  }
  100% {
    transform: translateY(5px);
    opacity: 0;
  }
}

.scroll::after {
  animation: scrollAnim 1s linear infinite;
}

.rainbow::before {
  content: "";
  padding: 40px 140px;
  position: absolute;
  width: 100px;
  height: 50px;
  background-image: linear-gradient(to right, #ff0080, #ff8c00, #40e0d0);
  border-radius: 10px;
  transform: translate(-35%, -36%);
}
</style>