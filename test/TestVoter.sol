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

    function testGetProposal() public {
        var (name, state) = voter.getProposal(1);
        Assert.equal(name, "NewProposal 2", "");
        Assert.isTrue(state, "");
    }

    function testVote() public {
        Assert.isTrue(voter.vote(1), "");
        Assert.isFalse(voter.vote(1), "");
    }

    function testProposalTotalVotes() public {
        voter.vote(1);
        voter.vote(1);
        Assert.equal(voter.getProposalTotalVotes(1), 1, "");
    }
}