<template>
  <header class="px-6 py-4 flex place-items-baseline flex-wrap">
    <div class="font-bold font-mono text-3xl">Santiago Rodriguez</div>
    <div class="font-light italic sm:ml-4 underline">The developer you need.</div>
    <nav class="sm:p-3 drop-shadow-lg sm:ml-16 mt-4">
      <ul class="text-center flex text-xl flex-wrap gap-3">
        <li>
          <AppLink href="/">Home</AppLink>
        </li>
        <li>
          <AppLink href="/toolset">Toolset</AppLink>
        </li>
        <li>
          <AppLink href="/projects">Projects</AppLink>
        </li>
      </ul>
    </nav>
  </header>

  <main class="container mx-auto mt-6 px-6">
    <slot></slot>
  </main>

  <footer class="py-16 mt-8">
    <p class="text-center mb-4 italic font-light">Feel free to visit my profile in...</p>
    <ul class="flex place-content-center gap-8">
      <li class="flex place-items-center"><img src="~/assets/icons/github.png" width="24"></li>
      <li class="flex place-items-center"><img src="~/assets/icons/linkedin.png" width="24"></li>
      <li class="flex place-items-center"><img src="~/assets/icons/x.png" width="24"></li>
    </ul>
  </footer>
</template>