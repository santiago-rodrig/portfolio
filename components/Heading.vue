<script setup lang="ts">
interface Props {
  level: 1 | 2
}

const props = defineProps<Props>()

const attrs = useAttrs()

const cssClass = [{
  'text-6xl': props.level === 1,
  'text-5xl': props.level === 2,
}, 'text-bold', attrs.class]
</script>

<template>
  <h1 v-if="level === 1" :class="cssClass"><slot></slot></h1>
  <h2 v-if="level === 2" :class="cssClass"><slot></slot></h2>
</template>