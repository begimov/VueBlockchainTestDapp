pragma solidity ^0.4.8;

contract Voter {
    struct Proposal {
        bytes32 name;
        bool state;
    }

    Proposal[] public proposals;

    function countProposals() public returns (uint) {
        return proposals.length;
    }

    function addProposal(bytes32 name) public {
        proposals.push(Proposal({
            name: name,
            state: true
        }));
    }

    function getProposalState(uint id) public returns (bool) {
        return proposals[id].state;
    }

    function getProposalName(uint id) public returns (bytes32) {
        return proposals[id].name;
    }
}