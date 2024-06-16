// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Mapping {
    mapping (address => uint256) public myMap;

    function get(address _addr) public view returns(uint256) {
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}

contract NestedMapping {
    mapping (address => mapping (uint256 => bool)) public nested;

    function get(address _addr1, uint256 _i) public view returns (bool){
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint256 _i, bool _bool) public {
        nested[_addr1][_i] = _bool;
    }

    function remove(address _addr1, uint256 _i) public {
        delete nested[_addr1][_i];
    }
}