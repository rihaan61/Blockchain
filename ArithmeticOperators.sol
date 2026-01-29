//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ArithmeticOperators{
    uint public a = 20;
    uint public b = 6;

    //Addition(+)
    function add() public view returns (uint) {
        return a + b;
    }

    //Subtraction(-)
     function sub() public view returns (uint) {
        return a - b;
    }

    //Multiplication(*)
    function multiply() public view returns (uint) {
        return a * b;
    }

    //Division(/)
    function div() public view returns (uint) {
        return a / b;
    }
    //Modulous(%)
    function mod() public view returns (uint) {
        return a % b;
    }

}
