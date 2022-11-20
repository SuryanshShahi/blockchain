pragma solidity ^0.8.0;

struct student{
    uint roll;
    string name;
}

contract structure {
   student public s1;

   constructor(uint _roll, string memory _name){
       s1.roll = _roll;
       s1.name = _name;
   }

   function change(uint _roll, string memory _name) public{
       student memory new_student=student({
           roll:_roll,
           name:_name
       });
       s1=new_student;
   }
}
