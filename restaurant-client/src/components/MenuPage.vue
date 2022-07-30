<template>
    <div id="menu-page">
        <h1>Menu</h1>
        <div class="grid-container">
            <ul>
                <h2>Burgers</h2>
                <li>
                    <h3>Burger 1</h3>
                    <p>60,-</p>
                    <span>Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5 </span>
                </li>
                <li>
                    <h3>Burger 2</h3>
                    <p>60,-</p>
                    <span>Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5 </span>
                </li>
                <li>
                    <h3>Burger 3</h3>
                    <p>60,-</p>
                    <span>Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5 </span>
                </li>
                <li>
                    <h3>Burger 4</h3>
                    <p>60,-</p>
                    <span>Ingredient 1, Ingredient 2, Ingredient 3, Ingredient 4, Ingredient 5 </span>
                </li>
            </ul>
        </div>
    </div>
</template>

<script></script>

<style scoped>
#menu-page {
    border: 1px solid gray;
    border-radius: 5px;
    margin: 20% auto 0px auto;
    width: 90%;
    max-width: 1300px;
    background-color: white;
}
.grid-container {
    display: grid;
    grid-template-columns: 50% 50%;
    margin: 0px auto 0px auto;
    max-width: 1200px;
}
.grid-container ul {
    list-style: none;
}
ul h2 {
    font-size: 28px;
    text-align: left;
    margin-bottom: -0.5rem;
}
ul li {
    text-align: left;
    border-bottom: 1px solid gray;
    padding: 0.5rem 0px 0.5rem 0px;
}
li h3 {
    margin-bottom: 0.5rem;
}
li p {
    float: right;
    font-size: 18px;
    margin-top: -1.8rem
}
li span {
    font-size: 13px;
    color: gray;
}
</style>