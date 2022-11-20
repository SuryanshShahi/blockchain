pragma solidity ^0.8.0;

contract ifElse {
    
    function check(int a) public pure returns(string memory value) {
        if(a>0){
            value="yes";
        }else if(a==0){
            value="equals";
        }else{
            value="no";
        }
        return value;
    }
}
