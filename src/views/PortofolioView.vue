<script>
import { ref } from 'vue'

export default {
  setup() {
    const items = [
      {
        title: 'Ormeal',
        img: 'https://raw.githubusercontent.com/AAdrian565/AAdrian565.github.io/main/src/assets/project_ormeal.png',
        description: 'Build an android app using flutter and firebase for auth and database',
        link: 'https://github.com/AAdrian565/OrMeal'
      },
      {
        title: 'wayland desktop',
        img: 'https://raw.githubusercontent.com/AAdrian565/AAdrian565.github.io/main/src/assets/project_wayland.png',
        description: 'mainly built by using waybar jcssj and eww (scss, yuck)',
        link: 'https://github.com/AAdrian565/dotfiles'
      },
      {
        title: 'BookIt',
        img: 'https://raw.githubusercontent.com/AAdrian565/AAdrian565.github.io/main/src/assets/project_bookit.png',
        description: 'Room booking app built using laravel',
        link: 'https://github.com/AAdrian565/BOOKit'
      },
      {
        title: 'Event Radar',
        img: 'https://raw.githubusercontent.com/AAdrian565/AAdrian565.github.io/main/src/assets/project_eventradar.png',
        description: 'Event searching web created using html, css (bootstrap 5), javascript',
        link: 'https://github.com/deltathrs/EventRadar'
      },
      {
        title: 'GoRest',
        img: 'https://raw.githubusercontent.com/AAdrian565/AAdrian565.github.io/main/src/assets/project_gorest.png',
        description: 'Front end, Back end, and API for restaurant built using golang',
        link: 'https://github.com/AAdrian565/gorest'
      },
{
        title: 'Planetarium AR',
        img: 'https://raw.githubusercontent.com/AAdrian565/AAdrian565.github.io/main/src/assets/project_planetariumAR.jpg',
        description: 'An AR APP built by using unity to show planet in AR',
        link: 'https://github.com/AAdrian565/gorest'
      },
      {
        title: 'Library',
        img: 'https://raw.githubusercontent.com/AAdrian565/AAdrian565.github.io/main/src/assets/project_library.png',
        description: 'Library boooking app build in java',
        link: 'https://github.com/adoniagracio/Library_Java'
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
    <h1 class="green">Past Projects</h1>
    <ul>
      <li v-for="(item, index) in items" :key="index" class="item-list">
        <a :href="item.link">
          <div class="item-wrapper">
            <img :src="item.img" alt="item.title" class="hover-image" />
            <div class="item-details">
              <h1>{{ item.title }}</h1>
              <p>{{ item.description }}</p>
            </div>
          </div>
        </a>
      </li>
    </ul>
  </div>
</template>

<style scoped>
h1{
  margin-top: 50px;
  margin-bottom: 50px;
}

ul {
  list-style-type: none;
  margin-bottom: 50px;
}

.item-wrapper {
  margin-bottom: 25px;
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
