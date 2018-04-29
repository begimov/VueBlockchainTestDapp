// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'

var Web3 = require("web3");

window.addEventListener('load', function() {                  
  // Supports Metamask and Mist, and other wallets that provide 'web3'.      
  if (typeof web3 !== 'undefined') {                            
    // Use the Mist/wallet provider.                            
    window.web3 = new Web3(web3.currentProvider);               
  } else {                                                      
    // No web3 detected. Show an error to the user or use Infura: https://infura.io/
  }                                                                                                                       
}); 

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  components: { App },
  template: '<App/>'
})
