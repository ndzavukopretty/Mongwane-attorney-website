<script setup lang="ts">
interface Service {
  name: string
  image: string
}

const services: Service[] = [
  { name: 'Prenups & Postnups', image: new URL('../assets/images/services/prenups.jpg', import.meta.url).href },
  { name: 'Debt Review Removal', image: new URL('../assets/images/services/debt-collection.jpg', import.meta.url).href },
  { name: 'Debt Collections', image: new URL('../assets/images/services/debt collections.png', import.meta.url).href },
  { name: 'Divorce Cases', image: new URL('../assets/images/services/divorce.jpg', import.meta.url).href },
  { name: 'Criminal Cases', image: new URL('../assets/images/services/criminal.jpg', import.meta.url).href },
  { name: 'Immigration Cases', image: new URL('../assets/images/services/immigrations.jpg', import.meta.url).href },
  { name: 'Change of Ownership', image: new URL('../assets/images/services/change-ownership.jpg', import.meta.url).href },
  { name: 'Evictions', image: new URL('../assets/images/services/eviction.png', import.meta.url).href },
  { name: 'RAF Claims', image: new URL('../assets/images/services/raf-claims.jpg', import.meta.url).href },
  { name: 'Liquor Licences', image: new URL('../assets/images/services/liquor-licence.jpg', import.meta.url).href },
]
</script>

<template>
  <main>
    <section class="bg-white">
      <div class="text-slate-text mt-4 max-w-xl mx-auto px-6 pt-8 pb-10 text-center">
        <h1 class="font-display text-ink mt-3 text-4xl leading-tight">
          Our services
        </h1>
        <p class="text-slate-text mt-4 max-w-xl">
          Mongwane Attorneys offers a full suite of legal services across all major
          areas of practice, providing strategic, comprehensive legal support to
          individuals, corporates, and government entities.
        </p>
      </div>
    </section>

    <section class="bg-ink py-14">
      <div class="mx-auto max-w-5xl px-6">
        <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-3">
          <div
            v-for="(s, i) in services"
            :key="s.name"
            class="service-card group relative h-56 overflow-hidden rounded-md shadow-lg"
            :style="{ animationDelay: `${i * 0.1}s` }"
          >
            <img
              :src="s.image"
              :alt="s.name"
              class="h-full w-full object-cover transition duration-300 group-hover:scale-105"
              loading="lazy"
            >
            <div class="absolute inset-0 bg-black/50 transition duration-300 group-hover:bg-black/60" />
            <div class="absolute inset-0 flex items-center justify-center px-4">
              <span class="text-center text-lg font-bold uppercase tracking-wide text-white">
                {{ s.name }}
              </span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="mx-auto max-w-4xl px-6 py-16 text-center">
      <h2 class="font-display text-ink text-2xl">Not sure where to start?</h2>
      <p class="text-slate-text mt-3">Tell us about your matter — we'll point you to the right team.</p>
      <RouterLink
        to="/contact"
        class="bg-ink text-white mt-6 inline-block rounded px-6 py-3 text-sm font-medium hover:opacity-90"
      >
        Contact us
      </RouterLink>
    </section>
  </main>
</template>

<style scoped>
.service-card {
  opacity: 0;
  animation: slide-in-left 0.6s ease-out forwards;
}

@keyframes slide-in-left {
  from {
    opacity: 0;
    transform: translateX(-60px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}
</style>