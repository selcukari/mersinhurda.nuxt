<template>
  <div class="min-h-screen flex flex-col justify-between">
    <NuxtRouteAnnouncer />

    <!-- Sayfa İçerikleri -->
    <main class="flex-grow">
      <NuxtPage />
      <PhoneButton />
    </main>

    <!-- Footer Bileşeni -->
    <AppFooter />
  </div>
</template>