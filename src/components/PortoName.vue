<script setup>
defineProps({
  msg: {
    type: String,
    required: true
  }
})
</script>

<template>
  <div class="greetings">
    <h1 class="green">{{ msg }}</h1>
    <h3>
      <a href="https://github.com/AAdrian565" class="fa fa-github"></a>
      <a href="https://linkedin.com/in/aadrian565" class="fa fa-linkedin"></a>
    </h3>
  </div>
</template>

<style scoped>
.fa {
  font-size: 2rem;
  text-align: center;
  text-decoration: none;
  margin: 0 .5rem 0;
}

.fa:hover {
  font-size: 2.5rem;
  animation-timing-function: linear;
  transition: .1s;
  background: none !important;
}

h1 {
  font-weight: 500;
  font-size: 2.6rem;
  position: relative;
  top: -10px;
}

h3 {
  font-size: 1.2rem;
}

.greetings h1,
.greetings h3 {
  text-align: center;
}

@media (min-width: 1024px) {

  .greetings h1,
  .greetings h3 {
    text-align: left;
  }
}
</style>
