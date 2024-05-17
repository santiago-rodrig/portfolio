<script setup lang="ts">
defineProps<{
  href?: string
}>()
</script>

<template>
  <NuxtLink
    :to="href"
    class="text-black font-mono hover:text-sky-600"
    active-class="hover:cursor-default !text-sky-600">
    [<slot></slot>]
  </NuxtLink>
</template>
