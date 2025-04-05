/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./app/views/**/*.{html,html.erb,erb}",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.{js,jsx,ts,tsx}",
    "./app/components/**/*.{rb,erb,html,html.erb}",
    "./app/assets/builds/*.js"
  ],
  safelist: [
    'bg-green-500',
    'text-white',
    'p-4',
    'rounded-lg',
    'shadow',
    'bg-white',
    'p-8',
    'shadow-xl',
    'max-w-sm',
    'mx-auto',
    'mt-10',
    'text-2xl',
    'font-bold',
    'text-gray-900',
    'mb-2',
    'text-gray-600',
    'bg-blue-500', 'text-white', 'p-4', 'rounded-lg', 'mt-4',
    'max-w-2xl', 'mx-4', 'sm:max-w-sm', 'md:max-w-sm', 'lg:max-w-sm', 'xl:max-w-sm',
    'sm:mx-auto', 'md:mx-auto', 'lg:mx-auto', 'xl:mx-auto', 'mt-16', 'bg-white',
    'shadow-xl', 'text-gray-900', 'rounded-t-lg', 'h-32', 'overflow-hidden',
    'object-cover', 'object-top', 'w-full', 'mx-auto', 'w-32', 'h-32', 'relative',
    '-mt-16', 'border-4', 'border-white', 'rounded-full', 'object-center',
    'text-center', 'mt-2', 'font-semibold', 'text-gray-500', 'py-4', 'text-gray-700',
    'flex', 'items-center', 'justify-around', 'flex-col', 'fill-current',
    'text-blue-900', 'p-4', 'border-t', 'mx-8', 'w-1/2', 'block', 'hover:shadow-lg',
    'font-semibold', 'px-6', 'py-2'
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography')
  ],
  corePlugins: {
    preflight: true
  }
}
