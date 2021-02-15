// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./StandardToken.sol";

contract VodraToken is StandardToken {

    function creatorRedemptions(address[] memory _redemptionRecipients, uint[] memory _values) public returns (bool) {
        require(_redemptionRecipients.length == _values.length);

        uint256 senderBalance = balances[msg.sender];
        uint256 length = _redemptionRecipients.length;
        for (uint i = 0; i < length; i++) {
            uint value = _values[i];
            address recipient = _redemptionRecipients[i];

            require(senderBalance >= value);
            if (msg.sender != _redemptionRecipients[i]) {
                senderBalance -= value;
                balances[recipient] += value;
            }

            emit Transfer(msg.sender, recipient, value);
        }

        balances[msg.sender] = senderBalance;
        return true;
    }

    // Will require approval functions from individual senders
    // function transferFromMultiple(address _to, address[] _fromArray, uint256[] _valueArray) public returns (bool) {
    //     require(_fromArray.length == _valueArray.length);

    //     uint256 length = _fromArray.length;
    //     for (uint i=0; i< length; i+=1) {
    //         // Transfers from current value in _fromArray to _to
    //     }
    // }
}