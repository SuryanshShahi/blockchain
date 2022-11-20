pragma solidity ^0.8.0;

contract lottery {
    address public manager;
    address payable[] public participants;

    constructor() {
        manager = msg.sender;
    }

    receive() external payable {
        require(msg.value == 1 ether);
        participants.push(payable(msg.sender));
    }

    function getBalance() public view returns (uint256) {
        require(msg.sender == manager);
        return address(this).balance;
    }

    function random() public view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        participants.length
                    )
                )
            );
    }

    function selectWinner() public {
        require(msg.sender == manager);
        require(participants.length >= 3);
        uint256 r = random();
        address payable winner;
        uint256 index = r % participants.length;
        winner = participants[index];
        winner.transfer(getBalance());
        participants = new address payable[](0); //reset
    }
}
