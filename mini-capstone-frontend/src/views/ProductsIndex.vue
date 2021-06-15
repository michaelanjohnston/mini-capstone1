<template>
  <div class="products-index">
    <h1>All Products</h1>
    <div v-for="product in products" v-bind:key="product.id">
      <h2>{{ product.name }}</h2>
      <img v-bind:src="product.url" v-bind:alt="product.name" />
      <p>Width: {{ product.width }}</p>
      <p>Height: {{ product.height }}</p>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data: function () {
    return {
      products: [],
    };
  },
  created: function () {
    this.indexproducts();
  },
  methods: {
    indexproducts: function () {
      axios.get("/products").then((response) => {
        console.log("products index", response);
        this.products = response.data;
      });
    },
  },
};
</script>
