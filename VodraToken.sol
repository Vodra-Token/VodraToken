pragma solidity ^0.8.0;
import "./StandardToken.sol";

contract VodraToken is StandardToken {

    string public constant name = "Vodra";
    string public constant symbol = "VDR";
    uint8 public constant decimals = 18;
    uint256 public constant totalTokens = 2 * (10**9) * 10**decimals;
    string public version = "1.0";

    constructor() public {
        totalSupply = totalTokens;
        balances[msg.sender] = totalSupply;
    }
}