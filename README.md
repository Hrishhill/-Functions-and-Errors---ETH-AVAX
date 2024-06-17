# ErrorHandlingContract

## Overview

The `ErrorHandlingContract` is a simple Solidity smart contract designed to perform a weight calculation based on a given mass and a fixed gravitational constant. It includes error handling to ensure that only the contract owner can perform calculations and that the input mass is valid.

## Features

- **Owner Restriction:** Only the contract owner can call the `calculateWeight` function.
- **Error Handling:** Utilizes `require`, `assert`, and `revert` statements to handle errors and ensure valid input.

## Contract Details

### State Variables

- `uint gravity`: A fixed gravitational constant set to 10.
- `address owner`: Stores the address of the contract owner.

### Constructor

The constructor is executed once when the contract is deployed. It sets the deployer of the contract as the owner.

```solidity
constructor() {
    owner = msg.sender;
}
```

### Functions

#### calculateWeight

This function calculates the weight of an object based on its mass and the gravitational constant.

```solidity
function calculateWeight(uint _mass) public view returns (uint) {
    require(owner == msg.sender, "Only the owner can calculate weight");  // Restrict access to the owner
    assert(_mass > 0);  // Ensure mass is greater than zero
    
    uint weight = _mass * gravity;

    if (weight == 0) {
        revert("Weight of the object cannot be zero");  // Revert if weight calculation results in zero
    }

    return weight;  // Return the calculated weight
}
```

**Parameters:**
- `_mass`: The mass of the object (must be greater than 0).

**Returns:**
- The calculated weight of the object.

**Error Handling:**
- Uses `require` to ensure that only the contract owner can call this function.
- Uses `assert` to ensure that the mass provided is greater than zero.
- Uses `revert` to handle the case where the calculated weight is zero (which should not happen given the assert statement).

## Usage

1. **Deploy the Contract:** Deploy the `ErrorHandlingContract` on the Ethereum blockchain.
2. **Call `calculateWeight`:** Only the contract owner can call this function by providing a valid mass to get the weight.

## Example

```solidity
// Deploy the contract
ErrorHandlingContract errorHandlingContract = new ErrorHandlingContract();

// Calculate weight (only callable by owner)
uint weight = errorHandlingContract.calculateWeight(5);
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


https://www.loom.com/share/b2dfdd25729246f9949f269ec029aa47

