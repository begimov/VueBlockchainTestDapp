<template>
  <div>
    <h1>Coin</h1>
  </div>
</template>

<script>
import Coin from '../../contracts/Coin.sol';

export default {
  name: 'Coin',
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
