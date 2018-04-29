<template>
  <div class="hello">
    <h1>{{ score }}</h1>
    <button @click.prevent="increment">INCREMENT</button>
    <button @click.prevent="get">GET</button>
  </div>
</template>

<script>
import Voting from '../../contracts/Voting.sol';

export default {
  name: 'HelloWorld',
  data () {
    return {
      score: 0
    }
  },
  methods: {
    increment () {
      Voting.deployed().increment({from: '0x26E986259B2Ee8c29aA8e80851bd06c5B1a63fA5'}).then((result) => {
        console.log(result)
        this.get()
      });
    },
    get () {
      Voting.deployed().getCounter.call().then((result) => {
        this.score = result.toNumber()
      });
    }
  },
  mounted () {
    Voting.setProvider(window.web3.currentProvider);
    this.get()
  }
}
</script>
