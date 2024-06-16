// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Immutable {
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_UINT;

    // immutable类型的值可在构造函数中设置，之后不可修改
    constructor(uint256 _myUnt) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUnt;
    }
}