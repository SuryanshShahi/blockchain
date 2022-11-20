// SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract identity {
    string name;
    uint256 age;

    constructor() public {
        name = "suryansh";
        age = 22;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint256) {
        return age;
    }
    function setAge() public {
        age=age+1;
    }
}
