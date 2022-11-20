pragma solidity ^0.8.0;

contract GS{
    uint public age=10; //agr yha public dete h to getter bnane ki jrurt nhi h

    function getter() public view returns(uint){
        return age;
    }
    function setter(uint newAge) public{
        age=newAge;
    }    
}
