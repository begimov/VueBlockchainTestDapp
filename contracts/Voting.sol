pragma solidity ^0.4.8;

contract Voting {
    uint public counter;

    function Voting() public {
        counter = 0;
    }

    function increment() public {
        counter += 1;
    }

    function getCounter() public returns (uint) {
        return counter;
    }
}