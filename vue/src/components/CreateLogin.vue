<template>
    <form @submit.prevent="login" class="aol-form">

      <div class="side-panel">
        <img src="../../src/Assets/Resources/200px-America_Online_logo.svg.png" alt="Logo" class="logo-image">
      </div>

      <div class="content">
      <div class="message-bar"> 
        <img src="../../src/Assets/Resources/aol-icon-4.png" alt="Welcome Image" class="welcome-image">
        Welcome!
        </div>

      <h1 class="aol-heading">BotBuddy Sign On</h1>
      <div role="alert" v-if="invalidCredentials" class="aol-alert">
        Invalid username and password!
      </div>
      
      <div role="alert" v-if="this.$route.query.registration" class="aol-alert">
        Thank you for registering, please sign in.
      </div>
      
      <div class="aol-form-input">
        <label for="username">User Name:</label>
        <input type="text" id="username" v-model="user.username" required autofocus />
      </div>
      
      <div class="aol-form-input">
        <label for="password">Password:</label>
        <input type="password" id="password" v-model="user.password" required />
      </div>
      <br>

      <div class="button-container">
      <button type="submit" class="aol-signing-on">SIGN ON</button>
      <router-link :to="{ name: 'register' }" class="aol-signing-up">SIGN UP</router-link>
      </div>
      </div>
    
    </form>
</template>
<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<style scoped>
/*login box format*/
.aol-form {
  display: flex;
  background-color: #FFFFFF;
  border: 3px solid #CCCCCC;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
  padding: 0px;
  max-width: 600px;
  width: 100%;
  margin : 0 auto;
  position: relative;
}

.aol-heading {
  font-size: 24px;
  margin-bottom: 20px;
  text-align: center;
  color: #0077CC;
}

.aol-form-input {
  margin-bottom: 1rem;
}

.aol-alert {
  background-color: #FFCCCC;
  border: 1px solid #FF6666;
  border-radius: 5px;
  color: #FF0000;
  padding: 10px;
  text-align: center;
  margin-bottom: 1rem;
}

.aol-form-input label {
  margin-right: 0.5rem;
}

.aol-form-input input {
  width: calc(100% - 20px);
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #CCCCCC;
}

.button-container {
  display: flex;
  justify-content: space-between;
  margin-bottom: 20px;
}

.aol-signing-up,
.aol-signing-on {  
  position: absolute;
  text-decoration: none;
  bottom: 20px;
  color: #FFFFFF;
  padding: 10px 20px;
  border: 1px solid #000000;
  box-shadow: 7px 7px 0px rgba(100, 98, 98, 0.2);
  cursor: pointer;
  font-family: "MS Sans Serif", sans-serif;
  font-size: 14px;
  transition: text-decoration 0.3s;
}
 
.aol-signing-on{
  left: 160px;
  background-color: #0077CC;
}

.aol-signing-up{
  right: 20px;
  background-color: #0077CC;
}

.aol-signing-on:hover,
.aol-signing-up:hover {
  text-decoration: underline;
}

.message-bar {
  background-color: #737475; 
  color: rgb(194, 191, 191);
  font-family: "MS Sans Serif", sans-serif;
  font-size: 18px;
  padding: 4px;
  text-align: left;
  border-bottom: 2px solid #CCCCCC;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  box-sizing: border-box; /* Include padding within width */
}

.welcome-image {
  max-width: 20px;
  height: auto;
  margin-right: 10px; 
}

.side-panel {
  background-color: #0077CC;
  padding: 20px; 
  align-items: center;
  display: flex;
}

.logo-image {
  max-width: 100px; /* Adjust the logo's max width */
  height: auto; /* Maintain aspect ratio */
  margin-bottom: 10px;
}

.content {
  flex-grow: 1; /* Allow content to grow and fill available space */
  padding: 20px; 
}

#panel {
display: flex;

}
</style>