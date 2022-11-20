pragma solidity ^0.8.0;

contract myContract {

    int256 public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public myString = "Hello, world!";
    bytes32 public myBytes32 = "Hello, world!";

    address public myAddress = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    struct myStruct {
        uint256 myUint256;
        string myString;
    }

    myStruct public MyStruct = myStruct(1, "Hello, world!");
}
