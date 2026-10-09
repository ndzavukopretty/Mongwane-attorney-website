<script setup lang="ts">
import { ref } from 'vue'
import logo from '../assets/images/logo.png.jpeg'

const open = ref(false)

// Call confirmation
const phoneNumber = '+27760238061'
const phoneDisplay = '+27 76 023 8061'
const showCallConfirm = ref(false)

function confirmCall() {
  showCallConfirm.value = false
  window.location.href = `tel:${phoneNumber}`
}
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
        <RouterLink to="/about" class="font-bold transition-colors hover:text-brass [&.router-link-exact-active]:text-blue-600">About Us</RouterLink>
        <RouterLink to="/services" class="font-bold transition-colors hover:text-brass [&.router-link-exact-active]:text-blue-600">Services</RouterLink>
        <RouterLink to="/contact" class="font-bold transition-colors hover:text-brass [&.router-link-exact-active]:text-blue-600">Contact Us</RouterLink>
      </nav>

      <!-- Social icons (desktop) -->
      <div class="hidden items-center gap-2 md:flex">
        <a
          href="https://www.facebook.com/AnAttorneyBrotherEntrepreneurChristian"
          target="_blank"
          rel="noopener noreferrer"
          aria-label="Mongwane Attorneys on Facebook"
          class="flex h-10 w-10 items-center justify-center rounded bg-ink/5 text-ink transition-colors hover:bg-ink/10 hover:text-brass"
        >
          <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current" aria-hidden="true">
            <path d="M22 12a10 10 0 1 0-11.56 9.88v-6.99H7.9V12h2.54V9.8c0-2.5 1.49-3.89 3.78-3.89 1.09 0 2.24.2 2.24.2v2.46h-1.26c-1.24 0-1.63.77-1.63 1.56V12h2.78l-.44 2.89h-2.34v6.99A10 10 0 0 0 22 12Z"/>
          </svg>
        </a>

        <a
          href="https://wa.me/27760238061?text=Hello%2C%20I%20would%20like%20to%20make%20an%20enquiry."
          target="_blank"
          rel="noopener noreferrer"
          aria-label="Chat with Mongwane Attorneys on WhatsApp"
          class="flex h-10 w-10 items-center justify-center rounded bg-ink/5 text-[#25D366] transition-colors hover:bg-ink/10 hover:text-[#1ebe5b]"
        >
          <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current" aria-hidden="true">
            <path d="M17.47 14.38c-.3-.15-1.76-.87-2.03-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.94 1.17-.17.2-.35.22-.65.07-.3-.15-1.26-.46-2.4-1.48-.89-.79-1.49-1.77-1.66-2.07-.17-.3-.02-.46.13-.61.14-.13.3-.35.45-.52.15-.17.2-.3.3-.5.1-.2.05-.37-.02-.52-.08-.15-.67-1.61-.92-2.2-.24-.58-.49-.5-.67-.51h-.57c-.2 0-.52.07-.8.37-.27.3-1.04 1.02-1.04 2.48 0 1.46 1.07 2.88 1.22 3.08.15.2 2.1 3.2 5.08 4.49.71.31 1.26.49 1.69.63.71.23 1.36.2 1.87.12.57-.08 1.76-.72 2.01-1.41.25-.69.25-1.29.17-1.41-.07-.12-.27-.2-.57-.35ZM12.05 21.78h-.01a9.87 9.87 0 0 1-5.03-1.38l-.36-.21-3.74.98 1-3.65-.24-.37a9.86 9.86 0 0 1-1.51-5.26c0-5.45 4.44-9.88 9.89-9.88 2.64 0 5.12 1.03 6.99 2.9a9.82 9.82 0 0 1 2.89 6.99c0 5.45-4.44 9.88-9.88 9.88ZM20.52 3.45A11.8 11.8 0 0 0 12.05 0C5.5 0 .16 5.33.16 11.89c0 2.1.55 4.14 1.59 5.95L.06 24l6.3-1.65a11.88 11.88 0 0 0 5.68 1.45h.01c6.55 0 11.89-5.33 11.89-11.89 0-3.18-1.24-6.16-3.48-8.41Z"/>
          </svg>
        </a>

        <button
          type="button"
          aria-label="Call Mongwane Attorneys"
          class="flex h-10 w-10 items-center justify-center rounded bg-ink/5 text-ink transition-colors hover:bg-ink/10 hover:text-brass"
          @click="showCallConfirm = true"
        >
          <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current" aria-hidden="true">
            <path d="M6.62 10.79a15.05 15.05 0 0 0 6.59 6.59l2.2-2.2a1 1 0 0 1 1.02-.24c1.12.37 2.33.57 3.57.57a1 1 0 0 1 1 1V20a1 1 0 0 1-1 1A17 17 0 0 1 3 4a1 1 0 0 1 1-1h3.5a1 1 0 0 1 1 1c0 1.25.2 2.45.57 3.57a1 1 0 0 1-.25 1.02l-2.2 2.2Z"/>
          </svg>
        </button>
      </div>

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

      <!-- Social icons (mobile) -->
      <div class="flex items-center gap-2">
        <a
          href="https://www.facebook.com/AnAttorneyBrotherEntrepreneurChristian"
          target="_blank"
          rel="noopener noreferrer"
          aria-label="Mongwane Attorneys on Facebook"
          class="flex h-10 w-10 items-center justify-center rounded bg-ink/5 text-ink transition-colors hover:bg-ink/10 hover:text-brass"
        >
          <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current" aria-hidden="true">
            <path d="M22 12a10 10 0 1 0-11.56 9.88v-6.99H7.9V12h2.54V9.8c0-2.5 1.49-3.89 3.78-3.89 1.09 0 2.24.2 2.24.2v2.46h-1.26c-1.24 0-1.63.77-1.63 1.56V12h2.78l-.44 2.89h-2.34v6.99A10 10 0 0 0 22 12Z"/>
          </svg>
        </a>

        <a
          href="https://wa.me/27760238061?text=Hello%2C%20I%20would%20like%20to%20make%20an%20enquiry."
          target="_blank"
          rel="noopener noreferrer"
          aria-label="Chat with Mongwane Attorneys on WhatsApp"
          class="flex h-10 w-10 items-center justify-center rounded bg-ink/5 text-[#25D366] transition-colors hover:bg-ink/10 hover:text-[#1ebe5b]"
        >
          <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current" aria-hidden="true">
            <path d="M17.47 14.38c-.3-.15-1.76-.87-2.03-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.94 1.17-.17.2-.35.22-.65.07-.3-.15-1.26-.46-2.4-1.48-.89-.79-1.49-1.77-1.66-2.07-.17-.3-.02-.46.13-.61.14-.13.3-.35.45-.52.15-.17.2-.3.3-.5.1-.2.05-.37-.02-.52-.08-.15-.67-1.61-.92-2.2-.24-.58-.49-.5-.67-.51h-.57c-.2 0-.52.07-.8.37-.27.3-1.04 1.02-1.04 2.48 0 1.46 1.07 2.88 1.22 3.08.15.2 2.1 3.2 5.08 4.49.71.31 1.26.49 1.69.63.71.23 1.36.2 1.87.12.57-.08 1.76-.72 2.01-1.41.25-.69.25-1.29.17-1.41-.07-.12-.27-.2-.57-.35ZM12.05 21.78h-.01a9.87 9.87 0 0 1-5.03-1.38l-.36-.21-3.74.98 1-3.65-.24-.37a9.86 9.86 0 0 1-1.51-5.26c0-5.45 4.44-9.88 9.89-9.88 2.64 0 5.12 1.03 6.99 2.9a9.82 9.82 0 0 1 2.89 6.99c0 5.45-4.44 9.88-9.88 9.88ZM20.52 3.45A11.8 11.8 0 0 0 12.05 0C5.5 0 .16 5.33.16 11.89c0 2.1.55 4.14 1.59 5.95L.06 24l6.3-1.65a11.88 11.88 0 0 0 5.68 1.45h.01c6.55 0 11.89-5.33 11.89-11.89 0-3.18-1.24-6.16-3.48-8.41Z"/>
          </svg>
        </a>

        <button
          type="button"
          aria-label="Call Mongwane Attorneys"
          class="flex h-10 w-10 items-center justify-center rounded bg-ink/5 text-ink transition-colors hover:bg-ink/10 hover:text-brass"
          @click="open = false; showCallConfirm = true"
        >
          <svg viewBox="0 0 24 24" class="h-4 w-4 fill-current" aria-hidden="true">
            <path d="M6.62 10.79a15.05 15.05 0 0 0 6.59 6.59l2.2-2.2a1 1 0 0 1 1.02-.24c1.12.37 2.33.57 3.57.57a1 1 0 0 1 1 1V20a1 1 0 0 1-1 1A17 17 0 0 1 3 4a1 1 0 0 1 1-1h3.5a1 1 0 0 1 1 1c0 1.25.2 2.45.57 3.57a1 1 0 0 1-.25 1.02l-2.2 2.2Z"/>
          </svg>
        </button>
      </div>
    </nav>

    <!-- Call confirmation popup -->
    <div
      v-if="showCallConfirm"
      class="fixed inset-0 z-50 flex items-center justify-center bg-black/50 px-6"
      role="dialog"
      aria-modal="true"
      aria-labelledby="call-confirm-title"
      @click.self="showCallConfirm = false"
      @keydown.esc="showCallConfirm = false"
    >
      <div class="w-full max-w-sm rounded-lg bg-white p-6 text-center shadow-xl">
        <h2 id="call-confirm-title" class="text-lg font-bold text-ink">Call Mongwane Attorneys?</h2>
        <p class="mt-2 text-base text-ink/70">{{ phoneDisplay }}</p>
        <div class="mt-6 flex gap-3">
          <button
            type="button"
            class="flex-1 rounded border border-ink/20 px-4 py-2 font-bold text-ink transition-colors hover:bg-ink/5"
            @click="showCallConfirm = false"
          >
            Cancel
          </button>
          <button
            type="button"
            class="flex-1 rounded bg-blue-600 px-4 py-2 font-bold text-white transition-colors hover:bg-blue-700"
            @click="confirmCall"
          >
            Call now
          </button>
        </div>
      </div>
    </div>
  </header>
</template>