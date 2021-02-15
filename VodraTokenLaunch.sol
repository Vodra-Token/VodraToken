// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./VodraToken.sol";

contract VodraTokenLaunch is VodraToken {

    uint8 public constant decimals = 18;
    uint8 public constant version = 1;
    string public constant name = "Vodra";
    string public constant symbol = "VDR";
    uint256 public constant totalTokens = 2 * (10**9) * 10**decimals;

    constructor() {
        totalSupply_ = totalTokens;
        balances[msg.sender] = totalSupply_;
    }
}