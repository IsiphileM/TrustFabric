// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

// TrustFabric by Isiphile Maqhashu
// A blockchain-based trust and integrity layer for enterprise networking infrastructure.
// Version 0.2

// Import the Asset struct from Asset.sol.
import { Asset } from "./Asset.sol";

contract TrustFabric {

    // List of all registered infrastructure assets.
    Asset[] public assets;

    // Maps an asset ID to its position in the assets array.
    // A value of 0 means the asset has not been registered.
    // Stored values are array index + 1.
    mapping(string => uint256) public assetIndex;

    // Registers a new infrastructure asset.
    function registerAsset(
        string memory _assetId,
        bytes32 _configurationHash
    ) public {

        // Ensure an asset cannot be registered twice.
        require(
            assetIndex[_assetId] == 0,
            "Asset ID already exists."
        );

        Asset memory newAsset = Asset(
            _assetId,
            _configurationHash,
            msg.sender,
            block.timestamp
        );

        assets.push(newAsset);

        // Store the array position (+1) for quick future lookups.
        assetIndex[_assetId] = assets.length;

    }

    // Returns all information about a registered asset.
    function getAsset(
        string memory _assetId
    )
        public
        view
        returns (
            string memory,
            bytes32,
            address,
            uint256
        )
    {

        require(
            assetIndex[_assetId] != 0,
            "Asset does not exist."
        );

        uint256 index = assetIndex[_assetId] - 1;

        Asset memory asset = assets[index];

        return (
            asset.assetId,
            asset.configurationHash,
            asset.registeredBy,
            asset.registeredAt
        );

    }

}