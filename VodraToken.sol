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

    function transferMultiple(address[] memory _toArray, uint256[] memory _valueArray) public returns (bool) {
        require(_toArray.length == _valueArray.length);

        uint256 length = _toArray.length;
        for (uint i=0; i< length; i+=1) {
            require(transferInternal(_toArray[i], _valueArray[i]));
        }

        return true;
    }

    // function transferFromMultiple(address _to, address[] _fromArray, uint256[] _valueArray) public returns (bool) {
    //     require(_fromArray.length == _valueArray.length);

    //     uint256 length = _fromArray.length;
    //     for (uint i=0; i< length; i+=1) {
    //         // Transfers from current value in _fromArray to _to
    //     }
    // }
}