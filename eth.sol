// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandlingContract {

    uint gravity = 10;  // Gravitational constant
    address owner;      // Address of the contract owner

    constructor() {
        owner = msg.sender;  // Set the contract deployer as the owner
    }

    function calculateWeight(uint _mass) public view returns (uint) {
        require(owner == msg.sender, "Only the owner can calculate weight");  // Restrict access to the owner
        assert(_mass > 0);  // Ensure mass is greater than zero
        
        uint weight = _mass * gravity;

        if (weight == 0) {
            revert("Weight of the object cannot be zero");  // Revert if weight calculation results in zero
        }

        return weight;  // Return the calculated weight
    }
}
