<template>
  <div class="container">
    <NavBar />
    <HomePage />
    <WeOfferPage />
    <AboutPage />
    <BackgroundImage />
    <MenuPage />
    <ContactPage />
  </div>
</template>

<script lang="ts">
import NavBar from "./components/NavBar.vue";
import HomePage from "./components/HomePage.vue";
import WeOfferPage from "./components/WeOfferPage.vue";
import AboutPage from "./components/AboutPage.vue";
import MenuPage from "./components/MenuPage.vue";
import BackgroundImage from "./components/BackgroundImage.vue";
import ContactPage from "./components/ContactPage.vue";

export default {
  name: "app",
  components: {
    NavBar,
    HomePage,
    WeOfferPage,
    AboutPage,
    BackgroundImage,
    MenuPage,
    ContactPage
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
  overflow: hidden;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
