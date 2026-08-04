// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

// TrustFabric by Isiphile Maqhashu
// A blockchain-based trust and integrity layer for enterprise networking infrastructure.
// Version 0.1

contract TrustFabric {

    // Represents one registered infrastructure asset.
    struct Asset {

        // Unique identifier for the infrastructure asset.
        string assetId;

        // Cryptographic fingerprint of the approved configuration.
        // The actual configuration remains off-chain.
        bytes32 configurationHash;

        // Wallet address that registered the asset.
        address registeredBy;

        // Unix timestamp recording when the asset was registered.
        uint256 registeredAt;

    }

    // List of all registered infrastructure assets.
    Asset[] public assets;

    // Registers a new infrastructure asset.
    function registerAsset(
        string memory _assetId,
        bytes32 _configurationHash
    ) public {

        Asset memory newAsset = Asset(
            _assetId,
            _configurationHash,
            msg.sender,
            block.timestamp
        );

        assets.push(newAsset);

    }

}