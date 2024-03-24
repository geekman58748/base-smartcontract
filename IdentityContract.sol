// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract to store and verify user identity
contract IdentityVerification {
    // Struct to store user information
    struct UserInfo {
        string name; // User's name
        uint256 age; // User's age
        string phoneNumber; // User's phone number
        bool verified; // Flag indicating whether user's identity is verified
    }

    // Mapping to store user information by Ethereum address
    mapping(address => UserInfo) public users;

    // Event emitted when a user's identity is verified
    event IdentityVerified(address indexed user);

    // Function to input user's personal data
    function inputUserData(string memory _name, uint256 _age, string memory _phoneNumber) public {
        // Retrieve user's information based on their Ethereum address
        UserInfo storage user = users[msg.sender];
        // Set user's name
        user.name = _name;
        // Set user's age
        user.age = _age;
        // Set user's phone number
        user.phoneNumber = _phoneNumber;
        // Set verified flag to false by default
        user.verified = false;
    }

    // Function to verify user's identity
    function verifyIdentity() public {
        // Retrieve user's information based on their Ethereum address
        UserInfo storage user = users[msg.sender];
        // Check if user is not already verified
        require(!user.verified, "User is already verified");
        // Set verified flag to true
        user.verified = true;
        // Emit event indicating that user's identity is verified
        emit IdentityVerified(msg.sender);
    }
}
