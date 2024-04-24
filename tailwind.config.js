/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./components/**/*.{js,vue,ts}",
    "./layouts/**/*.vue",
    "./pages/**/*.vue",
    "./plugins/**/*.{js,ts}",
    "./app.vue",
    "./error.vue",
  ],
  theme: {
    fontFamily: {
      sans: ['Red Hat Display', 'sans-serif'],
      mono: ['Kode Mono', 'monospace'],
    },
    extend: {},
  },
  plugins: [],
}

