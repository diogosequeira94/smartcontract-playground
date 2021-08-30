pragma solidity ^0.6.0;

contract MyContract {
    string secret;
    address owner;

    // only the onwer of the SC can call it
    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }

    constructor(string memory _secret) public {
        secret = _secret;
        owner = msg.sender;
    }

    function getSecret() public view onlyOwner returns (string memory) {
        return secret;
    }
}
