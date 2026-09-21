<script setup lang="ts">
import { ref } from 'vue'
import logo from '../assets/images/logo.png.jpeg'

const open = ref(false)
</script>

<template>
 <header class="bg-white text-ink border-b border-ink/10">
    <div class="mx-auto flex max-w-6xl items-center justify-between px-6 py-4">
      <RouterLink to="/" class="flex items-center gap-3">
        <img :src="logo" alt="Mongwane Attorneys" class="h-50 w-auto" />
        <!-- <span class="font-display text-2xl font-extrabold tracking-tight">
  Mongwane Attorneys
</span> -->
      </RouterLink>

 <nav class="hidden gap-8 text-base md:flex">
  <RouterLink to="/" class="font-bold transition-colors hover:text-brass [&.router-link-exact-active]:text-blue-600">Home</RouterLink>
  <RouterLink to="/about" class="font-bold transition-colors hover:text-brass [&.router-link-exact-active]:text-blue-600">About</RouterLink>
  <RouterLink to="/services" class="font-bold transition-colors hover:text-brass [&.router-link-exact-active]:text-blue-600">Services</RouterLink>
  <RouterLink to="/contact" class="font-bold transition-colors hover:text-brass [&.router-link-exact-active]:text-blue-600">Contact</RouterLink>
</nav>

      <button
        class="md:hidden"
        aria-label="Toggle menu"
        @click="open = !open"
      >
      <span class="block h-0.5 w-6 bg-ink mb-1.5"></span>
      <span class="block h-0.5 w-6 bg-ink mb-1.5"></span>
      <span class="block h-0.5 w-6 bg-ink"></span>
      </button>
    </div>

  <nav v-if="open" class="flex flex-col gap-4 px-6 pb-6 text-base font-bold md:hidden">
  <RouterLink to="/" class="[&.router-link-exact-active]:text-blue-600" @click="open = false">Home</RouterLink>
  <RouterLink to="/about" class="[&.router-link-exact-active]:text-blue-600" @click="open = false">About</RouterLink>
  <RouterLink to="/services" class="[&.router-link-exact-active]:text-blue-600" @click="open = false">Services</RouterLink>
  <RouterLink to="/contact" class="[&.router-link-exact-active]:text-blue-600" @click="open = false">Contact</RouterLink>
</nav>
  </header>
</template>