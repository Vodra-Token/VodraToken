// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./StandardToken.sol";

contract VodraToken is StandardToken {

    uint8 public constant decimals = 18;
    uint8 public constant version = 1;
    string public constant name = "Vodra";
    string public constant symbol = "VDR";
    uint256 public constant totalTokens = 2 * (10**9) * 10**decimals;

    constructor() {
        totalSupply_ = totalTokens;
        balances[msg.sender] = totalSupply_;
    }

    function creatorRedemptions(address[] memory _redemptionRecipients, uint256[] memory _values) public returns (bool) {
        require(_redemptionRecipients.length == _values.length);

        uint256 length = _redemptionRecipients.length;
        for (uint i = 0; i < length; i++) {
            transfer(msg.sender, _values[i]);
        }

        return true;
    }
}