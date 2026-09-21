<script setup lang="ts">
import homePic from '../assets/images/homePic.jpeg'
const highlights = [
  {
    title: 'Reach',
    body: 'Offices in Tzaneen and Thulamahashe, serving Bushbuckridge and the surrounding regions.',
  },
  {
    title: 'Transformation',
    body: 'A majority Black-owned firm with 100% Black and female legal representation.',
  },
  {
    title: 'Approach',
    body: 'Strategic partners, not just practitioners — we take the time to understand your goals.',
  },
]

const services = [
  'Commercial & Corporate Litigation',
  'Employment & Labour Law',
  'Conveyancing & Property Law',
  'Insurance Law',
  'Insolvency, Business Rescue & Estates',
  'Public Law & Administrative Law',
]
</script>

<template>
  <main>
    <!-- Hero -->
    <section class="bg-ink text-paper">
      <div class="mx-auto grid max-w-6xl gap-10 px-6 py-4 md:grid-cols-5 md:py-6">
        <div class="md:col-span-3">
          <p class="text-brass text-sm tracking-wide">By Your Side</p>
          <h1 class="font-display mt-3 text-4xl leading-tight md:text-5xl">
            Legal counsel built on integrity, and rooted in the communities we serve.
          </h1>
          <p class="text-paper/80 mt-6 max-w-md text-base">
            Mongwane Attorneys delivers high-quality, strategic legal services to
            individuals, businesses, and public institutions across South Africa.
          </p>
          <div class="mt-8 flex gap-4">
            <RouterLink
              to="/contact"
              class="bg-brass text-ink-dark rounded px-6 py-3 text-sm font-medium hover:opacity-90"
            >
              Get in touch
            </RouterLink>
            <RouterLink
              to="/services"
              class="border-paper/40 rounded border px-6 py-3 text-sm font-medium hover:border-paper"
            >
              Our services
            </RouterLink>
          </div>
        </div>
         <div class="md:col-span-2">
    <img
      :src="homePic"
      alt="Mongwane Attorneys"
      class="h-full w-full rounded object-cover"
    />
  </div>
      </div>
    </section>

    <!-- Highlights -->
    <section class="mx-auto max-w-6xl px-6 py-16">
      <div class="grid gap-10 md:grid-cols-3">
        <div v-for="h in highlights" :key="h.title" class="border-ink/15 border-t pt-4">
          <h3 class="font-display text-ink text-lg">{{ h.title }}</h3>
          <p class="text-slate-text mt-2 text-sm leading-relaxed">{{ h.body }}</p>
        </div>
      </div>
    </section>

    <!-- Services directory -->
    <section class="bg-ink-dark text-paper py-16">
      <div class="mx-auto max-w-6xl px-6">
        <div class="flex items-baseline justify-between">
          <h2 class="font-display text-2xl">Practice areas</h2>
          <RouterLink to="/services" class="text-brass text-sm hover:underline">
            View all services
          </RouterLink>
        </div>
        <ul class="divide-paper/10 mt-8 divide-y">
          <li v-for="s in services" :key="s" class="py-4 text-sm">{{ s }}</li>
        </ul>
      </div>
    </section>

    <!-- CTA strip -->
    <section class="mx-auto max-w-6xl px-6 py-16 text-center">
      <h2 class="font-display text-ink text-2xl">Ready to discuss your matter?</h2>
      <p class="text-slate-text mt-3">
        Reach our Tzaneen or Thulamahashe office — we're ready to assist.
      </p>
      <RouterLink
        to="/contact"
        class="bg-ink text-paper mt-6 inline-block rounded px-6 py-3 text-sm font-medium hover:opacity-90"
      >
        Contact us
      </RouterLink>
    </section>
  </main>
</template>