// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {StorageFactory} from "../src/StorageFactory.sol";

contract StorageFactoryTest is Test {
    StorageFactory public storageFactory;

    function setUp() public {
        storageFactory = new StorageFactory();
    }

    function test_CreateSimpleStorageContractAddsContractToArray() public {
        storageFactory.createSimpleStorageContract();

        address storedContractAddress = address(storageFactory.listOfSimpleStorageContracts(0));

        assertTrue(storedContractAddress != address(0));
    }

    function test_SfStoreUpdatesChosenSimpleStorageContract() public {
        storageFactory.createSimpleStorageContract();

        storageFactory.sfStore(0, 7);

        uint256 storedValue = storageFactory.sfGet(0);

        assertEq(storedValue, 7);
    }
}