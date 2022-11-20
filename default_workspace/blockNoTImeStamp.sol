pragma solidity ^0.8.0;

contract structure {
    function getter() public view returns(uint block_no, uint timestamp, address msgSender){
        return(block.number, block.timestamp, msg.sender);
    }
}
