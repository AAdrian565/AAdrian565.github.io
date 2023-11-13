<script setup>
let title = 'Web Developer'
let paragraph =
  'As a web developer, I am currently immersed in learning Vue.js to enhance my front-end development skills. Passionate about creating engaging user interfaces'
</script>

<template>
  <div class="content">
    <h2 class="green">{{ title }}</h2>
    <p>{{ paragraph }}</p>
  </div>
</template>

<style scoped>
.fa {
  font-size: 2rem;
  width: 2rem;
}

.c-item {
  font-size: 2rem;
}
</style>

<style>
h2 {
  font-size: 2rem;
}

p {
  font-size: 1.5rem;
}

.content {
  margin: 2rem auto;
  text-align: center;
}

@media (min-width: 1024px) {
  .content {
    min-height: 100vh;
    margin: auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
}
</style>
