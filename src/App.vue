<template>
  <div id="app">
    <Voting/>
  </div>
</template>

<script>
import Voting from './components/Voting'
import Coin from './components/Coin'

export default {
  name: 'App',
  components: {
    Voting,
    Coin
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
