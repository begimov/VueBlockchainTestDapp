pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Voter.sol";

contract TestVoter{
    Voter voter = Voter(DeployedAddresses.Voter());

    function testInitialState() public {
        Assert.equal(voter.countProposals(), 0, "Initial proposals total count should be 0");
    }
}