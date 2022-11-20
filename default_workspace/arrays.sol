pragma solidity ^0.8.0;

contract cons{
    
    uint[4] public arr=[10,20,30,40];

    function setter(uint i, uint value) public{
        arr[i]=value;
    }
    function length() public view returns(uint){
        return arr.length;
    }
}