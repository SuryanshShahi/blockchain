pragma solidity ^0.8.0;

contract map {
    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;
    mapping(address => mapping(uint256 => Book)) public myBooks;

    struct Book{
        string title;
        string author;
    }

    constructor(){
        names[1]="abc";
        names[2]="def";
        names[3]="ghi";
    }

    function addBook
        (uint _id,
        string memory _title,
        string memory _author
        )public{
            books[_id]=Book(_title,_author);
    }

    function addMyBook
        (uint _id,
        string memory _title,
        string memory _author
        )public{
            myBooks[msg.sender][_id]=Book(_title,_author);
    }
}
