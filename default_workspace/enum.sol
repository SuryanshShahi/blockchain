pragma solidity ^0.8.0;


contract structure {
    enum user{allowed,not_allowed,wait}

    user public u1=user.allowed;
    uint public lottery = 1000;

    function User()public{
        if(u1==user.allowed){
            lottery=0;
        }
    }
    function changeUser()public{
        u1=user.not_allowed;
    }
}
