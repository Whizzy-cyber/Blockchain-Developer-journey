// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract BankingContract {
    mapping(address => uint256) public balance;

    function deposit() public payable {
        balance[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
       require(balance[msg.sender] >= amount);
       balance[msg.sender] -= amount
       payable(msg.sender).transfer(amount);
    }

    function checkBalance() public view returns(uint256) {
        return balance[msg.sender];
    }
}
