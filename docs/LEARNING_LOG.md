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
