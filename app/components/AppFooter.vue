<template>
  <footer class="site-footer">
    <div class="footer-container">
      <div class="footer-grid">
        
        <!-- Marka / Açıklama -->
        <div class="footer-brand">
          <NuxtLink to="/" class="logo">
            Marka<span>.</span>
          </NuxtLink>
          <p>
            Nuxt 4 ile oluşturulmuş, performanslı ve modern web çözümleri.
          </p>
        </div>

        <!-- Hızlı Bağlantılar -->
        <div class="footer-column">
          <h3>Ürünler</h3>
          <ul>
            <li><NuxtLink to="/">Özellikler</NuxtLink></li>
            <li><NuxtLink to="/">Fiyatlandırma</NuxtLink></li>
            <li><NuxtLink to="/">Rehber</NuxtLink></li>
          </ul>
        </div>

        <!-- Şirket -->
        <div class="footer-column">
          <h3>Şirket</h3>
          <ul>
            <li><NuxtLink to="/">Hakkımızda</NuxtLink></li>
            <li><NuxtLink to="/">Blog</NuxtLink></li>
            <li><NuxtLink to="/">İletişim</NuxtLink></li>
          </ul>
        </div>

        <!-- Yasal -->
        <div class="footer-column">
          <h3>Yasal</h3>
          <ul>
            <li><NuxtLink to="/">Gizlilik Politikası</NuxtLink></li>
            <li><NuxtLink to="/">Kullanım Koşulları</NuxtLink></li>
          </ul>
        </div>

      </div>

      <!-- Alt Telif Alanı -->
      <div class="footer-bottom">
        <p>&copy; {{ currentYear }} Şirket Adı. Tüm hakları saklıdır.</p>
        <p>Nuxt 4 ile geliştirildi.</p>
      </div>
    </div>
  </footer>
</template>

<script setup>
const currentYear = computed(() => new Date().getFullYear())
</script>

<style scoped>
/* Footer Temel Yapısı */
.site-footer {
  background-color: #0f172a;
  color: #cbd5e1;
  border-top: 1px solid #1e293b;
  margin-top: auto;
  padding: 3rem 1rem 1.5rem 1rem;
  font-family: system-ui, -apple-system, sans-serif;
}

.footer-container {
  max-width: 1280px;
  margin: 0 auto;
}

/* Izgara (Grid) Düzeni */
.footer-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 2rem;
}

@media (min-width: 768px) {
  .footer-grid {
    grid-template-columns: repeat(4, 1fr);
  }
}

/* Marka Stilleri */
.footer-brand .logo {
  font-size: 1.5rem;
  font-weight: 700;
  color: #ffffff;
  text-decoration: none;
  letter-spacing: -0.025em;
}

.footer-brand .logo span {
  color: #6366f1;
}

.footer-brand p {
  margin-top: 1rem;
  font-size: 0.875rem;
  color: #94a3b8;
  line-height: 1.6;
}

/* Kolon Stilleri */
.footer-column h3 {
  font-size: 0.875rem;
  font-weight: 600;
  color: #ffffff;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  margin-bottom: 1rem;
}

.footer-column ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.footer-column li {
  margin-bottom: 0.5rem;
}

.footer-column a {
  color: #cbd5e1;
  text-decoration: none;
  font-size: 0.875rem;
  transition: color 0.2s;
}

.footer-column a:hover {
  color: #ffffff;
}

/* Alt Telif Alanı */
.footer-bottom {
  margin-top: 3rem;
  padding-top: 2rem;
  border-top: 1px solid #1e293b;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
  font-size: 0.75rem;
  color: #64748b;
}

@media (min-width: 640px) {
  .footer-bottom {
    flex-direction: row;
    justify-content: space-between;
  }
}
</style>