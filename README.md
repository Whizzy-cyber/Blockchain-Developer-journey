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

## Week 1 - Day 4
**Topic:** Arrays and Structs

**What I learned:** Arrays store lists of the same data type. 
Structs allow you to create custom data types that group 
different variables together.

**Code written:** Examples using arrays and structs inside 
SimpleStorage contract

## Week 1 - Day 5
**Topic:** Errors and Warnings in Solidity

**What I learned:** Errors and warnings are different — 
warnings don't stop code from compiling but errors do. 
Debugging requires patience and attention to detail.

**Real debugging experience:** Spent time tracking down 
a missing semicolon in my own contract. Found it myself.

**Key lesson:** Always read error messages carefully before 
assuming the problem is complex.

## Week 1 - Day 6
**Topic:** Calldata, Memory and Storage

**What I learned:** These are the three places Solidity 
stores data. Storage is permanent and costs more gas. 
Memory is temporary. Calldata is read-only 
input data and cheaper.

## Week 1 - Day 7
**Topic:** Mapping

**What I learned:** Mapping works like a dictionary — 
you give it a key and it returns a value. More efficient 
than arrays for direct lookups.

**Key insight:** Before writing any code follow this order:
Problem → Logic → Structure → Syntax.
Most beginners freeze because they skip straight to syntax.

## Week 2 - Day 1
**Topic:** Testnet Deployment & Etherscan

**What I learned:** Deploying to a real testnet requires 
native currency for gas. Etherscan shows how the blockchain 
state updates after each transaction. Did full section 
revision.

**Pending:** Deploy SimpleStorage on Sepolia once I get 
test ETH from faucet.

## Section 1 Complete ✅
**Topics covered:** Solidity basics, variable types, 
functions, visibility, scope, arrays, structs, errors, 
calldata/memory/storage, mapping, deployment.

**Biggest lesson:** Problem → Logic → Structure → Syntax. 
Don't jump straight into coding.

**Milestone:** Deployed SimpleStorage contract on Remix VM. 
Understand full testnet deployment flow.