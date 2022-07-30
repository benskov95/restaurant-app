<template>
    <div id="we-offer-page">
        <h1>What we offer</h1>
        <div id="grid-container">
            <div style="opacity: 0">
                <img src="https://gastrofun.dk/wp-content/uploads/2020/04/Hjemmelavet-Burger-Shack-Burger-1.jpg" alt="" />
                <h2>Burgers</h2>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vitae ipsum sagittis, tincidunt tortor vitae, vestibulum quam. Pellentesque vitae porttitor erat. Duis sodales erat a ante egestas tristique. 
            </div>
            <div style="opacity: 0; animation-delay: 0.5s">
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Supreme_pizza.jpg/800px-Supreme_pizza.jpg" alt="" />
                <h2>Pizza</h2>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vitae ipsum sagittis, tincidunt tortor vitae, vestibulum quam. Pellentesque vitae porttitor erat. Duis sodales erat a ante egestas tristique. 
            </div>
            <div style="opacity: 0; animation-delay: 1s">
                <img src="https://img.mummum.dk/wp-content/uploads/2022/03/IMG_9740-2-min.jpg" alt="" />
                <h2>Dürüm</h2>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vitae ipsum sagittis, tincidunt tortor vitae, vestibulum quam. Pellentesque vitae porttitor erat. Duis sodales erat a ante egestas tristique. 
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
document.addEventListener("scroll", () => {
    let items = document.getElementById("grid-container")?.children as HTMLCollection;
    if (window.scrollY >= 250 && items[0].className.length === 0) {
        Array.from(items).forEach(item => {
            item.className = "grid-item";
        })
    }
})
</script>

<style scoped>
#we-offer-page {
    width: 100%;
    margin-bottom: 20%;
    overflow: auto;
}
h1 {
    font-size: 2.5rem;
}
#grid-container {
    display: grid;
    grid-template-columns: auto auto auto;
    column-gap: 5vw;
    justify-content: center;
    margin-top: 3rem;
}
.grid-item {
    width: 25vw;
    font-size: 1.2rem;
    opacity: 0;
    animation: appear 1s forwards;
}
.grid-item img {
    width: 25vw;
    height: 25vw;
    border-radius: 25vw;
}
h1 {
    margin-top: 10vh;
    text-decoration: underline;
}
@keyframes appear {
    to {
        opacity: 1;
    }
}
@media(min-width: 1000px) {
    #we-offer-page {
        margin-bottom: 10%;
    }
}
</style>