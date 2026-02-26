// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract VisibilityDemo {

    function publicFunc() public pure returns (string memory) {
        return "Public";
    }

    function externalFunc() external pure returns (string memory) {
        return "External";
    }

    function internalFunc() internal pure returns (string memory) {
        return "Internal";
    }

    function privateFunc() private pure returns (string memory) {
        return "Private";
    }

    // Function inside same contract
    function testCalls() public pure returns (
        string memory,
        string memory,
        string memory
    ) {
        return (
            publicFunc(),     //  allowed
            internalFunc(),   //  allowed
            privateFunc()     //  allowed
            // externalFunc()   not allowed
        );
    }
}

contract Child is VisibilityDemo {

    function testChild() public pure returns(
        string memory,
        string memory
    ) {
        return(
            publicFunc(),     // allowed
            internalFunc()    // allowed
            // privateFunc()    not allowed
            // externalFunc()   not allowed directly
        );
    }
}
