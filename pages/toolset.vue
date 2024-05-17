<script setup lang="ts">
</script>

<template>
  <div>
    <Heading :level="1" class="mb-8">Toolset</Heading>
    <div class="md:flex items-start">
      <div class="mt-4 md:mt-0 md:w-2/3">
        <p class="mb-8">I use the standard web technologies and a handful of frameworks. <strong>I'm always hungry
            for new knowledge</strong> to enhance the end result of the products I develop. Here is a
          searchable list of the things I have experience with.
        </p>
        <Tools />
      </div>
      <img class="hidden md:block md:mr-6 md:w-1/3" :style="{ maxWidth: 'min(612px, 100%)' }" src="~/assets/img/toolbox.png"
        alt="Toolbox">
    </div>
  </div>
</template>