<script setup lang="ts">
const route = useRoute()

const { data: page } = await useAsyncData('page-' + route.path, () => {
  return queryCollection('content').path(route.path).first()
})

if (!page.value) {
  throw createError({ statusCode: 404, statusMessage: 'Sayfa bulunamadı', fatal: true })
}

onMounted(() => {
  setTimeout(() => {
    navigateTo('/', { replace: true });
  }, 2000);
});

</script>

<template>
  <ContentRenderer
    v-if="page"
    :value="page"
  />
</template>