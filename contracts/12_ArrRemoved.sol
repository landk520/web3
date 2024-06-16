// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ArrayRemovedByShifting {
    uint256[] public arr;

    function remove(uint256 _index) public {
        require(_index < arr.length);
        for(uint256 i = _index; i < arr.length; i++ ){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }
    
    function test() external {
        arr = [1,2,3,4,5,6,7,8];
        remove(2);
        
    }
}