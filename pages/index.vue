<template>
  <div class="px-12">
    <main class="min-h-screen pb-12">
      <Heading :level="1" class="mb-12 text-center">Santiago Rodriguez</Heading>
      <div class="flex flex-col md:flex-row items-center">
        <div class="mt-8 md:mt-0 md:w-2/3 order-2 md:order-1">
          <p class="text-2xl">
            I am <br><br><strong>THE WEB DEVELOPER</strong><br><br> full of ideas that's
            eager to work on your projects.

            I have <br><br><strong>years of experience</strong><br><br> developing
            web solutions for the problems of the
            modern bussiness.

            If you want a web site/app that follows
            the rules of proper UI/UX and that
            gets deployed quickly, <br><br><strong>I'm the guy</strong>.
            
          </p>
        </div>
        <img :style="{ maxWidth: '210px' }" class="md:w-1/3 mx-auto order-1 md:order-2" src="~/assets/img/full-body-person.png"
          alt="Man looking forward">
      </div>
    </main>
    <section class="min-h-screen">
      <Heading :level="2" class="text-center mb-8">Toolset</Heading>
      <div class="md:flex items-start">
        <img class="md:mr-6 md:w-1/3" :style="{ maxWidth: 'min(612px, 100%)' }" src="~/assets/img/toolbox.png" alt="Toolbox">
        <div class="mt-4 md:mt-0 md:w-2/3">
          <p class="mb-8">I use the standard web technologies and a handful of frameworks. <strong>I'm always hungry
              for new knowledge</strong> to enhance the end result of the products I develop. Here is a
            searchable list of the things I have experience with.
          </p>
          <Tools />
        </div>
      </div>
    </section>
  </div>
</template>