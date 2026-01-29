// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Voting {
    uint public age;
    string public result;

    function checkVoting(uint _age) public {
        age = _age;

        if (_age < 18) {
            result = "You can't vote";
        } else {
            result = "You can vote";
        }
    }
}
