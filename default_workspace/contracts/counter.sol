pragma solidity ^0.8.0;

contract counter{
    uint public count=0;

    function incrementCount() public {
        count++;
    }
}