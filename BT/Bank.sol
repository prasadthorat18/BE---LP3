// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {

    mapping(address => uint256) balances;

    // Deposit Money
    function DepositMoney(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");

        balances[msg.sender] += amount;
    }

    // Withdraw Money
    function WithdrawMoney(uint256 amount) public {
        require(amount > 0, "Amount must be greater than 0");

        require(amount <= balances[msg.sender],
                "Insufficient Balance");

        balances[msg.sender] -= amount;
    }

    // Show Balance
    function ShowBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}