<script>
import { ref } from 'vue'

export default {
  setup() {
    const items = [
      {
        title: 'Item 1',
        img: 'https://picsum.photos/1920/1080',
        description: 'Description for Item 1',
      },
      {
        title: 'Item 2',
        img: 'https://picsum.photos/1920/1080',
        description: 'Description for Item 2',
      },
    ];

    return {
      items,
    };
  },
};
</script>

<template>
  <div class="content">
    <ul>
      <li v-for="(item, index) in items" :key="index" class="item-list">
        <div class="item-wrapper">
          <img :src="item.img" alt="item-image" class="hover-image" />
          <div class="item-details">
            <h1>{{ item.title }}</h1>
            <p>{{ item.description }}</p>
          </div>
        </div>
      </li>
    </ul>
  </div>
</template>

<style scoped>
ul {
  list-style-type: none;
  margin-bottom: 50px;
}

.item-wrapper {
  position: relative;
}

.hover-image {
  width: 100%;
  object-fit: cover;
}

.item-details {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  color: transparent;
  padding: 20px;
  box-sizing: border-box;
  z-index: 1;
  opacity: 0;
  transition: opacity 0.5s; 
}

.item-wrapper:hover .item-details {
  opacity: 1; 
}

.item-details::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.8); 
  z-index: -1;
}

.item-details h1,
.item-details p {
  margin: 0;
  color: white; 
}
</style>
