<template>
<div class="aol-box">
    
      <div class="side-panel">
        <img src="../../src/Assets/Resources/200px-America_Online_logo.svg.png" alt="Logo" class="logo-image">
      </div>

      <div class="content">
        <div class="message-bar">
          <img src="../../src/Assets/Resources/aol-icon-4.png" alt="Welcome Image" class="welcome-image">
          <div class="welcome-text">
          <span v-html="this.$store.state.motivationalQuote"></span>
        </div>
      </div>

    <br/>
      <h1 class="aol-heading">BotBuddy</h1>

      <div class="aol-box-input">
        <input v-model = "userWithInput.questionOrResponse" @keyup.enter="submitInput" placeholder="Enter Question">
      </div>

      <loading-overlay :loading = "loading"/>
      <div class = "response-area">
          <div class="typing-text" v-if="responseVisible" v-html="typedResponse"></div>
      </div>

      <div class="button-container">
          <router-link v-bind:to="{ name: 'logout' }" class="aol-logout">Logout</router-link>
           <router-link v-bind:to="{ name: 'home' }"></router-link>
          <a href="https://calendly.com/capstonecalendlyuser/chatbot-support" target="_blank" class="aol-refresh">Support</a>
      </div>
    </div>
</div>
</template>
<script>
import messageService from '../services/MessageService';
import LoadingOverlay from './CreateLoading.vue';

export default {
  name: 'home',
  data() {
    return {
        userWithInput: {
          id : this.$store.state.user.id,
          type : 'false', // false being that it is a question. True = Response
          questionOrResponse : '',
        },
        loading: false,
        responseVisible: false,
        isResponding: false,
        typedResponse: "",
        response: ''
    };
  },
   methods: {
    submitInput() {
    if (!this.isResponding) {
      this.loading = true;

      const formatedData = {
        id: this.userWithInput.id,
        type: this.userWithInput.type,
        questionOrResponse: this.userWithInput.questionOrResponse
      };

      // Reset typedResponse before triggering animation
      this.typedResponse = '';

      this.isResponding = true;

      // Simulate an asynchronous action
      setTimeout(() => {
        messageService
          .sendQuestion(formatedData)
          .then(response => {
            this.response = response.data;
            this.userWithInput.questionOrResponse = '';
            this.loading = false;
            this.responseVisible = true;
            this.startTypingEffect(this.response);
            this.isResponding = false;
          })
          .catch(error => {
            console.error('Error fetching data:', error);
            this.loading = false;
            this.isResponding = false;
          });
      }, 50);
    }
  },
  startTypingEffect(text) {
    this.typedResponse = '';
    this.currentIndex = 0;
    clearInterval(this.typingInterval);

    this.typingInterval = setInterval(() => {
      if (this.currentIndex < text.length) {
        const char = text[this.currentIndex];
        const isSpace = char === ' ';

        if (isSpace && text[this.currentIndex + 1] === ' ') {
          this.typedResponse += '<br>'; // Add a newline for two consecutive spaces
          this.currentIndex += 2; // Skip the second space
        } else if (char === '^') {
          const endIndex = text.indexOf('^', this.currentIndex + 1);
          if (endIndex !== -1) {
            const boldText = text.substring(this.currentIndex + 1, endIndex); // ^text^ data will be bold
            this.typedResponse += `<b>${boldText}</b>`;
            this.currentIndex = endIndex + 1;
          } else {
            this.typedResponse += char;
            this.currentIndex++;
          }
        } else if (char === '$') {
          const endIndex = text.indexOf('$', this.currentIndex + 1); // $LinkName$*http://link*
          if (endIndex !== -1) {
            const hyperlinkName = text.substring(this.currentIndex + 1, endIndex);
            this.currentIndex = endIndex + 1;

            const startLinkIndex = text.indexOf('*', this.currentIndex);
            if (startLinkIndex !== -1) {
              const endLinkIndex = text.indexOf('*', startLinkIndex + 1);
              if (endLinkIndex !== -1) {
                const linkText = text.substring(startLinkIndex + 1, endLinkIndex);
                this.typedResponse += `<a href="${linkText}" target="_blank">${hyperlinkName}</a>`;
                this.currentIndex = endLinkIndex + 1;
              } else {
                this.typedResponse += char;
                this.currentIndex++;
              }
            } else {
              this.typedResponse += char;
              this.currentIndex++;
            }
          } else {
            this.typedResponse += char;
            this.currentIndex++;
          }
        } else {
          this.typedResponse += char;
          this.currentIndex++;
        }
      } else {
        clearInterval(this.typingInterval);
      }
    }, 10); // Adjust typing interval as needed
  },
  showResponse() {
    this.responseVisible = true;
    this.startTypingEffect(this.response);
  }
},
watch: {
  response: {
    immediate: true,
    handler() {
      if (!this.loading && this.responseVisible === false) {
        this.showResponse();
      }
    }
  }
},
  components:{
   LoadingOverlay
  },
  computed: {
    formattedResponse() {
      // Format response text with HTML line breaks
      return this.response.replace(/\n/g, '<br>');
    }
  },
};
</script>

<style scoped>

/*login box format*/
.aol-box {
  display: flex;
  background-color: #FFFFFF;
  border: 3px solid #CCCCCC;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
  padding: 0px;
  max-width: 900px;
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

.aol-box-input {
  margin-bottom: 1rem;
}

.aol-box-input label {
  margin-right: 0.5rem;
}

.aol-box-input input {
  width: calc(100% - 27px);
  padding: 10px;
  margin-bottom: 10px;
  border: 3px solid #CCCCCC;
  font-family: Verdana, sans-serif;
  font-size: 16px;
}

.button-container {
  display: flex;
  justify-content: space-between;
  margin-bottom: 25px;
}

.aol-logout,
.aol-refresh {  
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
 
.aol-logout{
  left: 160px;
  background-color: #0077CC;
}

.aol-refresh{
  right: 20px;
  background-color: #0077CC;
}

.aol-logout:hover,
.aol-refresh:hover {
  text-decoration: underline;
}

.message-bar {
  display: flex;
  align-items: center; /* Vertically center content */
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
  box-sizing: border-box;
}

.welcome-image {
  width: 24px; /* Set the width of the image */
  height: 24px; /* Set the height of the image */
  margin-right: 10px; /* Add some spacing between image and text */
}

.welcome-text {
  display: flex;
  align-items: baseline; /* Align text baseline with image */
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

.response-area {
  margin-top: 20px;
  height: calc(400px - 40px); 
  border: 3px solid #CCCCCC;
  padding: 10px;
  margin-bottom: 30px;
  overflow: auto;
  word-wrap: break-word;
}

.typing-text {
  animation: typing 3s steps(30, end);
  white-space: normal;
  overflow: hidden;
  border-right: none; 
  font-family: Verdana, sans-serif;
}

.y-character {
  margin-right: 2px; /* Add a small margin for "y" characters */
}

@keyframes typing {
  from {
    width: 0;
  }
}
</style>