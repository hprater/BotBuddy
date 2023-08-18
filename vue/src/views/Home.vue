<template>
  <div class="aol-home">
    <create-home/>
    <motivational-quote/>

  </div>
</template>

<script>
import CreateHome from '../components/CreateHome.vue';
import MotivationalQuote from '../components/MotivationalQuote.vue';

export default {
  components: {
    MotivationalQuote,
    CreateHome
  },
};

</script>

<style scoped>
.aol-home {
  background-color: #737475;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: "MS Sans Serif", sans-serif;
  height: 100vh;
}
</style>