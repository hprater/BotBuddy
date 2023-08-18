import axios from "axios";

const http = axios.create({
    baseURL: 'http://localhost:9000'
});

//Interceptor to include the token in request headers
http.interceptors.request.use(config => {
    const currentToken = localStorage.getItem('token');
    if (currentToken) {
      config.headers.Authorization = `Bearer ${currentToken}`;
    }
    return config;
  });

export default {
    sendQuestion(input){
        return http.post(`/question`, input);
    }
}
