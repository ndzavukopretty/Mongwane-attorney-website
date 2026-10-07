warning: in the working copy of 'src/views/AboutView.vue', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/src/views/AboutView.vue b/src/views/AboutView.vue[m
[1mindex 1c6aa3e..2c0d6d4 100644[m
[1m--- a/src/views/AboutView.vue[m
[1m+++ b/src/views/AboutView.vue[m
[36m@@ -1,5 +1,5 @@[m
 <script setup lang="ts">[m
[31m-import akaniPhoto from '../assets/images/Akani.jpeg'[m
[32m+[m[32mimport akaniPhoto from '../assets/images/Akani2.jpeg'[m
 import visionImage from '../assets/images/vision.jpg'[m
 import missionImage from '../assets/images/mission.jpg'[m
 // Optional images: import yours and assign them here, e.g.[m
[36m@@ -133,30 +133,46 @@[m [mconst directors = [[m
     </section>[m
 [m
     <!-- Directors (white, text left / photo right) -->[m
[31m-    <section class="overflow-hidden py-4">[m
[32m+[m[32m   <section class="overflow-hidden py-4 md:py-4">[m
       <div class="mx-auto max-w-6xl px-6">[m
[31m-        <h2 class="font-display text-brass text-4xl font-extrabold uppercase tracking-tight">[m
[31m-          Directors[m
[31m-        </h2>[m
[31m-        <div[m
[31m-          v-for="d in directors"[m
[31m-          :key="d.name"[m
[31m-          class="mt-1 grid items-center gap-10 md:grid-cols-2"[m
[31m-        >[m
[31m-          <div>[m
[31m-            <h3 class="font-display text-ink text-2xl font-bold">{{ d.name }}</h3>[m
[31m-            <p class="text-brass mt-1 text-sm font-semibold uppercase tracking-wide">{{ d.role }}</p>[m
[31m-            <p class="text-ink mt-4 font-semibold leading-relaxed">{{ d.bio }}</p>[m
[31m-          </div>[m
[31m-        <div class="mx-auto w-full max-w-sm overflow-hidden rounded-tl-[8rem] bg-slate-100">[m
[31m-  <img[m
[31m-    :src="d.photo"[m
[31m-    :alt="d.name"[m
[31m-    class="block h-auto w-full object-contain"[m
[31m-  />[m
[31m-</div>[m
[31m-        </div>[m
[31m-      </div>[m
[32m+[m[32m           <div[m
[32m+[m[32m             v-for="d in directors"[m
[32m+[m[32m               :key="d.name"[m
[32m+[m[32m               class="grid overflow-hidden md:grid-cols-2"[m
[32m+[m[32m              >[m
[32m+[m[32m              <!-- LEFT: Director photo -->[m
[32m+[m[32m              <div class="relative min-h-[500px] bg-slate-100 md:min-h-[650px]">[m
[32m+[m[32m               <img[m
[32m+[m[32m                 :src="d.photo"[m
[32m+[m[32m                 :alt="d.name"[m
[32m+[m[32m                 class="absolute inset-0 h-full w-full object-cover object-center"[m
[32m+[m[32m                />[m
[32m+[m[32m             </div>[m
[32m+[m[32m             <!-- RIGHT: Information panel -->[m
[32m+[m[32m             <div  class="bg-ink flex flex-col justify-center px-8 py-12 text-white sm:px-12 md:px-14 lg:px-16">[m
[32m+[m[32m               <!-- Gold decorative line -->[m
[32m+[m[32m               <div class="mb-6 h-1 w-16 bg-[#C9A227]"></div>[m
[32m+[m[32m               <!-- Section title -->[m
[32m+[m[32m               <h2  class="font-display mb-8 text-4xl font-extrabold uppercase tracking-tight text-white md:text-5xl" >[m
[32m+[m[32m                 Directors[m
[32m+[m[32m               </h2>[m
[32m+[m[32m               <!-- Director name -->[m
[32m+[m[32m               <h3 class="font-display text-2xl font-bold leading-tight text-white md:text-3xl">[m
[32m+[m[32m                 {{ d.name }}[m
[32m+[m[32m               </h3>[m
[32m+[m[32m               <!-- Role -->[m
[32m+[m[32m               <p class="mt-2 text-sm font-semibold uppercase tracking-[0.15em] text-[#C9A227]" >[m
[32m+[m[32m                  {{ d.role }}[m
[32m+[m[32m               </p>[m
[32m+[m[32m               <!-- Bio -->[m
[32m+[m[32m               <p class="mt-6 max-w-xl text-base leading-8 text-white/90">[m
[32m+[m[32m                  {{ d.bio }}[m
[32m+[m[32m               </p>[m
[32m+[m[32m               <!-- Bottom decorative line -->[m
[32m+[m[32m               <div class="mt-10 h-px w-20 bg-[#C9A227]"></div>[m
[32m+[m[32m             </div>[m
[32m+[m[32m         </div>[m
[32m+[m[32m       </div>[m
     </section>[m
   </main>[m
 </template>[m
\ No newline at end of file[m
