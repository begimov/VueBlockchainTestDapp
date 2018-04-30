<template>
  <div>
    <h1>{{ score }}</h1>
    <button @click.prevent="increment">INCREMENT</button>
    <button @click.prevent="get">GET</button>
  </div>
</template>

<script>
import Voting from '../../contracts/Voting.sol';

export default {
  name: 'Voting',
  data () {
    return {
      score: 0
    }
  },
  methods: {
    increment () {
      Voting.deployed().increment({from: web3.eth.accounts[0]}).then((result) => {
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
    Voting.setProvider(window.web3.currentProvider)
    this.get()
  }
}
</script>
