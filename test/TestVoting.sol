pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Voting.sol";

contract TestVoting {
    Voting voting = Voting(DeployedAddresses.Voting());

    function testInitialState() public {
        uint counter = voting.getCounter();

        uint expected = 0;

        Assert.equal(counter, expected, "Adoption of pet ID 8 should be recorded.");
    }

    function testIncrement() public {
        voting.increment();
        voting.increment();

        uint counter = voting.getCounter();

        uint expected = 2;

        Assert.equal(counter, expected, "Adoption of pet ID 8 should be recorded.");
    }
}