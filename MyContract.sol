pragma solidity ^0.8.7;

contract MyContract {
    // State Variables (Global Variables) are stored in the blockchain itself
    int public myInt = 1;
    // uint can't have negative values
    uint myUint = 1;
    // Sacrifices performance by stores a bigger value [default Uint]
    uint256 public myUint256 = 1;
    // Optimize performance by having a small number
    uint8 public myUint8 = 1;

    // Strings
    string public myString = "Hello, World!";

    // Local Variables
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
    
}

