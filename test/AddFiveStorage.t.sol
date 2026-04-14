// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {AddFiveStorage} from "../src/AddFiveStorage.sol";

contract AddFiveStorageTest is Test {
    AddFiveStorage public addFiveStorage;

    function setUp() public {
        addFiveStorage = new AddFiveStorage();
    }

    function test_StoreAddsFiveToInput() public {
        addFiveStorage.store(7);
        assertEq(addFiveStorage.myFavoriteNumber(), 12);
    }

    function test_RetrieveReturnsValueAfterAddFiveLogic() public {
        addFiveStorage.store(10);
        uint256 storedValue = addFiveStorage.retrieve();
        assertEq(storedValue, 15);
    }
}