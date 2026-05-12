# Blockchain-Developer-journey
## Week 1 - Day1
**Topic:** Introduction To Solidity & Remix IDE
**What I learned:** Every Solidity file starts with a license identifier and a pragma line that specifies the compiler version. A contract is declared using the contract keyword.
**Code written:** SimpleStorage contract (basic shell structure) whose purpose is to store and retrive data from blockchain state.
**Tool used:** Remix IDE
**How I felt:** Confused by Remix at first but getting familiar


## Week 1 - Day 2
**Topic:** Basic Variable Types

**What I learned:** Variables are placeholders for values. 
Solidity has specific types - bool, address, bytes, string, 
int and uint. This is how blockchain state is represented 
programmatically.

**Key insight:** Choosing the right variable type affects 
gas cost on the blockchain.

**Code written:** Basic variable declarations practice
**Code written:**
```solidity
bool hasFavoriteNumber = false;
uint256 favoriteNumber = 88;
string favoriteNumber = "eighty-eight";
int256 favoriteInt = -88;
address myAddress = 0x...;
bytes32 favoriteByte;
```

## Week 1 - Day 3
**Topic:** Functions, Visibility, Scope & First Deployment

**What I learned:** Functions are subsections of code that 
execute a specific task when called. Visibility keywords 
(public, private, internal, external) control who can 
access a function. Pure and view functions don't alter 
blockchain state. Deploying a contract costs gas.

**Milestone:** Deployed my first smart contract on Remix VM

**Code written:** SimpleStorage with functions and 
visibility keywords

**Self assessment:** Completed the Test Me section.