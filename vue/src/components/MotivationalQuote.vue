
<script>

import MotivationalQuoteService from '../services/MotivationalQuoteService';

export default {
    name: 'motivational-quote',
    created() {
        this.refreshQuote();
    },
    methods: {refreshQuote() {
        MotivationalQuoteService.getMotivationalQuote()
        .then(response => {
            this.$store.commit('SET_MOTIVATIONAL_QUOTE', response.data[0].q);
        })
        .catch(error => {
            console.error('Error fetching quote:', error);
        })
          .finally(() => {
          setTimeout(() => this.refreshQuote(), 40000);
            });
        }
    }
};

</script>
