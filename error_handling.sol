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