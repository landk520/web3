// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Array {
    uint256[] public arr; //动态数组
    
    uint256[10] public myFixedSizeArr; // 静态数组

    function get(uint256 i) public view returns(uint256) {
        return arr[i];
    }

    function push(uint256 i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns(uint256) {
        return  arr.length;
    }

    function remove(uint256 i) public {
        delete arr[i];
    }

    // function examples () external pure {
    //     uint256[] memory a = new uint256[](5);
    // }

}