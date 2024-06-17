// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Error {

    function testRequire (uint256 x) public pure {
        require(x > 10, 'input must be greater than 10');
    }

    function testRevert(uint256 _i) public pure {
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    function testAssert(uint256 i) public pure {
        // assert 是 Solidity 中用于检查条件并在条件不满足时停止执行的函数。
        // 它通常用于测试和调试，确保特定条件在智能合约中始终为真。assert 失败时，会消耗所有剩余的 gas 并回滚交易
        assert(i == 10);
    }

    // custom error
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function testCustomError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({
                balance: bal,
                withdrawAmount: _withdrawAmount
            });
        }
    }
}