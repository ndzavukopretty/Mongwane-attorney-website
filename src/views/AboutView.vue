<script setup lang="ts">
import akaniPhoto from '../assets/images/Akani2.jpeg'
import visionImage from '../assets/images/vision.jpg'
import missionImage from '../assets/images/mission.jpg'
// Optional images: import yours and assign them here, e.g.
// import heroPhoto from '../assets/images/hero.jpg'
const heroImage = ''


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
    <!-- Hero banner with gold triangle -->
    <section class="bg-ink relative h-20 overflow-hidden md:h-25">
      <img
        v-if="heroImage"
        :src="heroImage"
        alt=""
        class="absolute inset-0 h-full w-full object-cover"
      />
      <div class="bg-ink/60 absolute inset-0"></div>
      <div
        class="bg-brass absolute inset-0 [clip-path:polygon(0_45%,0_100%,40%_100%)]"
      ></div>
    </section>

    <!-- About us (navy, centred) -->
    <section class="bg-ink text-paper">
      <div class="mx-auto max-w-4xl px-6 pb-16 pt-8 text-center">
        <h1 class="font-display text-brass text-4xl font-extrabold uppercase tracking-tight md:text-5xl">
          About us
        </h1>
        <p class="mt-6 text-base leading-relaxed">
          Mongwane Attorneys was established in Tzaneen and now proudly serves the
          Bushbuckridge area and surrounding regions. We specialise in a wide range of
          legal fields, including Commercial Law, Employment Law, Public and
          Administrative Law, Conveyancing, Insurance Law, and General Litigation —
          and we take the time to understand our clients' industries, goals, and
          challenges.
        </p>
      </div>
    </section>

    <!-- Vision (white, text left / image right) -->
    <section class="overflow-hidden py-4">
      <div class="mx-auto grid max-w-6xl items-center gap-10 px-6 md:grid-cols-2">
        <div>
          <h2 class="font-display text-brass text-4xl font-extrabold uppercase tracking-tight">
            Our Vision
          </h2>
          <p class="text-ink mt-5 font-semibold leading-relaxed">
            To be a leading South African law firm, recognised for excellence,
            transformation, and innovative legal solutions that empower our clients
            and contribute to a just society.
          </p>
        </div>
        <div class="bg-brass/20 h-72 overflow-hidden rounded-l-[14rem] md:h-96">
          <img v-if="visionImage" :src="visionImage" alt="" class="h-full w-full object-cover" />
        </div>
      </div>
    </section>

    <!-- Mission (navy, image left / text right) -->
    <section class="bg-ink text-paper overflow-hidden py-4">
      <div class="mx-auto grid max-w-6xl items-center gap-10 px-6 md:grid-cols-2">
        <div class="bg-brass/20 order-2 h-72 overflow-hidden rounded-r-[14rem] md:order-1 md:h-96">
          <img v-if="missionImage" :src="missionImage" alt="" class="h-full w-full object-cover" />
        </div>
        <div class="order-1 md:order-2">
          <h2 class="font-display text-brass text-4xl font-extrabold uppercase tracking-tight">
            Our Mission
          </h2>
          <p class="mt-5 leading-relaxed">
            To provide high-quality, client-focused legal services by understanding
            our clients' needs, delivering strategic solutions, and upholding the
            highest standards of integrity, professionalism, and inclusivity.
          </p>
        </div>
      </div>
    </section>

    <!-- Pillars -->
    <section class="mx-auto max-w-4xl px-6 py-16">
      <div class="grid gap-8 sm:grid-cols-2">
        <div v-for="p in pillars" :key="p.title" class="border-brass border-t-2 pt-4">
          <h3 class="text-ink font-bold">{{ p.title }}</h3>
          <p class="text-slate-text mt-2 text-sm leading-relaxed">{{ p.body }}</p>
        </div>
      </div>
    </section>

    <!-- Transformation note (navy, centred) -->
    <section class="bg-ink text-paper py-16">
      <div class="mx-auto max-w-4xl px-6 text-center">
        <h2 class="font-display text-brass text-3xl font-extrabold uppercase tracking-tight md:text-4xl">
          Our Origins
        </h2>
        <p class="mt-6 leading-relaxed">
          From its humble beginnings in 2021 with a single Black director, Mongwane
          Attorneys has grown into a majority Black-owned firm — proud of our 100%
          Black and female legal team, and committed to empowerment, transformation,
          and inclusive legal excellence.
        </p>
      </div>
    </section>

    <!-- Directors (white, text left / photo right) -->
   <section class="overflow-hidden py-4 md:py-4">
      <div class="mx-auto max-w-6xl px-6">
           <div
             v-for="d in directors"
               :key="d.name"
               class="grid overflow-hidden md:grid-cols-2"
              >
              <!-- LEFT: Director photo -->
              <div class="relative min-h-[500px] bg-slate-100 md:min-h-[650px]">
               <img
                 :src="d.photo"
                 :alt="d.name"
                 class="absolute inset-0 h-full w-full object-cover object-center"
                />
             </div>
             <!-- RIGHT: Information panel -->
             <div  class="bg-ink flex flex-col justify-center px-8 py-12 text-white sm:px-12 md:px-14 lg:px-16">
               <!-- Gold decorative line -->
               <div class="mb-6 h-1 w-16 bg-[#C9A227]"></div>
               <!-- Section title -->
               <h2  class="font-display mb-8 text-4xl font-extrabold uppercase tracking-tight text-white md:text-5xl" >
                 Directors
               </h2>
               <!-- Director name -->
               <h3 class="font-display text-2xl font-bold leading-tight text-white md:text-3xl">
                 {{ d.name }}
               </h3>
               <!-- Role -->
               <p class="mt-2 text-sm font-semibold uppercase tracking-[0.15em] text-[#C9A227]" >
                  {{ d.role }}
               </p>
               <!-- Bio -->
               <p class="mt-6 max-w-xl text-base leading-8 text-white/90">
                  {{ d.bio }}
               </p>
               <!-- Bottom decorative line -->
               <div class="mt-10 h-px w-20 bg-[#C9A227]"></div>
             </div>
         </div>
       </div>
    </section>
  </main>
</template>