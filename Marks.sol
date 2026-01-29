// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Marks {
    uint public marks;
    string public result;

    function checkMarks(uint _number) public {
        marks = _number;
        if (_number <= 40) {
            result = "Fail";
        } else {
            result = "Pass";
        }
    }
}
