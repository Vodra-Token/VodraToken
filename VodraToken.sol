// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./StandardToken.sol";

contract VodraToken is StandardToken {

    uint8 public constant decimals = 18;
    string public constant name = "Vodra";
    string public constant symbol = "VDR";
    uint256 public constant totalTokens = 2 * (10**9) * 10**decimals;
    bytes32 public version = bytes32("1.0");

    constructor() {
        totalSupply_ = totalTokens;
        balances[msg.sender] = totalSupply_;
    }
}