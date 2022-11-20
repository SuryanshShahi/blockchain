pragma solidity ^0.8.0;

contract bytesInDynamicArr {
    bytes public b1 = "abc";

    function setter() public {
        b1.push('d');
    }
    function getter(uint i) public view returns(bytes1) {
        return b1[i];
    }
    function length() public view returns(uint) {
        return b1.length;
    }
}
