// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
Question:

Alex owns a small digital grain warehouse on a blockchain platform. Each day,
farmers deposit grain bags into the warehouse, and distributors withdraw grain
bags. Alex wants to implement a smart contract that correctly calculates the
warehouse stock after all transactions and losses.

Given the following information:
- Initial grain stock = 1000 bags
- Farmers deposit = 350 bags
- Distributors withdraw = 220 bags
- Some grain is damaged = 5% of the remaining stock
- Grain bags are packed in containers of 10 bags each

Task:
1. Add the deposited bags to the initial stock.
2. Subtract the withdrawn bags from the total stock.
3. Calculate the damaged grain bags as 5% of the remaining stock.
4. Determine the final usable grain stock after damage.
5. Calculate the number of full containers and the number of leftover grain bags.

Write a Solidity smart contract that performs the above calculations and
returns all intermediate and final results.
*/

contract GrainWarehouse {

    uint public initialStock = 1000;
    uint public deposit = 350;
    uint public withdraw = 220;
    uint public damagePercentage = 5;
    uint public bagsPerContainer = 10;

    function calculateStock() public view returns (
        uint totalAfterDeposit,
        uint totalAfterWithdraw,
        uint damagedBags,
        uint finalStock,
        uint containers,
        uint leftoverBags
    ) {
        // Step 1: Add deposited bags
        totalAfterDeposit = initialStock + deposit;

        // Step 2: Subtract withdrawn bags
        totalAfterWithdraw = totalAfterDeposit - withdraw;

        // Step 3: Calculate damaged bags (5%)
        damagedBags = (totalAfterWithdraw * damagePercentage) / 100;

        // Step 4: Final stock after damage
        finalStock = totalAfterWithdraw - damagedBags;

        // Step 5: Containers and leftover bags
        containers = finalStock / bagsPerContainer;

        // Step 6: Calculate leftover bags
        leftoverBags = finalStock % bagsPerContainer;
    }
}
