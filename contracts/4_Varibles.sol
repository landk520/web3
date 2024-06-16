// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Varibles {
    string public text = "Hello";
    uint256 public num = 123;

    event Log(uint256, uint256, address);

    function doSomething() public view {
        // //local
        // uint256 i256 = 456;
        
        // // global
        // uint256 timestamp = block.timestamp;
        // address addr = msg.sender;

    }
}