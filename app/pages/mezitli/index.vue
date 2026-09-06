<template>
  <!-- Semantik main ve article etiketleri SEO için kritiktir -->
  <main class="page-container">
    <article class="container">
      <header class="hero-header">
        <h1 class="page-title">
          Mezitli Hurdacı ve Hurda Alım Hizmetleri
        </h1>
        <p class="lead-text">
          <strong>Mezitli ilçesinde</strong> hurda demir, bakır, alüminyum, sarı, kablo, paslanmaz ve ikinci el malzemelerinizi piyasa değerinde satın alıyoruz. Adresinizden alım yapıyor ve yerinde nakit ödeme sağlıyoruz.
        </p>
      </header>

      <!-- HİZMETLER GRID -->
      <section aria-labelledby="hizmetler-title" class="section-block">
        <h2 id="hizmetler-title" class="sr-only">Mezitli Hurda Alım Kategorileri</h2>
        <div class="cards-grid">
          <div class="card">
            <h3 class="card-title">Hurda Demir Alımı</h3>
            <p class="card-text">
              İnşaat demiri, profil, sanayi hurdası ve tüm demir çeşitleri değerinde alınır.
            </p>
          </div>

          <div class="card">
            <h3 class="card-title">Bakır Hurda Alımı</h3>
            <p class="card-text">
              Soyma bakır, lama bakır, yanık bakır ve tüm bakır hurdaları yüksek fiyatlarla alınmaktadır.
            </p>
          </div>

          <div class="card">
            <h3 class="card-title">Alüminyum Hurda Alımı</h3>
            <p class="card-text">
              Alüminyum profil, doğrama, jant ve sanayi hurdaları alınır.
            </p>
          </div>
        </div>
      </section>

      <!-- NEDEN BİZ -->
      <section class="card border-card mt-xl">
        <h2 class="section-title">Neden Bizi Tercih Etmelisiniz?</h2>
        <ul class="feature-list">
          <li>Adresten ücretsiz hurda alımı</li>
          <li>Aynı gün nakit ödeme</li>
          <li>Güncel borsa hurda fiyatları</li>
          <li>Profesyonel ekip ve araç desteği</li>
          <li>Kurumsal ve bireysel geri dönüşüm çözümleri</li>
        </ul>
      </section>

      <!-- MAHALLELER SECTION -->
      <section class="card bg-gray mt-lg">
        <h2 class="section-title">Mezitli İlçesinde Hurda Alımı Yapılan Mahalleler</h2>
        <p class="card-text body-text">
          Çilek, Hal, Karaduvar, Kazanlı, Nusratiye, Bahçe, Barış, Yeni Mahalle ve Mezitli ilçesinin tüm mahallelerinde adresinize kadar gelerek hizmet vermekteyiz.
        </p>
      </section>

      <!-- CALL TO ACTION (CTA) -->
      <section class="card border-card cta-card mt-lg">
        <h2 class="section-title">Hemen Fiyat Teklifi Alın</h2>
        <p class="card-text mb-md">
          Hurda satışınız için fotoğraf gönderin veya bizi hemen arayın. Güncel fiyat teklifimizi dakikalar içinde iletelim.
        </p>
        <a href="tel:+905335907468" class="btn btn-primary" title="Mezitli Hurdacı Telefon Numarası">
          📞 Bizi Arayın: Mersin Hurda
        </a>
      </section>
    </article>
  </main>
</template>

<script setup>
// 1. DİNAMİK/GELİŞMİŞ SEO META ETİKETLERİ
useSeoMeta({
  title: 'Mezitli Hurdacı | Hurda Demir, Bakır ve İkinci El Malzeme Alımı',
  description: 'Mezitli ilçesinde hurda demir, bakır, alüminyum, sarı, kablo ve ikinci el malzemelerinizi değerinde satın alıyoruz. Adresten alım ve nakit ödeme hizmeti.',
  keywords: 'Mezitli hurdacı, Mezitli hurda alımı, Mezitli hurda fiyatları, Mersin Mezitli hurdacı, bakır hurdası, demir hurdası, alüminyum hurdası',
  // Social Media / Open Graph Meta Tags
  ogTitle: 'Mezitli Hurdacı | Güvenilir Hurda Alım Hizmeti',
  ogDescription: 'Mezitli ve çevresinde her türlü hurda ve ikinci el malzeme alımı yapılmaktadır. En yüksek fiyat garantisi ve adreste nakit ödeme.',
  ogType: 'website',
  ogLocale: 'tr_TR',
  // Twitter Card Meta
  twitterCard: 'summary_large_image',
  twitterTitle: 'Mezitli Hurdacı | En Yüksek Fiyat Garantisi',
  twitterDescription: 'Mezitli hurda alımı, bakır, demir, kablo hurdası değerinde nakit alınır.',
})

// 2. GOOGLE ARAMA MOTORLARI İÇİN JSON-LD SCHEMA (Structured Data / Yerel İşletme Yapısı)
useHead({
  htmlAttrs: {
    lang: 'tr'
  },
  link: [
    { rel: 'canonical', href: 'https://www.arihurdacilik.com/Mezitli' }
  ],
  script: [
    {
      type: 'application/ld+json',
      children: JSON.stringify({
        '@context': 'https://schema.org',
        '@type': 'LocalBusiness',
        'name': 'Arı Hurdacılık - Mezitli Hurdacı',
        'description': 'Mezitli ilçesinde hurda demir, bakır, alüminyum ve kablo alımı yapan güvenilir hurdacı.',
        'telephone': '+905335907468',
        'address': {
          '@type': 'PostalAddress',
          'addressLocality': 'Mezitli',
          'addressRegion': 'Mersin',
          'addressCountry': 'TR'
        },
        'priceRange': '₺₺',
        'areaServed': ['Mezitli', 'Mersin']
      })
    }
  ]
})
</script>

<style scoped>
.page-container {
  min-height: 100vh;
  background-color: #ffffff;
  padding-top: 40px;
  padding-bottom: 60px;
  color: #212529;
  font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

.container {
  max-width: 960px;
  margin-left: auto;
  margin-right: auto;
  padding-left: 16px;
  padding-right: 16px;
}

/* Header & Typography */
.hero-header {
  margin-bottom: 32px;
}

.page-title {
  font-size: 2.25rem;
  font-weight: 800;
  color: #141517;
  margin-bottom: 16px;
  line-height: 1.2;
}

.lead-text {
  font-size: 1.15rem;
  line-height: 1.6;
  color: #495057;
}

/* Cards & Layout */
.cards-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 20px;
}

@media (min-width: 768px) {
  .cards-grid {
    grid-template-columns: repeat(3, 1fr);
  }
}

.card {
  padding: 24px;
  border-radius: 8px;
  background-color: #ffffff;
}

.border-card {
  border: 1px solid #dee2e6;
  box-shadow: 0 1px 3px rgba(0,0,0,0.05);
}

.bg-gray {
  background-color: #f8f9fa;
  border: 1px solid #e9ecef;
}

.card-title {
  font-size: 1.25rem;
  font-weight: 700;
  margin-top: 0;
  margin-bottom: 12px;
  color: #141517;
}

.section-title {
  font-size: 1.5rem;
  font-weight: 700;
  margin-top: 0;
  margin-bottom: 16px;
  color: #141517;
}

.card-text {
  margin: 0;
  font-size: 1rem;
  color: #495057;
  line-height: 1.5;
}

/* Feature List */
.feature-list {
  padding-left: 20px;
  margin: 0;
}

.feature-list li {
  font-size: 1.05rem;
  color: #343a40;
  margin-bottom: 10px;
  line-height: 1.4;
}

/* CTA Section */
.cta-card {
  text-align: center;
  background-color: #fff9db;
  border: 1px solid #ffe066;
}

.btn {
  display: inline-block;
  padding: 12px 28px;
  border-radius: 8px;
  font-weight: 700;
  font-size: 1.1rem;
  text-decoration: none;
  transition: background-color 0.2s;
}

.btn-primary {
  background-color: #fcc419;
  color: #141517;
}

.btn-primary:hover {
  background-color: #fab005;
}

/* Spacing Helpers */
.mt-lg { margin-top: 24px; }
.mt-xl { margin-top: 32px; }
.mb-md { margin-bottom: 16px; }

/* SEO accessibility class */
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
</style>