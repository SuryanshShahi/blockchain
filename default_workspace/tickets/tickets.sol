pragma solidity ^0.8.0;

contract ticket {
    struct Event {
        address organizer;
        string name;
        uint256 date;
        uint256 price;
        uint256 ticketCount;
        uint256 ticketRemaining;
    }

    mapping(uint256 => Event) public events;
    mapping(address => mapping(uint256 => uint256)) public tickets;
    uint256 public nextId;

    function createEvent(
        string memory name,
        uint256 date,
        uint256 price,
        uint256 ticketCount
    ) external {
        require(
            date > block.timestamp,
            "You can organize event for future date"
        );
        require(
            ticketCount > 0,
            "You can organize event only if you create more than 0 tickets"
        );
        events[nextId] = Event(
            msg.sender,
            name,
            date,
            price,
            ticketCount,
            ticketCount
        );
        nextId++;
    }

    function buyTicket(uint256 id, uint256 quantity) external payable {
        require(events[id].date != 0, "Event does not exist");
        require(
            events[id].date > block.timestamp,
            "Event has already occurred"
        );
        Event storage _event = events[id];
        require(msg.value == (_event.price * quantity), "Ether is not enough");
        require(_event.ticketRemaining >= quantity, "Not enough tickets");
        _event.ticketRemaining -= quantity;
        tickets[msg.sender][id] += quantity;
    }

    function transferTickets(
        uint256 id,
        uint256 quantity,
        address to
    ) external {
        require(events[id].date != 0, "Event does not exist");
        require(
            events[id].date > block.timestamp,
            "Event has already occurred"
        );
        require(
            tickets[msg.sender][id] >= quantity,
            "You do not have enough tickets"
        );
        tickets[msg.sender][id] -= quantity;
        tickets[to][id] += quantity;
    }
}
