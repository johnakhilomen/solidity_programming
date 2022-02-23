pragma solidity 0.5.16;

contract Student {

constructor() public {
    addStudent("Joe");
    addStudent("Bob");
    addStudent("Sally");
}
    struct S_Student {
        uint id;
        string name;
        uint coursesCount;
    }
    mapping(uint => S_Student) public students;
    uint public studentsCount;
    
    function addStudent (string memory _name) private {
        studentsCount++;
        students[studentsCount] = S_Student(studentsCount, _name, 0);
    }
}