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
Solidity has specific types - bool, address, bytes, string, int and uint. This is how blockchain state is represented programmatically.

**Key insight:** Choosing the right variable type affects gas cost on the blockchain.

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

**What I learned:** Functions are subsections of code that execute a specific task when called. Visibility keywords (public, private, internal, external) control who can access a function. Pure and view functions don't alter 
blockchain state. Deploying a contract costs gas.

**Milestone:** Deployed my first smart contract on Remix VM

**Code written:** SimpleStorage with functions and visibility keywords

**Self assessment:** Completed the Test Me section.

## Week 1 - Day 4
**Topic:** Arrays and Structs

**What I learned:** Arrays store lists of the same data type. 
Structs allow you to create custom data types that group different variables together.

**Code written:** Examples using arrays and structs inside SimpleStorage contract

## Week 1 - Day 5
**Topic:** Errors and Warnings in Solidity

**What I learned:** Errors and warnings are different — warnings don't stop code from compiling but errors do. 
Debugging requires patience and attention to detail.

**Real debugging experience:** Spent time tracking down a missing semicolon in my own contract. Found it myself.

**Key lesson:** Always read error messages carefully before assuming the problem is complex.

## Week 1 - Day 6
**Topic:** Calldata, Memory and Storage

**What I learned:** These are the three places Solidity stores data. Storage is permanent and costs more gas. 
Memory is temporary. Calldata is read-only 
input data and cheaper.

## Week 1 - Day 7
**Topic:** Mapping

**What I learned:** Mapping works like a dictionary — you give it a key and it returns a value. More efficient than arrays for direct lookups.

**Key insight:** Before writing any code follow this order:
Problem → Logic → Structure → Syntax.
Most beginners freeze because they skip straight to syntax.

## Week 2 - Day 1
**Topic:** Testnet Deployment & Etherscan

**What I learned:** Deploying to a real testnet requires native currency for gas. Etherscan shows how the blockchain state updates after each transaction. Did full section revision.

**Pending:** Deploy SimpleStorage on Sepolia once I get 
test ETH from faucet.

## Section 1 Complete ✅
**Topics covered:** Solidity basics, variable types,functions, visibility, scope, arrays, structs, errors,calldata/memory/storage, mapping, deployment.

**Biggest lesson:** Problem → Logic → Structure → Syntax. 
Don't jump straight into coding.

**Milestone:** Deployed SimpleStorage contract on Remix VM. 
Understand full testnet deployment flow.

## Week 2 - Day 2
**Topic:** Contract Interactions & Composability

**What I learned:** You can deploy a contract inside another contract and have them interact. Composability means building on top of existing contracts without rewriting them.

## Week 2 - Day 3
**Topic:** Imports

**What I learned:** Import statements let you bring in code from other files without copying the entire codebase. 
This is how developers build on existing contracts.

## Week 2 - Day 4
**Topic:** Contract Interaction & Inheritance

**What I learned:** ABI (Application Binary Interface) is what allows contracts to interact with each other — it defines the available functions and how to call them. 
Inheritance allows a contract to take on the properties of another. Override lets you rewrite inherited functions.

## Section 2 Complete ✅
**Topics covered:** Contract interactions, composability,imports, ABI, inheritance and override.

**Biggest lesson:** Imports eliminate the need to copy 
and paste code between files — one source of truth that everything pulls from.

**Milestone:** Understood how professional developers build on top of existing contracts instead of rewriting everything from scratch.

## Section 3 - Day 1
**Topic:** FundMe Contract - payable, require, revert

**What I learned:** Payable allows functions and addresses 
to receive ETH. Require sets conditions that must pass or 
the transaction fails. Revert undoes state changes when 
something goes wrong.

## Section 3 Complete ✅
**Topics covered:** FundMe contract, payable, require, revert,receive,fallback, constructor, custom errors, immutable variables, modifiers, for loops, libraries.

**Gas optimization:** constant and immutable keywords reduce gas costs by embedding values directly into contract bytecode instead of storing them in storage.

**Biggest challenge:** Doubted whether to continue but pushed through anyway.

**Key insight:** Smart contracts handling real funds require security patterns like modifiers and custom errors to protect against unauthorized access.

## Solidity 101 Complete ✅ 
Completed full Solidity curriculum. Ready for Foundry.


## Projects

### Project 1 - FavoriteNumber Contract ✅
**What it does:** Stores, retrieves and updates a favorite number on the blockchain.
**Concepts used:** uint256, public functions, view
**Status:** Compiled and deployed on Remix VM

### Project 2 - Contact Information Contract ✅
**What it does:** Stores and retrieves contacts with name and phone number.
**Concepts used:** Struct, dynamic array, memory keyword
**Status:** Compiled and deployed on Remix VM

### Project 3 - Donation Box Contract ✅
**What it does:** Accepts ETH donations, tracks each donor's contribution, owner can withdraw funds.
**Concepts used:** payable, require, constructor, 
mapping, msg.sender, msg.value
**Status:** Compiled successfully

### Project 4 - Voting System Contract ✅
**What it does:** Owner adds candidates and registers eligible voters. Registered voters cast one vote each.Results viewable by anyone.
**Concepts used:** Struct, array, mapping, constructor,modifier,require,access control
**Status:** Compiled and deployed on Remix VM
