// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract HelloWorld {
    
    uint256 internal _firstNumber;
    uint256 internal _secondNumber;
    uint256 _sum;
    bool internal _favoriteBool;

    function setPropsForSum(uint256 firstNumber, uint256 secondNumber) public {
        _firstNumber = firstNumber;
        _secondNumber = secondNumber;
    }

    function aSimpleSum() public {
        _sum = _firstNumber + _secondNumber;
    }

    function getSum() public view returns(uint256){
        return _sum;
    }

    // Employees
    
    struct Employee {
        uint256 _id;
        string _fullname;
        string _addy;
    }

    Employee[] public employees;
    mapping(uint256 => Employee) public employeesMap;

    function addEmployeeA(uint256 id, string memory fullname, string memory addy) public {
        employees.push(Employee(id, fullname, addy));
    }

    function addEmployeeM(uint256 id, string memory fullname, string memory addy) public {
        employeesMap[id] = Employee(id, fullname, addy);
    }

    function getEmployees() public view returns(Employee[] memory) {
        return employees;
    }

   
}
