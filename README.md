# simple-storage-solidity

Foundry-based Solidity milestone covering:

- SimpleStorage
- AddFiveStorage
- StorageFactory

## What this repository contains

### 1. SimpleStorage
Core storage contract covering:
- state variables
- public getters
- manual read function
- struct
- array
- mapping

### 2. AddFiveStorage
Inheritance and overriding:
- inherits from `SimpleStorage`
- overrides `store()`
- stores `input + 5`

### 3. StorageFactory
Factory pattern:
- creates new `SimpleStorage` contracts
- stores child contract references
- interacts with a chosen child contract by index

## Project structure

### Source contracts
- `src/SimpleStorage.sol`
- `src/AddFiveStorage.sol`
- `src/StorageFactory.sol`

### Tests
- `test/SimpleStorage.t.sol`
- `test/AddFiveStorage.t.sol`
- `test/StorageFactory.t.sol`

## Test coverage

This checkpoint includes:
- 4 tests for `SimpleStorage`
- 2 tests for `AddFiveStorage`
- 2 tests for `StorageFactory`

Total: **8 passing tests**

## How to run locally

```bash
forge build
forge test
forge test -vvvv
```

## Key concepts practiced

- state variables
- getters
- read path vs write path
- structs
- arrays
- mappings
- inheritance
- `virtual` / `override`
- contract creation with `new`
- factory pattern
- contract-to-contract interaction
- Foundry testing
- execution traces

## Current milestone

This repository now represents my Foundry milestone for:
- `SimpleStorage`
- `AddFiveStorage`
- `StorageFactory`

## Next module

- FundMe

