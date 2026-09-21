<script setup lang="ts">
import akaniPhoto from '../assets/images/Akani.jpeg'
const pillars = [
  {
    title: 'Client-focused solutions',
    body: 'Deliver high-quality, solution-oriented legal services tailored to the unique needs of each client.',
  },
  {
    title: 'Industry understanding',
    body: "Understand our clients' industries and regulatory environments to offer strategic legal guidance.",
  },
  {
    title: 'Transformation',
    body: 'Support transformation and inclusivity in the legal profession through empowerment and skills development.',
  },
  {
    title: 'Accountability',
    body: 'Uphold the highest standards of ethics, professionalism, and accountability in all we do.',
  },
]

const directors = [
  {
    name: 'Mongwane Akani Succeed',
    role: 'Chief Executive Officer',
    bio: 'Holds the degree of LLB (UL). Served articles at Modiba Attorneys in Tzaneen and was admitted to practice in 2021. A general practitioner concentrating on general property and commercial matters.',
    photo: akaniPhoto
  },
]
</script>

<template>
  <main>
    <!-- Intro -->
    <section class="bg-ink text-paper">
      <div class="mx-auto max-w-4xl px-6 py-20">
        <p class="text-brass text-sm tracking-wide">About us</p>
        <h1 class="font-display mt-3 text-4xl leading-tight">
          A progressive, client-focused law firm, by your side.
        </h1>
        <p class="text-paper/80 mt-6 max-w-2xl text-base leading-relaxed">
          Mongwane Attorneys was established in Tzaneen and now proudly serves the
          Bushbuckridge area and surrounding regions. We specialise in a wide range of
          legal fields, including Commercial Law, Employment Law, Public and
          Administrative Law, Conveyancing, Insurance Law, and General Litigation —
          and we take the time to understand our clients' industries, goals, and
          challenges.
        </p>
      </div>
    </section>

    <!-- Vision / Mission -->
    <section class="mx-auto max-w-4xl px-6 py-16">
      <div class="grid gap-12 md:grid-cols-2">
        <div>
          <h2 class="font-display text-ink text-2xl">Vision</h2>
          <p class="text-slate-text mt-3 leading-relaxed">
            To be a leading South African law firm, recognised for excellence,
            transformation, and innovative legal solutions that empower our clients
            and contribute to a just society.
          </p>
        </div>
        <div>
          <h2 class="font-display text-ink text-2xl">Mission</h2>
          <p class="text-slate-text mt-3 leading-relaxed">
            To provide high-quality, client-focused legal services by understanding
            our clients' needs, delivering strategic solutions, and upholding the
            highest standards of integrity, professionalism, and inclusivity.
          </p>
        </div>
      </div>

      <div class="mt-14 grid gap-8 sm:grid-cols-2">
        <div v-for="p in pillars" :key="p.title" class="border-ink/15 border-t pt-4">
          <h3 class="text-ink font-medium">{{ p.title }}</h3>
          <p class="text-slate-text mt-2 text-sm leading-relaxed">{{ p.body }}</p>
        </div>
      </div>
    </section>

    <!-- Transformation note -->
    <section class="bg-brass/10 py-14">
      <div class="mx-auto max-w-4xl px-6">
        <p class="text-ink leading-relaxed">
          From its humble beginnings in 2021 with a single Black director, Mongwane
          Attorneys has grown into a majority Black-owned firm — proud of our 100%
          Black and female legal team, and committed to empowerment, transformation,
          and inclusive legal excellence.
        </p>
      </div>
    </section>

    <!-- Directors -->
  <section class="mx-auto max-w-4xl px-6 py-16">
  <h2 class="font-display text-ink text-2xl">Directors</h2>
  <div class="mt-8 max-w-sm">
    <div v-for="d in directors" :key="d.name">
      <img :src="d.photo" :alt="d.name" class="w-full rounded object-contain" />
      <h3 class="font-display text-ink mt-4 text-lg">{{ d.name }}</h3>
      <p class="text-brass text-sm">{{ d.role }}</p>
      <p class="text-slate-text mt-3 text-sm leading-relaxed">{{ d.bio }}</p>
    </div>
  </div>
</section>
  </main>
</template>