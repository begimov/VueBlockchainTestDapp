<template>
  <div>
    <h1>Voter</h1>
    <h2>Total proposals: {{ proposalsCount }}</h2>
    <button @click.prevent="get">Refresh</button>
    <button @click.prevent="addProposal">Add proposal</button>
    <button @click.prevent="getProposalName">Get proposal name</button>
  </div>
</template>

<script>
// import Voting from '../../contracts/Voter.sol';
const voter = require('../../build/contracts/Voter.json')
import TruffleContract from 'truffle-contract'

export default {
  name: 'Voter',
  data () {
    return {
      voter: null,
      proposalsCount: 0
    }
  },
  methods: {
    getProposalName () {
      this.voter.deployed().then((instance) => {
          instance.getProposalName.call(2)
            .then((res) => {
              console.log(res)
            })
        });
    },
    addProposal () {
      this.voter.deployed().then((instance) => {
          instance.addProposal('Name1', {from: web3.eth.accounts[0]})
            .then((res) => {
              console.log(res)
            })
        });
    },
    get () {
      this.voter.deployed().then((instance) => {
        return instance.countProposals.call().then((res) => {
          this.proposalsCount = res.toNumber()
        })
      })
    }
  },
  mounted () {
    this.voter = TruffleContract(voter)
    this.voter.setProvider(window.web3.currentProvider)
  }
}
</script>
