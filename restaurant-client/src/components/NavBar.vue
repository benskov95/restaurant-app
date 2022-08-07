<template>
    <div id="nav" class="navbar" v-if="!useBurgerBtn">
        <button id="home" @click="scrollToComponent">Home</button>
        <button id="we-offer" @click="scrollToComponent">What we offer</button>
        <button id="about" @click="scrollToComponent">About us</button>
        <button id="menu" @click="scrollToComponent">Menu</button>
        <button id="contact" @click="scrollToComponent">Contact us</button>
    </div>
    <div id="nav" class="navbar" v-else>
        <fa-icon 
        v-if="showDropdownMenu"
        icon="fa-solid fa-close" 
        :style="{cursor: 'pointer', float: 'right', margin: '0.5rem 1rem 0px 0px'}" 
        @click="toggleMenu"
        size="2xl" />
        <fa-icon
         v-else
        icon="fa-solid fa-bars" 
        :style="{cursor: 'pointer', float: 'right', margin: '0.5rem 1rem 0px 0px'}" 
        @click="toggleMenu"
        size="2xl" />
    </div>
    <div :id="dropdownId">
        <ul class="options-list">
            <li class="options-list-el" id="home" @click="scrollToComponent">
                Home
            </li>
            <li class="options-list-el" id="we-offer" @click="scrollToComponent">
                What we offer
            </li>
            <li class="options-list-el" id="about" @click="scrollToComponent">
                About us
            </li>
            <li class="options-list-el" id="menu" @click="scrollToComponent">
                Menu
            </li>
            <li class="options-list-el" id="contact" @click="scrollToComponent">
                Contact us
            </li>
        </ul>
    </div>
</template>

<script lang="ts">
import { ref } from "vue";

let useBurgerBtn = ref(false);
let showDropdownMenu = ref(false);
let dropdownId = ref("dropdown-default");

document.addEventListener("scroll", () => {
    let el = document.getElementById("nav") as HTMLElement; 
    if (window.scrollY > 0) {
        el!.className = "navbar-scroll-down"
    } else {
        el!.className = "navbar-scroll-up";
    }
})

// resize event is not on the document object, only on window.
window.addEventListener("resize", () => {
    if (window.innerWidth <= 700) {
        useBurgerBtn.value = true;
    } else {
        useBurgerBtn.value = false;
        showDropdownMenu.value = false;
        dropdownId.value = "dropdown-default";
    }
})

export default {
    data() {
        return {
            useBurgerBtn: useBurgerBtn,
            showDropdownMenu: showDropdownMenu,
            dropdownId: dropdownId,
        }
    },
    methods: {
        scrollToComponent(e: PointerEvent) {
            const target = e.target as HTMLTextAreaElement;
            window.scrollTo({
                top: document.getElementById(target.id + "-page")?.offsetTop,
                behavior: "smooth"
            })
        },
        toggleMenu() {
            showDropdownMenu.value = !showDropdownMenu.value;
            dropdownId.value = showDropdownMenu.value ? "dropdown-menu" : "dropdown-menu-closed";
        }
    },
}
</script>

<style scoped>
.navbar {
    background-color: transparent;
    color: white;
    padding-bottom: 3px;
    position: fixed;
    width: 100%;
    height: 10%;
    z-index: 1;
}
.navbar-scroll-down {
    background-color: transparent;
    padding-bottom: 3px;
    position: fixed;
    width: 100%;
    height: 10%;
    z-index: 1;
    animation: load 1s;
    animation-fill-mode: forwards;
}
.navbar-scroll-up {
    background-color: white;
    padding-bottom: 3px;
    position: fixed;
    width: 100%;
    height: 10%;
    z-index: 1;
    animation: unload 1s;
    animation-fill-mode: forwards;
}
button {
    float: left;
    margin: 4vh 0.5rem 0rem 0.5rem;
    background-color: transparent;
    color: inherit;
    border: 0px;
}
button:hover {
    border-bottom: 3px solid orange;
    cursor: pointer;
}
#dropdown-default {
    display: none;
}
#dropdown-menu {
    background-color: white;
    border-radius: 5px;
    border-width: 0px;
    width: 50%;
    margin: 3.8rem 1rem 0px 0px;
    position: fixed;
    top: 0;
    right: 0;
    z-index: 1;
    animation: load-menu 0.5s forwards;
}
#dropdown-menu-closed {
    background-color: white;
    border-radius: 5px;
    border-width: 0px;
    width: 50%;
    margin: 3.8rem 1rem 0px 0px;
    position: fixed;
    top: 0;
    right: 0;
    z-index: 1;
    animation: close-menu 0.5s forwards;
}
.options-list {
    list-style: none;
    padding: 0;
    margin: 0;
}
.options-list-el {
    text-align: left;
    padding: 0.5rem 0px 0.5rem 0.5rem;
    width: 100%;
    cursor: pointer;
}
.options-list-el:hover {
    animation: change-color 0.7s forwards;
}
@keyframes load {
    to {
        background-color: white;
        color: black;
    }
}
@keyframes unload {
    to {
        background-color: transparent;
        color: white;
    }
}
@keyframes change-color {
    to {
        background-color: black;
        color: white;
    }
}
@keyframes load-menu {
    from {
        color: transparent;
        height: 0%;
    }
    to {
        height: 18%;
    }
}
@keyframes close-menu {
    from {
        display: block;
        height: 18%;
        visibility: visible;
    }
    to {
        height: 0%;
        visibility: hidden;
        color: transparent;
    }
}
</style>