# ErrorContract

This Solidity program demonstrates error handling methods within smart contracts, showing the usage of functions implementing require, revert, and assert statements. These functions are used to manage different scenarios encountered when processing even numbers.

## Description

This program is a smart contract in Solidity that demonstrates error handling using `require`, `revert`, and `assert` statements. It has three functions to check if a given input unsigned integer is positive number. It will return a message if it is positive otherwise revert the transaction, or assert a condition.

### Executing Program

you can use Remix, an online IDE. https://remix.ethereum.org/.

1. Once on website Remix, create a new file on the left-hand sidebar "+" icon. Save the file with a .sol extension (e.g., ErrorHandling.sol).
2. Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorHandling {
    string public process = "It is a positive integer";

    function requireCheck(uint _x) public view returns (string memory) {
        require(_x > 0, "Input must be a positive number");
        return process;
    }

    function assertCheck(uint _x) public view returns (string memory) {
        assert(_x > 0);
        return process;
    }

    function revertCheck(uint _x) public view returns (string memory) {
        if (_x <= 0) {
            revert("Input should be positive");
        }
        return process;
    }
}
```

3. To compile the code, navigate to the "Solidity Compiler" tab located in the left-hand sidebar. Set the "Compiler" option to "^0.8.7" and then proceed by clicking the "Compile ErrorHandling.sol" button.

4. Upon successful compilation, initiate deployment by accessing the "Deploy & Run Transactions" tab from the left-hand sidebar. Choose the "ErrorHandling" contract from the options available in the Deployed Contracts tab, followed by clicking the "Deploy" button.

5. After deployment, you can interact with the contract by calling its functions. Click on the "ErrorHandling" contract in the left-hand sidebar, and then click on any of its functions to interact with it.

## Authors

Akshay B
9999akbr@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
