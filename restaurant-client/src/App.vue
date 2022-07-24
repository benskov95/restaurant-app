<template>
  <div class="container">
    <NavBar />
    <HomePage />
    <WeOfferPage />
  </div>
</template>

<script lang="ts">
import NavBar from "./components/NavBar.vue";
import HomePage from "./components/HomePage.vue";
import WeOfferPage from "./components/WeOfferPage.vue";

export default {
  name: "app",
  components: {
    NavBar,
    HomePage,
    WeOfferPage,
  }
}
</script>

<style>
body {
  margin: 0;
  padding: 0;
}
.container {
  position: relative;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
