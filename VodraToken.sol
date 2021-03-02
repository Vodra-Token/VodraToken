// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// Using OpenZeppelin Implementation for security
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.0/contracts/token/ERC20/ERC20.sol
import "./ERC20.sol";

contract VodraToken is ERC20 {

    constructor () public ERC20("Vodra", "VDR") {
        _mint(msg.sender, 2 * (10**9) * (10 ** uint256(decimals())));
    }
}