# TrustFabric Learning Log

---

This document records what I learn throughout the development of TrustFabric.

Rather than documenting the project itself, this file documents my understanding/thought proces
As I continue learning, I will update this document after completing an important section to TrustFabric. or after each section. or implementing new features.

---

# Entry 01 — Project Planning

### Progress

Today I created the initial repository structure and documented the project's overall vision.

Instead of immediately writing Solidity code, I decided to spend time understanding where blockchain genuinely provides value. I wanted the project to solve a real problem rather than forcing blockchain into an existing workflow. Above all else, i tried relating the project to Security and networking.

---

I learned that blockchain is not simply a distributed database.

Its real value comes from the fact that it's immutable, implements decentralization, cryptographic verification, it's transparent, and there's trust minimization. These characteristics make blockchain particularly useful for proving that information has not been modified.

in relation to TrustFabric; instead of storing confidential infrastructure configurations directly on-chain, I will store only their cryptographic hashes. If someone later presents a configuration file, its hash can be generated again and compared against the blockchain record. If the hashes match, I can prove that the file has not changed.

---


Current decisions;

- Infrastructure data stays off-chain.
- Only hashes are stored on-chain.
- Blockchain serves as the verification layer.
- Smart contracts become the source of truth for integrity verification.

---

### Repository Progress
Completed:

- Initial repository
- README
- Project Blueprint
- Learning Log
- Roadmap
- Architecture document
- Folder structure

---

### Challenges

The biggest challenge so far has been deciding where blockchain genuinely adds value.

I want TrustFabric to remain realistic instead of becoming unnecessarily complicated. After all, foundation matters a lot if there's any plans for expansion.

---

### Next Steps

Next I plan to:

- Continue the Blockchain Basics course
- Learn Solidity fundamentals
- Set up Foundry
- Write my first smart contract
- Deploy to the Sepolia Testnet


---

# Entry 02 — Solidity Fundamentals

### Progress

After completing the Solidity Fundamentals section of the Cyfrin Updraft course, I implemented the first working version of TrustFabric's smart contract.

Rather than following the tutorial exactly, I adapted each Solidity concept to fit TrustFabric's purpose as an integrity verification platform for enterprise networking infrastructure.

---

### What I Learned

This section introduced the core building blocks of Solidity.

I learned how to:

- Create and compile smart contracts
- Work with Solidity data types
- Write public functions
- Use structs to group related information
- Store multiple records using arrays
- Create fast lookups using mappings
- Use `memory` when creating temporary objects
- Prevent invalid actions using `require()`

---

### Applying These Concepts to TrustFabric

Instead of storing simple example data, I used these concepts to build the first version of TrustFabric.

The smart contract can now:

- Register infrastructure assets
- Store cryptographic configuration hashes
- Record who registered an asset
- Record when it was registered
- Store multiple assets
- Quickly locate assets by their identifier
- Prevent duplicate asset registrations

---

### Challenges

One concept I found particularly interesting was mappings.

At first they appeared similar to arrays, but I learned they solve a different problem by allowing data to be located efficiently without searching through every stored record.

I also learned why mappings return default values and why storing the array index plus one is a common Solidity pattern when checking whether a record already exists.

---

### Next Steps

Next I plan to:

- Continue with the next Cyfrin Updraft section
- Expand TrustFabric with additional smart contract functionality
- Continue improving both the codebase and documentation as the project grows
