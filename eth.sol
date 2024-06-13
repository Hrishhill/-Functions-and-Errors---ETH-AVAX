// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ValueManager {
    uint256 private value;

    event ValueChanged(uint256 newValue);

    // Function to set a new value
    function setValue(uint256 _newValue) public {
        // Input validation: _newValue must be greater than zero
        require(_newValue > 0, "New value must be greater than zero");

        // Ensure that the new value is different from the existing value
        assert(_newValue != value);

        value = _newValue;

        emit ValueChanged(_newValue);
    }

    // Function to perform division
    function performDivision(uint256 _numerator, uint256 _denominator) public pure returns (uint256) {
        // Input validation: _denominator must be non-zero
        require(_denominator != 0, "Denominator must be non-zero");

        // Check if the division is exact
        if (_numerator % _denominator != 0) {
            revert("Numerator is not divisible by denominator");
        }

        return _numerator / _denominator;
    }

    // Function to get the current value
    function getValue() public view returns (uint256) {
        return value;
    }
}
