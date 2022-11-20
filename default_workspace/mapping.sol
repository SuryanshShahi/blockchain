pragma solidity ^0.8.0;

contract structure {
    // mapping(uint256 => string) public roll;

    // function setter(uint256 keys, string memory value) public {
    //     roll[keys] = value;
    // }
    struct student{
        string name;
        uint class;
    }
    mapping(uint256 => student) public data;

    function setter(uint _roll, string memory _name, uint _class) public {
        data[_roll] = student(_name, _class);
    }
}
