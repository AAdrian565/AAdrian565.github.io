<template>
  <nav>
    <ul>
      <li
        v-for="el in menu"
        :key="el.id"
        @click="setActivePage(el.id)"
        :class="{
          active: activePage === el.id ? true : false,
          'animate__animated animate__fadeIn': activePage === el.id ? true : false
        }"
      >
        <button class="d-flex align-items-center">
          <div class="icon col-3">
            <font-awesome-icon :icon="['fas', el.icon]" />
          </div>
          <h4 class="ms-2 col-9">{{ el.name }}</h4>
        </button>
      </li>
    </ul>
  </nav>
</template>

<script>
export default {
  props: ['setActivePage', 'activePage'],
  data() {
    return {
      menu: [
        {
          id: 1,
          name: 'Home',
          icon: 'house-chimney'
        },
        {
          id: 2,
          name: 'Portfolio',
          icon: 'briefcase'
        },
        {
          id: 3,
          name: 'Contact',
          icon: 'envelope-open'
        }
      ]
    }
  }
}
</script>

<style lang="scss" scoped></style>
