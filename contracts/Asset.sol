// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

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