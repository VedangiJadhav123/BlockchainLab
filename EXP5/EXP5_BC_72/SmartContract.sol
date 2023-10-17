pragma solidity ^0.8.0;

contract Student{
  uint seat_avl=2;
 struct admission{
     string name_student;
     string course;
     uint roll_no;
     uint fee;
     
 } 
 admission[] stud1;
 modifier constraint1{
     require (seat_avl>0);
     _;
 }
 function addStudent(string memory _name_student, string memory _course, uint _roll_no, uint _fee) public constraint1
 {
     admission memory newAdmission=admission(_name_student, _course, _roll_no, _fee);
     seat_avl=seat_avl-1;
     stud1.push(newAdmission);
     
 }

function displayStudent() public view returns(admission[] memory)
{return stud1;
}
}