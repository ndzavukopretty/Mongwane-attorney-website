<script setup lang="ts">
import { ref } from 'vue'
import emailjs from '@emailjs/browser'

const emit = defineEmits<{ close: [] }>()

const name = ref('')
const email = ref('')
const phone = ref('')
const consultationType = ref('telephonic')
const date = ref('')
const time = ref('')
const message = ref('')

const status = ref<'idle' | 'sending' | 'sent' | 'error'>('idle')

// TODO: replace with your EmailJS values from the dashboard
const SERVICE_ID = 'service_xj6iquc'
const TEMPLATE_ID = 'template_14bglch'
const PUBLIC_KEY = 'BtLsWiDt282uwztaN'

async function handleSubmit() {
  status.value = 'sending'
  try {
    await emailjs.send(
      SERVICE_ID,
      TEMPLATE_ID,
      {
        name: name.value,
        email: email.value,
        phone: phone.value,
        consultation_type: consultationType.value,
        date: date.value,
        time: time.value,
        message: message.value,
      },
      { publicKey: PUBLIC_KEY },
    )
    status.value = 'sent'
  } catch (err) {
    console.error(err)
    status.value = 'error'
  }
}
</script>

<template>
  <div class="fixed inset-0 z-50 flex items-center justify-center bg-black/50 px-4">
    <div class="w-full max-w-md rounded bg-white p-6">
      <div class="flex items-center justify-between">
        <h2 class="font-display text-ink text-xl">Book a consultation</h2>
        <button class="text-slate-text hover:text-ink" @click="emit('close')">✕</button>
      </div>

      <form v-if="status !== 'sent'" class="mt-5 space-y-4" @submit.prevent="handleSubmit">
        <div>
          <label class="text-ink block text-sm font-medium">Name</label>
          <input
            v-model="name"
            type="text"
            required
            class="border-ink/20 focus:border-brass mt-1 w-full rounded border px-3 py-2 text-sm outline-none"
          />
        </div>

        <div>
          <label class="text-ink block text-sm font-medium">Email</label>
          <input
            v-model="email"
            type="email"
            required
            class="border-ink/20 focus:border-brass mt-1 w-full rounded border px-3 py-2 text-sm outline-none"
          />
        </div>

        <div>
          <label class="text-ink block text-sm font-medium">Phone</label>
          <input
            v-model="phone"
            type="tel"
            class="border-ink/20 focus:border-brass mt-1 w-full rounded border px-3 py-2 text-sm outline-none"
          />
        </div>

        <div>
          <span class="text-ink block text-sm font-medium">Consultation type</span>
          <div class="mt-2 flex gap-6 text-sm">
            <label class="flex items-center gap-2">
              <input v-model="consultationType" type="radio" value="telephonic" />
              Telephonic
            </label>
            <label class="flex items-center gap-2">
              <input v-model="consultationType" type="radio" value="physical" />
              Physical
            </label>
          </div>
        </div>

        <div class="grid grid-cols-2 gap-4">
          <div>
            <label class="text-ink block text-sm font-medium">Date</label>
            <input
              v-model="date"
              type="date"
              required
              class="border-ink/20 focus:border-brass mt-1 w-full rounded border px-3 py-2 text-sm outline-none"
            />
          </div>
          <div>
            <label class="text-ink block text-sm font-medium">Time</label>
            <input
              v-model="time"
              type="time"
              required
              class="border-ink/20 focus:border-brass mt-1 w-full rounded border px-3 py-2 text-sm outline-none"
            />
          </div>
        </div>

        <div>
          <label class="text-ink block text-sm font-medium">Message (optional)</label>
          <textarea
            v-model="message"
            rows="3"
            class="border-ink/20 focus:border-brass mt-1 w-full rounded border px-3 py-2 text-sm outline-none"
          ></textarea>
        </div>

        <p v-if="status === 'error'" class="text-sm text-red-600">
          Something went wrong sending your request. Please try again or call us directly.
        </p>

        <button
          type="submit"
          :disabled="status === 'sending'"
          class="bg-ink text-white w-full rounded px-6 py-3 text-sm font-medium hover:opacity-90 disabled:opacity-60"
        >
          {{ status === 'sending' ? 'Sending…' : 'Submit' }}
        </button>
      </form>

      <div v-else class="mt-5">
        <p class="text-ink font-medium">Thank you, {{ name }}.</p>
        <p class="text-slate-text mt-2 text-sm">
          Your consultation request has been sent. We'll confirm your
          {{ consultationType }} consultation on {{ date }} at {{ time }} shortly.
        </p>
        <button
          class="text-brass mt-4 text-sm hover:underline"
          @click="emit('close')"
        >
          Close
        </button>
      </div>
    </div>
  </div>
</template>