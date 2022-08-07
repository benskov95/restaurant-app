<template>
    <div id="menu-page">
        <h1>Menu</h1>
        <div v-if="menuItems.msg">
            <h3>{{menuItems.msg}}</h3>
        </div>
        <div class="grid-container">
            <ul>
                <h2>Burgers</h2>
                <div v-for="item in menuItems" :key="item.name">
                    <li v-if="item.type === 1">
                        <h3>{{item.name}}</h3>
                        <p>{{item.price}},-</p>
                        <span>{{item.description}}</span>
                    </li>
                </div>
                <h2>Pizzas</h2>
                <div v-for="item in menuItems" :key="item.name">
                    <li v-if="item.type === 2">
                        <h3>{{item.name}}</h3>
                        <p>{{item.price}},-</p>
                        <span>{{item.description}}</span>
                    </li>
                </div>
            </ul>
            <ul>
                <h2>Dürüm</h2>
                <div v-for="item in menuItems" :key="item.name">
                    <li v-if="item.type === 3">
                        <h3>{{item.name}}</h3>
                        <p>{{item.price}},-</p>
                        <span>{{item.description}}</span>
                    </li>
                </div>
                <h2>Sides</h2>
                <div v-for="item in menuItems" :key="item.name">
                    <li v-if="item.type === 4">
                        <h3>{{item.name}}</h3>
                        <p>{{item.price}},-</p>
                        <span>{{item.description}}</span>
                    </li>
                </div>
                <h2>Drinks</h2>
                <div v-for="item in menuItems" :key="item.name">
                    <li v-if="item.type === 5">
                        <h3>{{item.name}}</h3>
                        <p>{{item.price}},-</p>
                        <span>{{item.description}}</span>
                    </li>
                </div>
            </ul>
        </div>
    </div>
</template>

<script lang="ts">
import { ref } from "vue";
import menuFacade from "../server/menuFacade";

let menuItems = ref([]);

export default {
    data() {
        return {
            menuItems: menuItems
        }
    },
    async created() {
        menuItems.value = await menuFacade.getMenuItems();
    }
}
</script>

<style scoped>
#menu-page {
    border: 1px solid gray;
    border-radius: 10px;
    margin: 20% auto 0px auto;
    width: 90%;
    max-width: 1300px;
    background-color: white;
    overflow: auto;
}
h1 {
    font-size: 3rem;
    margin-top: 10%;
}
.grid-container {
    display: grid;
    grid-template-columns: 50% 50%;
    margin: 0px auto 0px auto;
    max-width: 1200px;
    padding: 0px 2rem 1rem 0px;
}
.grid-container ul {
    list-style: none;
}
ul h2 {
    font-size: 2rem;
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
    font-size: 1.1rem;
    margin-top: -1.8rem
}
li span {
    font-size: 0.8rem;
    color: gray;
}
@media(max-width: 650px) {
    .grid-container {
        grid-template-columns: auto;
    }
}
</style>