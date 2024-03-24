# Smart Contract Overview:

The IdentityVerification smart contract enables users to securely store and verify their identity on the blockchain. It comprises:

- **Struct UserInfo**: Defines user information such as name, age, phone number, and verification status.
- **Mapping users**: Associates Ethereum addresses with user information for storage and retrieval.
- **Event IdentityVerified**: Signals successful identity verification for external applications.
- **Functions**: 
    - inputUserData: Allows users to input personal data.
    - verifyIdentity: Lets users verify their identity.

Potential Impact:

- **Decentralization**: Eliminates centralized verification authorities, reducing data breaches and identity theft.
- **Transparency**: Users can verify their identity data, fostering trust and accountability.
- **Immutable Records**: Identity data stored on the blockchain is tamper-proof and permanent.
- **Interoperability**: Integration with other DApps enables secure identity verification across platforms.

Implementation:

Due to issues encountered on the base network, deployment to Sepolia testnet was necessary. This smart contract has the potential to revolutionize identity verification by enhancing security, privacy, and interoperability.
