// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Student {

    struct student {
        string name;
        uint256 rollno;
        string className;
    }

    student[] private students;

    function addStudent(
        string memory name,
        uint256 rollno,
        string memory className
    ) public {
        students.push(student(name, rollno, className));
    }

    function getStudentById(uint256 id)
        public
        view
        returns (string memory, uint256, string memory)
    {
        require(id < students.length, "Student doesn't exist in db");

        return (
            students[id].name,
            students[id].rollno,
            students[id].className
        );
    }

    function getTotalNumberOfStudent()
        public
        view
        returns (uint256)
    {
        return students.length;
    }
}