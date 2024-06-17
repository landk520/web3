// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Events {

    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, 'Hello World');
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}