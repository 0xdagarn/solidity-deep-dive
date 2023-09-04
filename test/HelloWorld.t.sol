// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld hello;

    function setUp() public {
        hello = new HelloWorld("Hello, World!");
    }

    function test1() public {
        assertEq(hello.greet(), "Hello, World!");
    }

    function test2() public {
        assertEq(hello.version(), 0);

        hello.updateGreeting("Goodbye, World!");
        assertEq(hello.version(), 1);
        assertEq(hello.greet(), "Goodbye, World!");
    }

    function test3(string memory _greeting) public {
        assertEq(hello.version(), 0);

        emit log(_greeting);
        hello.updateGreeting(_greeting);
        assertEq(hello.version(), 1);
        assertEq(hello.greet(), _greeting);
    }
}