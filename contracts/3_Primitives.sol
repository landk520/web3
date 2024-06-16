// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Primitives {
    bool public boo = true;

    uint8 public u8 = 1; //  ranges from 0 to 2 ** 8 - 1
    uint16 public u166 = 10; // ranges from 0 to 2 ** 16 -1
    uint256 public u256 = 123; // ranges from 0 to 2 ** 256 -1

     /*
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int256 public i256 = 456;
    int256 public i =  -123;

    // minimum and maximun of int
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bytes1 a = 0xb5;
    bytes1 b = 0x56;

    // Default values
    bool public defaultBool; // false
    uint256 public defaultUint256; // 0
    int256 public defaultInt256; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000

}