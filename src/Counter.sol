// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract A {
    uint256 private _a;

    constructor(uint256 a) {
        console.log("A deployed");
        _a = a;
    }
}

contract B {
    uint256 private _b;

    constructor(uint256 b) {
        console.log("B deployed");
        _b = b;
    }
}

contract Counter is A, B {
    uint256 public number;

    constructor() A(1) B(2) {
        console.log("Counter deployed");
    }

    function setNumber(uint256 newNumber) public {
        console.log("setNumber(%s)", newNumber);
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
