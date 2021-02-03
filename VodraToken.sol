// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./StandardToken.sol";

contract VodraToken is StandardToken {

    uint8 public constant decimals = 18;
    bytes32 public constant name = bytes32("Vodra");
    bytes32 public constant symbol = bytes32("VDR");
    bytes32 public version = bytes32("1.0");
    uint256 public constant totalTokens = 2 * (10**9) * 10**decimals;

    constructor() {
        totalSupply_ = totalTokens;
        balances[msg.sender] = totalSupply_;
    }

    function transferMultiple(address _from, address[] _toArray, uint256[] _valueArray) {
        require(_toArray.length == _valueArray.length);

        for (uint i=0; i< _toArray.length; i++) {
            // Transfers from _from to current value in _toArray
        }
    }

    function transferFromMultiple(address _to, address[] _fromArray, uint256[] _valueArray) {
        require(_fromArray.length == _valueArray.length);

        for (uint i=0; i< _fromArray.length; i++) {
            // Transfers from current value in _fromArray to _to
        }
    }
}