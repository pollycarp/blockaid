// SPDX-licence-Identifier: MIT
pragma solidity ^0.8.21;

/**
* @title AidDistributor
* @dev A minimal contract that lets an NGO wallet receive donaions and disburse them to pre-registered recipients. All funds are handled in the native token (MATIC on polygon)
*
*
*   Extensions that I will add later:
*       * ERC20 stable-token support
*       * Off-chain DID verification via chainlink function
*       * Pull-payment pattern so recipients withdraw themselves
*       * Role-based access (Openzeppelin AccessControl)
*/

import "@openzeppelin/contracts/access/ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract AidDistributor is ownable, ReentrancyGuard.sol";

