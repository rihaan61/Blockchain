// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
Smart Subsidy Distribution System

The government introduced a blockchain-based smart contract to distribute
agricultural subsidies fairly.

A farmer is eligible to receive the subsidy only if:
- The farmer’s age is 21 years or above
- The farmer owns land
- The farmer is not marked as a defaulter

Additionally:
- If the farmer belongs to a priority category (small/marginal farmers),
- The subsidy should be approved even if land ownership is false,
- But only if the farmer is not a defaulter

Task:
- Design a Solidity smart contract
- Use logical AND (&&), OR (||), and NOT (!)
- Determine whether the farmer is eligible
- Return true if eligible, otherwise false
*/

contract Subsidy {

    function checkEligibility(
        uint age,
        bool ownsLand,
        bool isDefaulter,
        bool isPriority
    ) public pure returns (bool) {

        if (age >= 21 && !isDefaulter && (ownsLand || isPriority)) {
            return true;
        } else {
            return false;
        }
    }
}
