pragma solidity ^0.4.8;

contract Coin {

    address public minter;
    mapping (address => uint) public balances;

    event Sent(address from, address to, uint ammount);

    function Coin() public {
        minter = msg.sender;
    }
    
}