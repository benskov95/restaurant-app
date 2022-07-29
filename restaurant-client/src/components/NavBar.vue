<template>
    <div id="nav" class="navbar">
        <button id="home" @click="scrollToComponent">Home</button>
        <button id="we-offer" @click="scrollToComponent">What we offer</button>
        <button id="about" @click="scrollToComponent">About us</button>
        <button id="menu" @click="scrollTopComponent">Menu</button>
        <button id="contact" @click="scrollTopComponent">Contact us</button>
    </div>
</template>

<script lang="ts">
    document.addEventListener("scroll", () => {
        let el = document.getElementById("nav") as HTMLElement; 
        if (window.scrollY > 0) {
            el!.className = "navbar-scroll-down"
        } else {
            el!.className = "navbar-scroll-up";
        }
    })

    export default {
        methods: {
            scrollToComponent(e: PointerEvent) {
                const target = e.target as HTMLTextAreaElement;
                window.scrollTo({
                    top: document.getElementById(target.id + "-page")?.offsetTop,
                    behavior: "smooth"
                })
            }
        }
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
</style>