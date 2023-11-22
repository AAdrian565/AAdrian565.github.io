<script setup>
import { RouterLink, RouterView } from 'vue-router'
import Name from './components/PortoName.vue'
</script>

<template>
  <header>
    <img alt="profile" class="profile" src="./assets/profile.jpg" width="500" height="500" />

    <div class="wrapper">
      <Name msg="Augustinus Adrian Triputra" />
      <nav>
        <RouterLink to="/" class="bt">Home</RouterLink>
        <RouterLink to="/portofolio" class="bt">Portofolio</RouterLink>
        <RouterLink to="/contact" class="bt">Contact Me</RouterLink>
        <a href="https://raw.githubusercontent.com/AAdrian565/portofolio-vue/main/src/assets/CV.pdf" class="bt">
          <i class="fa fa-download"></i>
          CV Download
        </a>
      </nav>
    </div>
  </header>

  <RouterView />
</template>

<style scoped>
RouterLink{
  font-family: Inter;
}

.bt {
  font-size: 1.3rem;
  font-family: Inter;
}

header {
  line-height: 1.5;
  width: 100%;
  max-height: 100vh;
}

.profile {
  width: 250px;
  height: 250px;
  border-radius: 50%;
  display: block;
  margin: 0 auto 2rem;
}

nav {
  width: 100%;
  font-size: 12px;
  text-align: center;
  margin-top: 2rem;
}

nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}

@media (max-width: 1024px) {
  /*TODO: Sticky nav button*/ 
}

@media (min-width: 1024px) {
  header {
    position: sticky;
    left: 0;
    top: 0;
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .profile {
    margin: 0 2rem 0 0;
  }

  nav {
    text-align: left;
    margin-left: -1rem;
    font-size: 1rem;

    padding: 1rem 0;
    margin-top: 1rem;
  }
}
</style>
