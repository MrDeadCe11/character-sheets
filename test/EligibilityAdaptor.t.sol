// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
pragma abicoder v2;

//solhint-disable

import "forge-std/Test.sol";

import "../src/implementations/ItemsImplementation.sol";
import "../src/lib/Structs.sol";
import "../src/lib/Errors.sol";
import "./helpers/SetUp.sol";

contract EligibilityAdaptorTest is Test, SetUp {
    function testSupportsInterface() public {
        assertTrue(eligibility.supportsInterface(0x01ffc9a7));
    }

    function testIsEligible() public {
        //#todo finish testing
    }
}