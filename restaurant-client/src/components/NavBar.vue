<template>
    <div id="nav" class="nav">
        <button>Home</button>
        <button>What we offer</button>
        <button>About us</button>
    </div>
</template>

<script setup lang="ts">
    window.onscroll = () => {
        if (window.scrollY > 0) {
            document.getElementById("nav")!.className = "nav-scroll-down"
        } else {
            document.getElementById("nav")!.className = "nav-scroll-up";
        }
    }
</script>

<style scoped>
    .nav {
        background-color: transparent;
        padding-bottom: 3px;
        position: fixed;
        width: 100%;
        height: 10%;
        color: white;
    }
    .nav-scroll-down {
        background-color: transparent;
        padding-bottom: 3px;
        position: fixed;
        width: 100%;
        height: 10%;
        animation: scroll-load 1s;
        animation-fill-mode: forwards;
    }
    @keyframes scroll-load {
        from {}
        to {
            background-color: white;
            color: black;
        }
    }
    .nav-scroll-up {
        background-color: white;
        padding-bottom: 3px;
        position: fixed;
        width: 100%;
        height: 10%;
        animation: scroll-unload 1s;
        animation-fill-mode: forwards;
    }
    @keyframes scroll-unload {
        from {}
        to {
            background-color: transparent;
            color: white;
        }
    }
    button {
        float: left;
        margin: 4vh 0.5rem 0rem 0.5rem;
        background-color: transparent;
        color: inherit;
        border: 0px;
    }
    button:hover {
        border-bottom: 3px solid greenyellow;
        cursor: pointer;
    }
</style>