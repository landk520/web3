// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract EitherUnits {
    uint256 public oneWei = 1 wei;
    bool public isOneWei = (oneWei == 1 wei);

    uint256 public oneGwei = 1 gwei;
    // 1gwei equal to 10^9 wei
    bool public isOneGwei = (oneGwei == 1e9);

    uint256 public oneEther = 1 ether;
    // 1ether equal to 10^18 wei
    bool public isOneEther = (oneEther == 1e18);

}