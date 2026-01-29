// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract BalanceCheck {
    uint public balance;
    string public result;

    function checkBalance(uint _balance) public {
        balance = _balance;

        if (_balance == 0) {
            result = "Zero balance";
        } else if (_balance < 1000) {
            result = "Low balance";
        } else {
            result = "Sufficient balance";
        }
    }
}
