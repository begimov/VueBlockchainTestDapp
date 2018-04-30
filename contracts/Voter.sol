pragma solidity ^0.4.8;

contract Voter {
    struct Proposal {
        string name;
    }

    Proposal[] public proposals;

    function countProposals() public returns (uint) {
        return proposals.length;
    }

    function addProposal(string name) public {
        proposals.push(Proposal({
            name: name
        }));
    }
}