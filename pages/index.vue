<script setup lang="ts">
definePageMeta({
  layout: false
})
</script>

<template>
  <main class="container mx-auto pt-12 px-6">
    <Heading :level="1" class="mb-12 text-center">Santiago Rodriguez</Heading>
    <div class="flex flex-col md:flex-row items-center">
      <div class="mt-8 md:mt-0 md:w-2/3 order-2 md:order-1">
        <p class="text-2xl">
          I am

          <br><br><strong>THE WEB DEVELOPER</strong><br><br>

          full of ideas that's eager to work on your projects.
          I have

          <br><br><strong>years of experience</strong><br><br>

          developing web solutions for the problems of the
          modern bussiness. If you want a web site/app that follows
          the rules of proper UI/UX and that
          gets deployed quickly, I'm

          <br><br><span class="underline"><em><strong>the developer you need</strong></em>.</span>
        </p>
      </div>
      <img :style="{ maxWidth: '210px' }" class="md:w-1/3 mx-auto order-1 md:order-2"
        src="~/assets/img/full-body-person.png" alt="Man looking forward">
    </div>
    <div class="mt-14">
      <p class="mb-4 italic font-light">Please go ahead and take a look to my...</p>
      <AppLink href="/toolset" class="text-xl mr-3">Toolset</AppLink>
      <AppLink href="/projects" class="text-xl">Projects</AppLink>
    </div>
  </main>

  <footer class="py-16">
    <p class="text-center mb-4 italic font-light">Also, feel free to visit my profile in...</p>
    <ul class="flex place-content-center gap-8">
      <li class="flex place-items-center"><img src="~/assets/icons/github.png" width="24"></li>
      <li class="flex place-items-center"><img src="~/assets/icons/linkedin.png" width="24"></li>
      <li class="flex place-items-center"><img src="~/assets/icons/x.png" width="24"></li>
    </ul>
  </footer>
</template>