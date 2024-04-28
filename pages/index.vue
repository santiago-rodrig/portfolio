<template>
  <div class="px-16">
    <main>
      <Heading :level="1" class="mb-12 text-center">Santiago Rodriguez</Heading>
      <div class="md:flex items-start">
        <img :style="{ maxWidth: '210px' }" class="md:w-1/3" src="~/assets/img/full-body-person.png"
          alt="Man looking forward">
        <div class="mt-8 md:mt-0 md:w-2/3">
          <p class="mb-6 text-xl">
            I am <strong>THE WEB DEVELOPER</strong> full of ideas that's
            eager to work on your projects.
          </p>
          <p class="mb-6 text-xl">
            If you want a web site/app that follows
            the rules of proper UI/UX and that
            gets deployed quickly, <strong>I'm the guy</strong>.
          </p>
          <p class="text-xl">
            I have <strong>years of experience</strong> developing
            web solutions for the problems of the
            modern bussiness.
          </p>
        </div>
      </div>
    </main>
    <section class="mt-16">
      <Heading :level="2" class="text-center mb-8">Toolset</Heading>
      <div class="md:flex items-start">
        <img class="md:mr-6 md:w-1/3" :style="{ maxWidth: '612px' }" src="~/assets/img/toolbox.png" alt="Toolbox">
        <div class="mt-8 md:mt-0 md:w-2/3">
          <p class="mb-4">I use the standard web technologies and a handful of frameworks. I'm always hungry
            to learn new tools to enhance the end result of the products I develop. Here is a
            searchable list of the things I have experience with.
          </p>
          <Tools />
        </div>
      </div>
    </section>
  </div>
</template>