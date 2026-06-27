// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DonationBox{  // The contract defines the name & opens the code body with curly bracket(i.e. a container that holds everything inside it). It also declares the code.
    address public owner;  // It declares a state var. called owner of type address with public visibility. It stores the address of whoever deploys the contract.
    constructor() { // It's a special function that runs only once @ the exact moment the contract is deployed. It means giving ownership to the person that deployed the contract.
        owner = msg.sender; // msg.sender is the person who deployed the contract or the address of whoever is currently interacting with the contract
    }
    address[] public donors; // array of the addresses. It's a dynamic array that stores the wallet addresses of everyone who has donated. Every time someone calls the donations function their address gets pushed into this list.
    mapping(address donors => uint256 amountDonated) public addressToAmountDonated; // To track donations per address or links each donor's address to the amount they donated. If you give it an address it tells you exactly how much that person has donated in total.

function donations() public payable { // function declares that this is a function. donations() is the name of the func., empty brackets mean it takes no parameters. public-anyone can call it from outside the contract. payable-it can receive ETH when called. A publicly accessible func. that accepts ETH when called
    donors.push(msg.sender); // Everytime someone calls the donations func. their wallet address gets added to the donors array so we have a record of everyone who donated.
    addressToAmountDonated[msg.sender] = addressToAmountDonated[msg.sender] + msg.value; // It takes whatever was already donated by that address and adds the new donation on top. OR it updates the donor's total by adding their new donation to whatever they've already given.
}

function getBalance() public view returns(uint256) { // view only reads the blockchain state, does not modify anything. returns(uint256) specifies that this func. will give back a number, specifically the balance amount. A publicly accessible, read-only func. that returns the contract's ETH balance as a number.
    return address(this).balance; // It returns the total ETH balance currently held by this contract. address(this) is the contract's own address where all donated funds are sitting.
}

function withdraw() public { // a publicly accessible func. that allows the owner to take all funds out of the contract. No payable needed because it's sending ETH out, not receiving it.
    require(msg.sender == owner, "Not the owner"); // require checks the condition (msg.sender = owner)- if the person calling the func. is not the owner, the transaction immediately reverts with the message "Not the owner". Nothing else in the func. exeutes.
    (bool success, ) = payable(msg.sender).call{value: address(this).balance}(""); // payable(msg.sender)- make the owner's address capable of receiving ETH, .call{value: address(this).balance}("")- send the entire contract balance to that address, (bool success, )- capture whether the transfer worked or not. success will be true if it went through, false if it failed. It attempt to send all the contract's ETH to the owner & record whether it worked.
    require(success, "Transfer failed"); // confirms if the transfer failed for any reason, revert the whole transaction.
 }
}
