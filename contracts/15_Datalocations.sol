// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract DataLocations {
    // storage variable is a state variable (store on blockchain)
    // memory variable is in memory and it exists while a function is being called
    // calldata special data location that contains function arguments

    uint256[] public arr;
    mapping(uint256 => address) map;

    struct MyStruct {
        uint256 foo;
    }

    mapping (uint256 => MyStruct) myStructs;

    function f() public {
        _f(arr,map, myStructs[1]);

        // MyStruct storage myStrcut = myStructs[1];
        // MyStruct memory myMemStruct = MyStruct(0);

    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStrcut
    ) internal  {

    }

}