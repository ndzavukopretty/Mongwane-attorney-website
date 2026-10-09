<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'

const showContent = ref(false)

// scroll-triggered animation for the office details section
const officeSection = ref<HTMLElement | null>(null)
const showOffices = ref(false)
let observer: IntersectionObserver | null = null

onMounted(() => {
  // gives the map iframe a moment to render before the panels animate in
  setTimeout(() => {
    showContent.value = true
  }, 400)

  observer = new IntersectionObserver(
    ([entry]) => {
      if (entry.isIntersecting) {
        showOffices.value = true
        // only needs to fire once
        observer?.disconnect()
      }
    },
    { threshold: 0.2 }
  )

  if (officeSection.value) {
    observer.observe(officeSection.value)
  }
})

onUnmounted(() => {
  observer?.disconnect()
})
</script>

<template>
  <main class="bg-blue-900">
    <!-- Map -->
    <section class="mx-auto h-[375px] w-3/4 overflow-hidden ">
      <iframe
        title="Mongwane Attorneys - Tzaneen"
        class="h-full w-full border-0"
        loading="lazy"
        src="https://www.google.com/maps?q=3+Morgan+St,+Arbor+Park,+Tzaneen,+0850,+South+Africa&output=embed"
      >
      </iframe>
    </section>

    <section class="bg-white">
      <div class="mx-auto max-w-4xl px-6 pt-8 pb-10 grid gap-8 sm:grid-cols-2 sm:items-start">
        <div
          class="transition-all duration-700 ease-out"
          :class="showContent ? 'opacity-100 translate-x-0' : 'opacity-0 -translate-x-10'"
          style="transition-delay: 100ms"
        >
          <p class="text-brass text-sm tracking-wide">Get in touch</p>
          <h1 class="font-display text-ink mt-3 text-4xl leading-tight">
            We're ready to assist you
          </h1>
          <a
            href="mailto:info@mongwaneattorneys.co.za?subject=Consultation%20Request"
            class="bg-ink text-white mt-6 inline-block rounded px-6 py-3 text-sm font-medium hover:opacity-90"
          >
            Book consultation
          </a>
        </div>

        <div
          class="sm:justify-self-end transition-all duration-700 ease-out"
          :class="showContent ? 'opacity-100 translate-x-0' : 'opacity-0 translate-x-10'"
          style="transition-delay: 400ms"
        >
          <h3 class="font-bold text-ink text-lg">Business Hours</h3>
          <dl class="mt-3 space-y-1 text-ink text-sm">
            <div class="flex justify-between gap-6">
              <dt class="font-bold">Monday – Friday</dt>
              <dd>08:00 – 16:30</dd>
            </div>
          </dl>
        </div>
      </div>
    </section>

    <!-- Office details -->
    <section ref="officeSection" class="mx-auto max-w-4xl px-6 py-16">
      <div class="grid gap-12 sm:grid-cols-2">
        <div
          class="transition-all duration-700 ease-out"
           :class="showOffices ? 'opacity-100 translate-x-0' : 'opacity-0 -translate-x-10'"
           style="transition-delay: 100ms"
          >
          <h3 class="font-display text-white text-lg">
            Tzaneen — Main Branch
          </h3>

          <div class="mt-3 space-y-2 text-white text-sm">
            <!-- Location -->
            <div class="flex items-start gap-3">
              <svg
                class="mt-0.5 h-5 w-5 shrink-0"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M12 21s7-6.2 7-12a7 7 0 10-14 0c0 5.8 7 12 7 12z"
                />
                <circle cx="12" cy="9" r="2.5" stroke-width="2" />
              </svg>

              <span>
                3 Morgan St, Arbor Park, Tzaneen, 0850<br />
              </span>
            </div>
            <!-- Postal Address -->
            <div class="flex items-start gap-3">
              <svg
                class="mt-0.5 h-5 w-5 shrink-0"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M4 4h16v16H4z"
                />
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M4 8h16M8 4v4M16 4v4"
                />
              </svg>

              <span>
                P O Box 116, Lenyenye 0857
              </span>
            </div>
            <!-- Contact -->
            <div class="flex items-center gap-3">
              <svg
                class="h-5 w-5 shrink-0"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M3 5a2 2 0 012-2h2.3a2 2 0 011.9 1.4l1 3a2 2 0 01-.5 2l-1.5 1.5a16 16 0 007 7l1.5-1.5a2 2 0 012-.5l3 1a2 2 0 011.4 1.9V21a2 2 0 01-2 2h-1C10.3 23 1 13.7 1 3V2a2 2 0 012-2z"
                />
              </svg>

              <span>
                Tel: (015) 004 0178 · Cell: (076) 023 8061
              </span>
            </div>

            <!-- Email -->
            <div class="flex items-center gap-3">
              <svg
                class="h-5 w-5 shrink-0"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M3 6a2 2 0 012-2h14a2 2 0 012 2v12a2 2 0 01-2 2H5a2 2 0 01-2-2V6z"
                />
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M3 6l9 7 9-7"
                />
              </svg>

              <span>
                info@mongwaneattorneys.co.za
              </span>
            </div>
          </div>
        </div>
        <div
          class="transition-all duration-700 ease-out"
          :class="showOffices ? 'opacity-100 translate-x-0' : 'opacity-0 translate-x-10'"
          style="transition-delay: 400ms"
        >
          <h3 class="font-display text-white text-lg">
            Thulamahashe
          </h3>

          <div class="mt-3 space-y-2 text-white text-sm">
            <!-- Location -->
            <div class="flex items-start gap-3">
              <svg
                class="mt-0.5 h-5 w-5 shrink-0"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M12 21s7-6.2 7-12a7 7 0 10-14 0c0 5.8 7 12 7 12z"
                />
                <circle cx="12" cy="9" r="2.5" stroke-width="2" />
              </svg>

              <span>
                Stand No. 1031, Thulamahashe B, Mhala<br />
              </span>
            </div>
            <!-- Postal Address -->
            <div class="flex items-start gap-3">
              <svg
                class="mt-0.5 h-5 w-5 shrink-0"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M4 4h16v16H4z"
                />
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M4 8h16M8 4v4M16 4v4"
                />
              </svg>

              <span>
                P O Box 116, Lenyenye 0857
              </span>
            </div>
            <!-- Contact -->
            <div class="flex items-center gap-3">
              <svg
                class="h-5 w-5 shrink-0"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M3 5a2 2 0 012-2h2.3a2 2 0 011.9 1.4l1 3a2 2 0 01-.5 2l-1.5 1.5a16 16 0 007 7l1.5-1.5a2 2 0 012-.5l3 1a2 2 0 011.4 1.9V21a2 2 0 01-2 2h-1C10.3 23 1 13.7 1 3V2a2 2 0 012-2z"
                />
              </svg>

              <span>
                Tel: (015) 004 0178 · Cell: (076) 023 8061
              </span>
            </div>

            <!-- Email -->
            <div class="flex items-center gap-3">
              <svg
                class="h-5 w-5 shrink-0"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M3 6a2 2 0 012-2h14a2 2 0 012 2v12a2 2 0 01-2 2H5a2 2 0 01-2-2V6z"
                />
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M3 6l9 7 9-7"
                />
              </svg>

              <span>
                info@mongwaneattorneys.co.za
              </span>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
</template>