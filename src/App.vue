<template>
  <div id="app">
    <Voter/>
  </div>
</template>

<script>
import Voter from './components/Voter'

export default {
  name: 'App',
  components: {
    Voter
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
