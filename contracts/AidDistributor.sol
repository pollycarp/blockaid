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

contract AidDistributor is ownable, ReentrancyGuard {
    struct Recipient {
        bool registered;
        uint64 countryCode; // example metadata
        uint256 receivedTotal; //cumulative aid received
    }

    mapping(address => Recipient) private recipients;

    event RecipientRegistered(address indexed wallet, uint64 countryCode);
    event DonationReceived(address index donor, uint256 amount);
    event AidSent(address indexed recipient, uint256 amount);

    /*--------------------Registration------------------------*/
    ///@notice NGO (owner) registers a recipient's wallet
    function registerRecipient(address _wallet, uint64 _ countryCode)
        external
        onlyOwner
    {
        require(_wallet !=address(0), "Zero address");
        require(!recipients[_wallet].registered, "Already registered");

        recipients[_wallet] = Recipient({
            registered: true,
            countryCode: _countryCode,
            receivedTotal: 0
        });
        emit RecipientRegistered(_wallet, countryCode);
    }

    function isRegistered(address _wallet) external view returns (bool) {
        return recipients[_wallet].registered;
    }

    /*--------------------Donations------------------------*/

    /// @notice Anyone can donate native MATIC to the pool
    recieve() external payable {
        emit DonationReceived(msg.sender, msg.value);
    }

    /// @notice Explicit donate function (optional)
    function donate() external payable {
        emit DonationReceived(msg.sender, msg.value);
    }

    /*--------------------Disbursement------------------------*/

    /**
     * @notice NGO (owner) sends aid to a registered recipient
     * @dev Uses call{} to forward all remaining gas & prevent 2300-gas issues
     */
    function distributeAid(address payable _recipient, uint256 _amount)
        external
        onlyOwner
        nonReentrant
    {
        Recipient storage r = recipients[_recipient];
        require(r.registered, "Not registered");
        require(address(this).balance >= _amount, "Insufficient pool");

        r.receivedTotal += _amount;

        (bool ok, ) = _recipient.call{value: _amount}("");
        require(ok, "Transfer failed");

        emit AidSent(_recipient, _amount);
    }

    /*--------------------Getters------------------------*/

    function contractBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function recipientInfo(address _wallet)
        external
        view
        returns (Recipient memory)
    {
        return recipients[_wallet];
    }
}