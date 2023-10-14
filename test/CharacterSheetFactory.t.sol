// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
pragma abicoder v2;

import "forge-std/Test.sol";

import "./setup/SetUp.sol";

// import "forge-std/console2.sol";

contract CharacterSheetsTest is Test, SetUp {
    function testDeployment() public {
        address _implementationStorage = characterSheetsFactory.getImplementationsAddressStorageAddress();

        assertEq(_implementationStorage, address(implementationStorage), "wrong implementations");
    }

    function testUpdateCharacterSheetsImplementation() public {
        vm.prank(admin);
        vm.expectEmit(true, false, false, false);
        emit CharacterSheetsUpdated(address(1));
        characterSheetsFactory.updateCharacterSheetsImplementation(address(1));
        assertEq(characterSheetsFactory.characterSheetsImplementation(), address(1));
    }

    // function testUpdateItemsImplementation() public {
    //     vm.prank(admin);
    //     vm.expectEmit(true, false, false, false);
    //     emit ItemsUpdated(address(1));
    //     characterSheetsFactory.updateItemsImplementation(address(1));
    //     assertEq(characterSheetsFactory.itemsImplementation(), address(1));
    // }

    // function testUpdateERC6551Registry() public {
    //     vm.prank(admin);
    //     vm.expectEmit(false, false, false, false);
    //     emit RegistryUpdated(address(1));
    //     characterSheetsFactory.updateERC6551Registry(address(1));
    //     assertEq(characterSheetsFactory.erc6551Registry(), address(1));
    // }

    // function testUpdaterERC6551AccountImplementation() public {
    //     vm.prank(admin);
    //     vm.expectEmit(false, false, false, false);
    //     emit ERC6551AccountImplementationUpdated(address(1));
    //     characterSheetsFactory.updateERC6551AccountImplementation(address(1));
    //     assertEq(characterSheetsFactory.erc6551AccountImplementation(), address(1));
    // }

    // function testUpdateClassesImplementation() public {
    //     vm.startPrank(admin);
    //     vm.expectEmit(false, false, false, false);
    //     emit ClassesImplementationUpdated(address(1));
    //     characterSheetsFactory.updateClassesImplementation(address(1));
    //     vm.stopPrank();

    //     assertEq(characterSheetsFactory.classesImplementation(), address(1));
    // }

    // function testCreateExperience() public {
    //     vm.prank(player1);
    //     address newExperience = characterSheetsFactory.createExperience();

    //     assert(address(experience) != newExperience);
    // }

    // function testCreateCharacterSheets() public {
    //     vm.prank(player1);
    //     address newSheets = characterSheetsFactory.createCharacterSheets();
    //     assert(newSheets != address(characterSheets));
    // }

    // function testCreateItems() public {
    //     vm.prank(player1);
    //     address newItems = characterSheetsFactory.createItems();
    //     assert(newItems != address(items));
    // }

    // function testCreateClasses() public {
    //     vm.prank(player1);
    //     address newClasses = characterSheetsFactory.createClasses();
    //     assert(newClasses != address(classes));
    // }

    // function testCreateCharacterEligibilityAdaptor() public {
    //     vm.prank(player1);
    //     address newEligibility = characterSheetsFactory.createCharacterEligibilityAdaptor(address(eligibility));
    //     assert(newEligibility != address(eligibility));
    // }

    // function testCreateClassLevelAdaptor() public {
    //     vm.prank(player1);
    //     address newClassLevel = characterSheetsFactory.createClassLevelAdaptor(address(classLevels));
    //     assert(newClassLevel != address(classLevels));
    // }

    // function testInitializeContracts() public {
    //     vm.startPrank(player1);

    //     address newSheets = characterSheetsFactory.createCharacterSheets();

    //     address newItems = characterSheetsFactory.createItems();

    //     address newExperience = characterSheetsFactory.createExperience();

    //     address newClasses = characterSheetsFactory.createClasses();

    //     address newEligibility = characterSheetsFactory.createCharacterEligibilityAdaptor(address(eligibility));

    //     address newClassLevel = characterSheetsFactory.createClassLevelAdaptor(address(classLevels));

    //     address newItemsManager = characterSheetsFactory.createItemsManager();

    //     address newHatsAdaptor = characterSheetsFactory.createHatsAdaptor(address(storedImp.hatsAdaptorImplementation));
    //     address newClones = characterSheetsFactory.createClonesStorage();

    //     address[] memory dungeonMasters = new address[](1);
    //     dungeonMasters[0] = player1;
    //     bytes memory encodedInitData = abi.encode(
    //         newEligibility,
    //         newClassLevel,
    //         dungeonMasters,
    //         newSheets,
    //         newExperience,
    //         newItems,
    //         newItemsManager,
    //         newClasses
    //     );

    //     bytes memory stringData = abi.encode(
    //         "test_metadata_uri_character_sheets/",
    //         "test_base_uri_character_sheets/",
    //         "test_base_uri_items/",
    //         "test_base_uri_classes/"
    //     );
    //     characterSheetsFactory.initializeContracts(address(newClones), encodedInitData, stringData);

    //     assertEq(ItemsImplementation(newItems).getBaseURI(), "test_base_uri_items/", "incorrect items base uri");
    //     assertEq(ClassesImplementation(newClasses).getBaseURI(), "test_base_uri_classes/", "incorrect classes baseUri");
    //     assertEq(
    //         CharacterSheetsImplementation(newSheets).baseTokenURI(),
    //         "test_base_uri_character_sheets/",
    //         "incorrect sheets base uri"
    //     );
    //     assertEq(ExperienceImplementation(newExperience).name(), "Experience", "incorrect experience name");
    // }
}
