<template>
  <main class="page-container">
    <!-- HEADER / HERO SECTION -->
    <section class="hero-section">
      <div class="container">
        <div class="hero-grid">
          <div class="hero-content">
            <h2 class="subtitle">Arı Hurdacılık Ltd. Şti.</h2>
            <h1 class="title">Mersin Hurdacı ve İkinci El Malzeme Alımı</h1>
            <p class="description">
              Bakır, alüminyum, demir, inşaat malzemeleri ve hurdalarınızı adresinizden nakit ödeme ile teslim alıyoruz.
            </p>
            <div class="button-group">
              <a href="tel:+905335907468" class="btn btn-primary">Fiyat Teklifi Al</a>
              <a href="#hizmetler" class="btn btn-outline">Hizmetlerimiz</a>
            </div>
          </div>
          
          <div class="hero-image-wrapper">
            <img 
              src="/mersinhurda.png" 
              alt="Hurdacılık ve Geri Dönüşüm" 
              class="hero-image"
              @error="onImageError"
            />
          </div>
        </div>
      </div>
    </section>

    <!-- HİZMETLERİMİZ SECTION -->
    <section id="hizmetler" class="services-section container">
      <h2 class="section-title">Neler Alıyoruz?</h2>

      <div class="cards-grid">
        <div v-for="(item, index) in malzemeler" :key="index" class="card">
          <div class="card-image-wrapper">
            <img :src="item.image" :alt="item.title" class="card-image" />
          </div>
          <div class="card-body">
            <h3 class="card-title">{{ item.title }}</h3>
            <p class="card-text">{{ item.description }}</p>
          </div>
        </div>
      </div>

      <h2 class="section-title mt-xl">Mersin İlçelerimiz</h2>
      
      <div class="districts-grid">
        <NuxtLink to="/merkez" class="card district-card">
          <h3>Merkez Hurda</h3>
          <p>İnşaat demiri, profil, sanayi hurdası ve tüm demir çeşitleri değerinde alınır.</p>
        </NuxtLink>

        <NuxtLink to="/akdeniz" class="card district-card">
          <h3>Akdeniz Hurda</h3>
          <p>İnşaat demiri, profil, sanayi hurdası ve tüm demir çeşitleri değerinde alınır.</p>
        </NuxtLink>

        <NuxtLink to="/mezitli" class="card district-card">
          <h3>Mezitli Hurda</h3>
          <p>Soyma bakır, lama bakır, yanık bakır ve tüm bakır hurdaları yüksek fiyatlarla alınmaktadır.</p>
        </NuxtLink>

        <NuxtLink to="/toroslar" class="card district-card">
          <h3>Toroslar Hurda</h3>
          <p>Alüminyum profil, doğrama, jant ve sanayi hurdaları alınır.</p>
        </NuxtLink>

        <NuxtLink to="/tarsus" class="card district-card">
          <h3>Tarsus Hurda</h3>
          <p>İnşaat demiri, profil, sanayi hurdası ve tüm demir çeşitleri değerinde alınır.</p>
        </NuxtLink>

        <NuxtLink to="/yenisehir" class="card district-card">
          <h3>Yenişehir Hurda</h3>
          <p>Soyma bakır, lama bakır, yanık bakır ve tüm bakır hurdaları yüksek fiyatlarla alınmaktadır.</p>
        </NuxtLink>

        <NuxtLink to="/silifke" class="card district-card">
          <h3>Silifke Hurda</h3>
          <p>Soyma bakır, lama bakır, yanık bakır ve tüm bakır hurdaları yüksek fiyatlarla alınmaktadır.</p>
        </NuxtLink>

        <NuxtLink to="/mut" class="card district-card">
          <h3>Mut Hurda</h3>
          <p>Soyma bakır, lama bakır, yanık bakır ve tüm bakır hurdaları yüksek fiyatlarla alınmaktadır.</p>
        </NuxtLink>
      </div>

      <!-- BİLGİLENDİRME KARTI -->
      <div class="info-card">
        <h3>Adresten Nakit Teslimat!</h3>
        <p>
          Satmak istediğiniz malzemelerin fotoğraflarını bize WhatsApp üzerinden göndererek hızlıca fiyat teklifi alabilirsiniz. Mersin'in tüm bölgelerine aracımızla geliyoruz.
        </p>
      </div>
    </section>
  </main>
</template>

<script setup>
// 1. DİNAMİK/GELİŞMİŞ SEO META ETİKETLERİ
useSeoMeta({
  title: 'Mersin Hurdacı | Mersin Hurda Fiyatları, Mersin Hurdacı, Hurda Demir, Bakır ve İkinci El Malzeme Alımı',
  description: 'Mersin ilçesinde hurda demir, bakır, alüminyum, sarı, kablo ve ikinci el malzemelerinizi değerinde satın alıyoruz. Adresten alım ve nakit ödeme hizmeti.',
  keywords: 'Mersin hurdacı, Mersin hurda alımı, Mersin hurda fiyatları, Mersin Hurdacı, bakır hurdası, demir hurdası, alüminyum hurdası',
  // Social Media / Open Graph Meta Tags
  ogTitle: 'Mersin Hurdacı | Güvenilir Hurda Alım Hizmeti',
  ogDescription: 'Mersin ve çevresinde her türlü hurda ve ikinci el malzeme alımı yapılmaktadır. En yüksek fiyat garantisi ve adreste nakit ödeme.',
  ogType: 'website',
  ogLocale: 'tr_TR',
  // Twitter Card Meta
  twitterCard: 'summary_large_image',
  twitterTitle: 'Mersin Hurdacı | En Yüksek Fiyat Garantisi',
  twitterDescription: 'Mersin hurda alımı, bakır, demir, kablo hurdası değerinde nakit alınır.',
})

// 2. GOOGLE ARAMA MOTORLARI İÇİN JSON-LD SCHEMA (Structured Data / Yerel İşletme Yapısı)
useHead({
  htmlAttrs: {
    lang: 'tr'
  },
  link: [
    { rel: 'canonical', href: 'https://www.arihurdacilik.com/mersin' }
  ],
  script: [
    {
      type: 'application/ld+json',
      children: JSON.stringify({
        '@context': 'https://schema.org',
        '@type': 'LocalBusiness',
        'name': 'Arı Hurdacılık - Mersin Hurdacı',
        'description': `Mersin ilçesinde hurda demir, bakır, alüminyum ve kablo alımı yapan güvenilir hurdacı. Mersin ve çevresinde hurda alımı yapılmaktadır.
        En yüksek fiyat garantisi ve adreste nakit ödeme. Mersin hurdacı, Mersin hurda alımı, Mersin hurda fiyatları, Mersin Hurdacı, bakır hurdası, demir hurdası, alüminyum hurdası`,
        'telephone': '+905335907468',
        'address': {
          '@type': 'PostalAddress',
          'addressLocality': 'Toroslar',
          'addressRegion': 'Mersin',
          'addressCountry': 'TR'
        },
        'priceRange': '₺₺',
        'areaServed': ['Toroslar', 'Mersin']
      })
    }
  ]
})
const malzemeler = [
  {
    title: "Metal Hurda Mersin",
    description: "Bakır, alüminyum, sarı, demir, çinko ve kablo hurdalarınız güncel borsa fiyatından değerinde nakit alınır.",
    image: "/demir-hurdasi.jpeg"
  },
  {
    title: "Bakır Hurda Mersin",
    description: "Elektrik kabloları, bakır borular, radyatörler ve diğer bakır hurdalarınız adresinizden nakit ödeme ile alınır.",
    image: "/bakir.jpeg"
  },
  {
    title: "Kablo Hurda Mersin",
    description: "Elektrik, telefon, fiber optik ve diğer kablo hurdalarınız güncel fiyatlarla değerinde alınır.",
    image: "/kablo.jpg"
  }
]

// Mantine fallbackSrc karşılığı (Görsel yüklenemezse çalışır)
const onImageError = (e) => {
  e.target.src = 'https://placehold.co/600x400?text=Hurdaci'
}
</script>

<style scoped>
/* Genel Konfigürasyon */
.page-container {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  background-color: #f8f9fa; /* gray.0 */
  color: #212529;
  font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

.container {
  width: 100%;
  max-width: 1140px;
  margin-left: auto;
  margin-right: auto;
  padding-left: 16px;
  padding-right: 16px;
}

/* Hero Section */
.hero-section {
  background-color: #141517; /* dark.7 */
  color: #ffffff;
  padding-top: 48px;
  padding-bottom: 48px;
}

.hero-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 32px;
  align-items: center;
}

@media (min-width: 768px) {
  .hero-grid {
    grid-template-columns: 7fr 5fr;
  }
}

.hero-content {
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.hero-content .subtitle {
  font-size: 1.5rem;
  font-weight: 900;
  line-height: 1.2;
  margin: 0;
}

.hero-content .title {
  font-size: 2.25rem;
  font-weight: 900;
  line-height: 1.2;
  margin: 0;
}

.hero-content .description {
  font-size: 1.125rem;
  color: #ced4da; /* gray.4 */
  margin: 0;
}

.button-group {
  display: flex;
  gap: 12px;
  margin-top: 16px;
  flex-wrap: wrap;
}

.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 12px 24px;
  border-radius: 8px;
  font-weight: 700;
  font-size: 1.125rem;
  text-decoration: none;
  transition: background-color 0.2s, color 0.2s;
  cursor: pointer;
}

.btn-primary {
  background-color: #fcc419; /* yellow */
  color: #141517; /* dark.7 */
  border: none;
}

.btn-primary:hover {
  background-color: #fab005;
}

.btn-outline {
  background-color: transparent;
  color: #868e96;
  border: 1px solid #868e96;
}

.btn-outline:hover {
  background-color: rgba(255, 255, 255, 0.05);
  color: #ffffff;
}

.hero-image-wrapper {
  width: 100%;
  aspect-ratio: 16 / 9; /* Veya 4/3 gibi istediğiniz bir oran */
  overflow: hidden;
}

.hero-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 8px;
  display: block;
}

/* Content & Services Section */
.services-section {
  padding-top: 50px;
  padding-bottom: 50px;
  flex: 1;
}

.section-title {
  text-align: center;
  font-size: 1.75rem;
  font-weight: 800;
  margin-top: 0;
  margin-bottom: 32px;
}

.mt-xl {
  margin-top: 48px;
}

/* Grids */
.cards-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 24px;
}

@media (min-width: 576px) {
  .cards-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (min-width: 768px) {
  .cards-grid {
    grid-template-columns: repeat(3, 1fr);
  }
}

.districts-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 16px;
}

@media (min-width: 768px) {
  .districts-grid {
    grid-template-columns: repeat(3, 1fr);
  }
}

/* Cards */
.card {
  background-color: #ffffff;
  border: 1px solid #dee2e6;
  border-radius: 8px;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
  overflow: hidden;
  display: flex;
  flex-direction: column;
}

.card-image-wrapper {
  width: 100%;
  height: 180px;
  overflow: hidden;
}

.card-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.card-body {
  padding: 16px;
  display: flex;
  flex-direction: column;
  flex: 1;
}

.card-title {
  font-size: 1.125rem;
  font-weight: 700;
  margin: 0 0 12px 0;
}

.card-text {
  font-size: 0.875rem;
  color: #868e96; /* dimmed */
  margin: 0;
}

/* District Card */
.district-card {
  padding: 16px;
  text-decoration: none;
  color: inherit;
  transition: transform 0.15s ease, box-shadow 0.15s ease;
}

.district-card:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

.district-card h3 {
  margin: 0;
  font-size: 1.25rem;
}

.district-card p {
  margin-top: 8px;
  margin-bottom: 0;
  font-size: 0.95rem;
  color: #495057;
}

/* Info Card */
.info-card {
  margin-top: 50px;
  padding: 32px;
  background-color: #fff9db; /* yellow.1 */
  border: 1px solid #ffe066; /* yellow-4 */
  border-radius: 16px;
  text-align: center;
}

.info-card h3 {
  margin: 0 0 8px 0;
  color: #141517;
  font-size: 1.25rem;
}

.info-card p {
  margin: 0;
  color: #343a40; /* gray.8 */
  font-size: 1rem;
  line-height: 1.5;
}
</style>