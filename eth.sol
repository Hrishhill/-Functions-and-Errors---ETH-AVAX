// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract SimpleAccessControl {
    address owner;
    uint private storedValue;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint _value) public {
        require(msg.sender == owner, "Only the owner can set the value");
        storedValue = _value;
    }

    function getValue() public view returns (uint) {
        return storedValue;
    }

    function restrictedFunction() public view {
        require(msg.sender == owner, "Only the owner can access this function");

        if (storedValue == 0) {
            revert("Stored value cannot be zero");
        }
    }

    function assertTest() public pure {
        uint testValue = 1;
        assert(testValue == 1); // This should always be true
    }
}
