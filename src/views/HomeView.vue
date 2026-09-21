<script setup lang="ts">
import { onMounted, onUnmounted, ref, type ComponentPublicInstance } from 'vue'
import homePic from '../assets/images/home-pic.jpg'

const highlights = [
  {
    title: 'Reach',
    body: 'Offices in Tzaneen and Thulamahashe, serving Bushbuckridge and the surrounding regions.',
    icon: 'map-pin',
  },
  {
    title: 'Transformation',
    body: 'A majority Black-owned firm with 100% Black and female legal representation.',
    icon: 'users',
  },
  {
    title: 'Approach',
    body: 'Strategic partners, not just practitioners — we take the time to understand your goals.',
    icon: 'compass',
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

// --- Scroll reveal ---
const revealRefs = ref<HTMLElement[]>([])
let observer: IntersectionObserver | null = null

function setRevealRef(el: Element | ComponentPublicInstance | null) {
  if (el && el instanceof HTMLElement && !revealRefs.value.includes(el)) {
    revealRefs.value.push(el)
  }
}

onMounted(() => {
  observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add('is-visible')
          observer?.unobserve(entry.target)
        }
      })
    },
    { threshold: 0.15, rootMargin: '0px 0px -40px 0px' },
  )
  revealRefs.value.forEach((el) => observer?.observe(el))
})

onUnmounted(() => observer?.disconnect())
</script>

<template>
  <main>
    <!-- Hero -->
    <section class="hero bg-ink text-paper relative overflow-hidden">
      <!-- Video background -->
      <div class="hero-media absolute inset-0">
        <video
          class="h-full w-full object-cover"
          :poster="homePic"
          autoplay
          muted
          loop
          playsinline
        >
          <source src="../assets/videos/law-hero.mp4" type="video/mp4" />
        </video>
        <div class="hero-overlay absolute inset-0" />
      </div>

      <div class="relative mx-auto grid max-w-6xl gap-10 px-6 py-16 md:grid-cols-5 md:py-24">
        <div class="md:col-span-3">
          <p class="text-brass hero-in text-sm tracking-wide" style="animation-delay: 0.05s">
            By Your Side
          </p>
          <h1
            class="font-display hero-in mt-3 text-4xl leading-tight md:text-5xl"
            style="animation-delay: 0.2s"
          >
            Legal counsel built on integrity, and rooted in the communities we serve.
          </h1>
          <p class="text-paper/80 hero-in mt-6 max-w-md text-base" style="animation-delay: 0.35s">
            Mongwane Attorneys delivers high-quality, strategic legal services to
            individuals, businesses, and public institutions across South Africa.
          </p>
          <div class="hero-in mt-8 flex gap-4" style="animation-delay: 0.5s">
            <RouterLink
              to="/contact"
              class="bg-brass text-ink-dark cta-btn rounded px-6 py-3 text-sm font-medium"
            >
              Get in touch
            </RouterLink>
            <RouterLink
              to="/services"
              class="border-paper/40 cta-btn-outline rounded border px-6 py-3 text-sm font-medium"
            >
              Our services
            </RouterLink>
          </div>
        </div>
      </div>
    </section>

    <!-- Highlights -->
    <section class="mx-auto max-w-6xl px-6 py-16">
      <div class="grid gap-10 md:grid-cols-3">
        <div
          v-for="(h, i) in highlights"
          :key="h.title"
          :ref="setRevealRef"
          class="reveal highlight-card border-ink/15 border-t pt-4"
          :style="{ transitionDelay: `${i * 100}ms` }"
        >
          <div class="flex items-start justify-between">
            <h3 class="font-display text-ink text-lg">{{ h.title }}</h3>

            <!-- Icon -->
            <span class="icon-badge">
              <svg
                v-if="h.icon === 'map-pin'"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="1.5"
              >
                <path d="M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 1 1 16 0Z" />
                <circle cx="12" cy="10" r="3" />
              </svg>

              <svg
                v-else-if="h.icon === 'users'"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="1.5"
              >
                <path d="M17 21v-2a4 4 0 0 0-4-4H7a4 4 0 0 0-4 4v2" />
                <circle cx="9" cy="7" r="4" />
                <path d="M23 21v-2a4 4 0 0 0-3-3.87" />
                <path d="M16 3.13a4 4 0 0 1 0 7.75" />
              </svg>

              <svg
                v-else-if="h.icon === 'compass'"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                stroke-width="1.5"
              >
                <circle cx="12" cy="12" r="10" />
                <path d="m16.24 7.76-2.12 6.36-6.36 2.12 2.12-6.36 6.36-2.12Z" />
              </svg>
            </span>
          </div>

          <p class="text-slate-text mt-2 text-sm leading-relaxed">{{ h.body }}</p>
        </div>
      </div>
    </section>

    <!-- Services directory -->
    <section class="bg-ink-dark text-paper py-16">
      <div class="mx-auto max-w-6xl px-6">
        <div :ref="setRevealRef" class="reveal flex items-baseline justify-between">
          <h2 class="font-display text-2xl">Practice areas</h2>
          <RouterLink to="/services" class="text-brass text-sm hover:underline">
            View all services
          </RouterLink>
        </div>
        <ul class="divide-paper/10 mt-8 divide-y">
          <li
            v-for="(s, i) in services"
            :key="s"
            :ref="setRevealRef"
            class="reveal service-row py-4 text-sm"
            :style="{ transitionDelay: `${i * 60}ms` }"
          >
            {{ s }}
          </li>
        </ul>
      </div>
    </section>

    <!-- CTA strip -->
    <section :ref="setRevealRef" class="reveal mx-auto max-w-6xl px-6 py-16 text-center">
      <h2 class="font-display text-ink text-2xl">Ready to discuss your matter?</h2>
      <p class="text-slate-text mt-3">
        Reach our Tzaneen or Thulamahashe office — we're ready to assist.
      </p>
      <RouterLink
        to="/contact"
        class="bg-ink text-paper cta-btn mt-6 inline-block rounded px-6 py-3 text-sm font-medium"
      >
        Contact us
      </RouterLink>
    </section>
  </main>
</template>

<style scoped>
/* Hero video overlay for text legibility */
.hero-overlay {
  background: linear-gradient(
    120deg,
    rgba(15, 15, 15, 0.88) 0%,
    rgba(15, 15, 15, 0.72) 45%,
    rgba(15, 15, 15, 0.35) 100%
  );
}

.hero {
  min-height: 480px;
}

.hero-media video {
  filter: saturate(0.9) contrast(1.05);
}

/* Hero entrance animation */
.hero-in {
  opacity: 0;
  transform: translateY(18px);
  animation: fadeInUp 0.7s ease forwards;
}

@keyframes fadeInUp {
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Scroll reveal */
.reveal {
  opacity: 0;
  transform: translateY(24px);
  transition:
    opacity 0.6s ease,
    transform 0.6s ease;
}

.reveal.is-visible {
  opacity: 1;
  transform: translateY(0);
}

/* Button micro-interactions */
.cta-btn {
  transition:
    transform 0.2s ease,
    opacity 0.2s ease,
    box-shadow 0.2s ease;
}
.cta-btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
  opacity: 0.95;
}

.cta-btn-outline {
  transition:
    border-color 0.2s ease,
    transform 0.2s ease;
}
.cta-btn-outline:hover {
  border-color: currentColor;
  transform: translateY(-2px);
}

/* Service row hover */
.service-row {
  transition:
    padding-left 0.25s ease,
    color 0.25s ease;
}
.service-row:hover {
  padding-left: 0.5rem;
  color: var(--color-brass, #c9a24b);
}

/* Icon badge */
.icon-badge {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 40px;
  height: 40px;
  border-radius: 9999px;
  border: 1.5px solid var(--color-brass, #c9a24b);
  color: var(--color-brass, #c9a24b);
  flex-shrink: 0;
  transition:
    background-color 0.2s ease,
    color 0.2s ease;
}

.icon-badge svg {
  width: 20px;
  height: 20px;
}

.highlight-card:hover .icon-badge {
  background-color: var(--color-brass, #c9a24b);
  color: #fff;
}

/* Respect reduced motion preference */
@media (prefers-reduced-motion: reduce) {
  .hero-in,
  .reveal {
    animation: none !important;
    transition: none !important;
    opacity: 1 !important;
    transform: none !important;
  }
}
</style>