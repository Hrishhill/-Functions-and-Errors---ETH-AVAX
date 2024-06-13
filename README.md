# -Functions-and-Errors---ETH-AVAX
Smart Contract Project For this project, write a smart contract that implements the require(), assert() and revert() statements.
Sure! Here's a suggested description for your project that you can include in the README file on GitHub:

---

# ValueManager Smart Contract

## Description

The `ValueManager` smart contract is a Solidity-based contract designed to demonstrate the use of input validation and error handling in Ethereum smart contracts using the `require()`, `assert()`, and `revert()` statements. This project ensures robust value management and safe arithmetic operations, adhering to best practices in Solidity programming.

## Features

### setValue Function
- **Purpose:** Sets a new value for the contract.
- **Input Validation:** 
  - Ensures the new value `_newValue` is greater than zero using the `require()` statement.
  - Ensures the new value is different from the existing value using the `assert()` statement.
- **Events:**
  - Emits a `ValueChanged` event upon successful update of the value.

### performDivision Function
- **Purpose:** Performs division of two numbers and returns the result.
- **Input Validation:**
  - Ensures the `_denominator` is non-zero using the `require()` statement.
  - Uses the `revert()` statement to provide a specific error message if the `_numerator` is not divisible by the `_denominator`.

### getValue Function
- **Purpose:** Retrieves the current value stored in the contract.

## Usage

1. **Deploy the Contract:**
   - Deploy the `ValueManager` contract to an Ethereum network.

2. **Set a Value:**
   - Call the `setValue` function with a positive integer to set a new value.

3. **Perform Division:**
   - Call the `performDivision` function with two integers where the denominator is non-zero. The function will return the result if the division is exact, otherwise, it will revert with an error message.

4. **Get Current Value:**
   - Call the `getValue` function to retrieve the current value stored in the contract.

## Example

```solidity
// Set a new value
valueManager.setValue(10);

// Perform division
uint256 result = valueManager.performDivision(20, 2); // Returns 10

// Get the current value
uint256 currentValue = valueManager.getValue(); // Returns 10
```

## Error Handling

- **require():** Used to check conditions that must be met before executing the function logic, preventing the function from proceeding if the condition is not met.
- **assert():** Used to check for conditions that should always be true and indicates a serious error if the condition is not met.
- **revert():** Used to provide specific error messages and revert the transaction if certain conditions are not met during execution.

## License

This project is licensed under the MIT License.

---


https://www.loom.com/share/b2dfdd25729246f9949f269ec029aa47

