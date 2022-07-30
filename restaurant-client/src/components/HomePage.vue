<template>
    <div id="home-page">
        <h1>We love good food.</h1>
    </div>
</template>

<script>
</script>

<style scoped>
div {
    position: relative;
    height: 100vh;
    width: 100%;
    background-image: url("https://images.squarespace-cdn.com/content/v1/57879a6cbebafb879f256735/1579721476536-V0ZXZDAJ7P1H939N5FGF/header2.jpg");
    background-size: cover;
    background-position: center;
}
h1 {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: white;
    font-size: 3rem;
    width: auto;
    display: inline-block;
    overflow: hidden; 
    border-right: .15em solid orange; 
    white-space: nowrap; 
    margin: 0 auto; 
    animation: 
        typing 4s steps(80, end),
        blink-caret .75s step-end infinite;
}
@keyframes typing {
    from { max-width: 0 }
    to { max-width: 100% }
}
@keyframes blink-caret {
    from, to { border-color: transparent }
    50% { border-color: orange; }
}
@media(min-width: 800px) {
    h1 {
        font-size: 5rem;
    }
}
</style>