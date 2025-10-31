<script setup lang="ts">
import {ref} from "vue";
import {FormValues} from "@/utils/configuration.js";

const formValues = ref<FormValues>({
  name: '',
  email: '',
  message: ''
})

const errors = ref<Object>({})

const sendEmail = () => {
  errors.value = {}

  if (!formValues.name) errors.value.name = 'Your name is required'

  if (!formValues.email) errors.value.email = 'Your email is required'
  else if (!/\S+@\S+\.\S+/.test(formValues.email))
    errors.value.email = 'Invalid email'

  if (!formValues.message) errors.value.message = 'Type something...'

  if (Object.keys(errors.value).length === 0) {
    console.log('Valid form ✅')
  } else {
    return
  }
}
</script>

<template>
<div class="bg-gradient-to-r inset-0 from-blue-400 to-purple-400 grid grid-rows-[8vh_15vh_56vh] p-[100px]">
  <p class="text-[35px] text-white font-bold text-center after:content-[''] after:absolute after:left-1/2 after:-translate-x-1/2 after:w-12 after:h-1 after:rounded-md after:bg-purple-600 after:mt-[70px]">CONTACT</p>
  <p class="text-center text-white text-lg mt-10">Feel free to Contact me by submitting the form below and I will get back to you as soon as possible</p>
  <div class="w-full h-[600px] grid place-items-center">
    <div class="bg-white w-[60%] h-full rounded-lg shadow-lg">
      <form @submit.prevent="sendEmail" class="p-10 h-full flex flex-col justify-between">
        <div class="my-2">
          <input v-model="formValues.name" @input="() => errors.name && delete errors.name"
                 placeholder="Enter your name" type="text"
                 class="bg-gray-50 p-5 h-[60px] focus:outline-0 rounded-sm w-full text-sm">
          <p class="text-red-400" v-if="errors.name">{{ errors.name }}</p>
        </div>
        <div class="my-2">
          <input v-model="formValues.email" @input="() => errors.email && delete errors.email"
                 placeholder="Enter your email" type="text"
                 class="bg-gray-50 p-5 h-[60px] focus:outline-0 rounded-sm w-full text-sm">
          <p class="text-red-400" v-if="errors.email">{{ errors.email }}</p>
        </div>
        <div class="my-2">
          <textarea v-model="formValues.message" @input="() => errors.message && delete errors.message"
                    placeholder="Enter your message"
                    class="bg-gray-50 p-5 focus:outline-0 rounded-sm w-full text-sm" cols="30" rows="10"></textarea>
          <p class="text-red-400" v-if="errors.message">{{ errors.message }}</p>
        </div>
        <div class="grid">
          <button class="place-self-center hover:cursor-pointer bg-[#7743e8] px-[80px] py-4 shadow-lg text-white font-bold rounded-sm" type="submit">Send</button>
        </div>
      </form>
    </div>
  </div>
</div>
</template>

<style scoped>

</style>