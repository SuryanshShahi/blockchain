pragma solidity ^0.8.0;

contract cons {
    uint256[] public arr;

    function push(uint256 i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function length() public view returns (uint) {
        return arr.length;
    }
}
