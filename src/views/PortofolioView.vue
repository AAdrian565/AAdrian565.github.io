<script>
import { ref } from 'vue';

export default {
  setup() {
    const img = ref([
      "https://picsum.photos/1920/1080",
      "https://picsum.photos/1080/1920"
    ]);

    return {
      img
    };
  }
};
</script>

<template>
  <div class="content">
    <ul>
      <li v-for="(imageUrl, index) in img" :key="index">
        <img :src="imageUrl" alt="Image" />
      </li>
    </ul>
  </div>
</template>



<style scoped>
ul {
  list-style-type: none;
  margin-bottom: 50px;
}
img{
  height: 350px;
  object-fit: cover;
}
</style>
