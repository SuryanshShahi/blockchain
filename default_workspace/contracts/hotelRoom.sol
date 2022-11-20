pragma solidity ^0.8.0;

contract hotelRoom {
    enum Statuses {
        vacant,
        occupied
    }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint256 _value);

    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.vacant;
    }

    modifier onlyWhenVacant() {
        require(currentStatus == Statuses.vacant, "Currently Occupied");
        _;
    }

    modifier costs(uint256 _amount) {
        require(msg.value >= _amount, "Not enough ether");
        _;
    }

    function book() public payable onlyWhenVacant costs(2 ether) {
        currentStatus = Statuses.occupied;

        owner.transfer(msg.value);

        emit Occupy(msg.sender, msg.value);
    }
}
