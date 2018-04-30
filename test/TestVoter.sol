pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Voter.sol";

contract TestVoter{
    Voter voter = Voter(DeployedAddresses.Voter());

    function testInitialState() public {
        Assert.equal(voter.countProposals(), 0, "Initial proposals count should be 0");
    }

    function testAddProposal() public {
        voter.addProposal("NewProposal 1");

        Assert.equal(voter.countProposals(), 1, "");
    }

    function testGetProposalState() public {
        voter.addProposal("NewProposal 2");

        Assert.isTrue(voter.getProposalState(1), "");
    }

    function testGetProposalName() public {
        voter.addProposal("NewProposal 3");

        Assert.equal(voter.getProposalName(2), "NewProposal 3", "");
    }
}