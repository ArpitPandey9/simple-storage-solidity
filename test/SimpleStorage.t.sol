// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function test_StoreUpdatesMyFavoriteNumber() public {
        simpleStorage.store(7);
        assertEq(simpleStorage.myFavoriteNumber(), 7);
    }

    function test_RetrieveReturnsStoredValue() public {
        simpleStorage.store(25);
        uint256 storedValue = simpleStorage.retrieve();
        assertEq(storedValue, 25);
    }

    function test_AddPersonUpdatesListOfPeople() public {
        simpleStorage.addPerson("Arpit", 7);

        (uint256 favoriteNumber, string memory name) = simpleStorage.listOfPeople(0);

        assertEq(favoriteNumber, 7);
        assertEq(name, "Arpit");
    }

    function test_AddPersonUpdatesNameToFavoriteNumber() public {
        simpleStorage.addPerson("Arpit", 7);

        uint256 favoriteNumber = simpleStorage.nameToFavoriteNumber("Arpit");

        assertEq(favoriteNumber, 7);
    }
}