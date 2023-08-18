<template>
  <div id="register" class="aol-login">
   <create-register/>
  </div>
</template>

<script>
import CreateRegister from "../components/CreateRegister.vue";

export default {
  components: {
    CreateRegister
  }
};
</script>

<style scoped>
.aol-login {
  background-color: #737475;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: "MS Sans Serif", sans-serif;
  height: 100vh;
}
</style>
