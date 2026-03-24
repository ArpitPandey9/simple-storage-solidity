# Simple Storage Solidity

A beginner-friendly Solidity project built in **Remix IDE** to practice the core building blocks of smart contract development.

This repository contains three small contracts that help explain:

- how to store and retrieve data on-chain
- how to use **structs**, **arrays**, and **mappings**
- how **inheritance** works in Solidity
- how one contract can **create and interact with another contract**

---

## Project Overview

This project is based on the classic `SimpleStorage` learning pattern.

It starts with a basic storage contract, then extends the idea using inheritance, and finally introduces a factory contract that can deploy multiple storage contracts.

The goal of this repository is not just to write code, but to understand **why each contract exists** and **how contracts relate to each other**.

---

## Contracts Included

### 1. `SimpleStorage.sol`
This is the base contract.

It demonstrates:

- storing a favorite number
- retrieving the stored number
- creating a `Person` struct
- storing multiple people in an array
- using a mapping to connect a person's name with their favorite number

### 2. `AddFiveStorage.sol`
This contract inherits from `SimpleStorage`.

It overrides the `store()` function so that instead of storing the number directly, it stores:

`number + 5`

This contract helps demonstrate:

- inheritance
- function overriding
- `virtual` and `override`

### 3. `StorageFactory.sol`
This contract creates and manages multiple `SimpleStorage` contracts.

It demonstrates:

- deploying contracts from inside another contract using `new`
- saving deployed contract addresses in an array
- interacting with already deployed contracts through their address/reference

---

## Concepts Practiced

This repo helps practice the following Solidity concepts:

- `pragma`
- state variables
- functions
- visibility (`public`)
- structs
- arrays
- mappings
- contract inheritance
- function overriding
- deploying contracts from contracts
- interacting with multiple contract instances

---

## Repository Structure

```text
.
├── AddFiveStorage.sol
├── SimpleStorage.sol
├── StorageFactory.sol
├── artifacts/
└── .states/
