// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Gas {
    uint256 public i = 0;

    function forever () public {
        while (true) {
            i += 1;
        }
    }
}