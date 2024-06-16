// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Counter {
    uint256 public count;

    // Function to get the current count
    function get() public view returns(uint256){
        return  count;
    }

    // Function to incremeny count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function decs() public{
        count -= 1;
    }
}