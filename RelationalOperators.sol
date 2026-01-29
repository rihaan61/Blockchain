//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RelationalOperators {
    uint public a = 20;
    uint public b = 6;

    // Greater than (>)
    function greaterThan() public view returns (bool) {
        return a > b;
    }

    // Less than (<)
    function lessThan() public view returns (bool) {
        return a < b;
    }

    // Greater than or equal to (>=)
    function greaterThanOrEqual() public view returns (bool) {
        return a >= b;
    }

    // Less than or equal to (<=)
    function lessThanOrEqual() public view returns (bool) {
        return a <= b;
    }

    // Equal to (==)
    function equalTo() public view returns (bool) {
        return a == b;
    }

    // Not equal to (!=)
    function notEqualTo() public view returns (bool) {
        return a != b;
    }
}
