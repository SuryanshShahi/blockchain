pragma solidity ^0.8.0;

contract pay {
    address payable user=payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2); 

    function payEther() public payable{   //payable hm wha likhte h jisme hm paise transfer krre h

    }
    function checkBal() public view returns(uint){
        return address(this).balance;
    }
    function sendEtherToAcc()public{
        user.transfer(1 ether);
    }
}
