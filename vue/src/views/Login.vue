<template>
  <div id="login" class="aol-login">
    <create-login/> 
  </div>
</template>

<script>
import CreateLogin from '../components/CreateLogin.vue';

export default {
  components: {CreateLogin}
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