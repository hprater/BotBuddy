import axios from 'axios'

const http = axios.create({
//  baseURL:'https://zenquotes.io/api/random'
baseURL: 'http://localhost:8010/proxy/api/random'
});
export default {
    getMotivationalQuote() {
        return http.get();
    }
};