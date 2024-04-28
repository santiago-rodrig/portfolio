<script setup lang="ts">
const items = ref([
  'HTML',
  'CSS',
  'JavaScript',
  'TypeScript',
  'Go',
  'Tailwind',
  'React',
  'Vue',
  'Next',
  'Nuxt',
  'Redux',
  'Pinia',
  'Ruby on Rails',
  'PostgreSQL',
  'MongoDB',
  'AWS',
  'Docker',
  'Kubernetes',
  'C#',
  'Kotlin',
  'Express',
  'Fastify',
])

const normalizedItems = computed(() => {
  return items.value.map(normalizeText)
})

const search = ref('')

const normalizedSearch = computed(() => {
  return normalizeText(search.value)
})

const filteredItems = computed(() => {
  if (normalizedSearch.value === '') return items.value
  return items.value.filter((_, idx) => normalizedItems.value[idx].includes(normalizedSearch.value))
})
</script>

<template>
  <div class="relative">
    <img src="~/assets/icons/search.svg" alt="Magnifying glass" width="20"
      class="absolute top-1/2 -translate-y-1/2 left-2">
    <input id="tool-search" v-model="search" type="text"
      class="border border-slate-400 rounded block mb-4 focus:outline-none p-2 pl-8 ring-red-500 focus:outline-sky-500 focus:outline-offset-0">
  </div>
  <TransitionGroup name="tools" tag="ul" class="flex items-start flex-wrap gap-2" mode="out-in">
    <li class="font-mono px-1 rounded font-bold bg-black text-white" v-for="item of filteredItems" :key="item">
      {{ item }}
    </li>
  </TransitionGroup>
</template>

<style scoped>
.tools-move,
.tools-enter-active,
.tools-leave-active {
  transition: all 0.5s ease;
}

.tools-leave-active {
  position: absolute;
}

.tools-enter-from,
.tools-leave-to {
  opacity: 0;
}
</style>