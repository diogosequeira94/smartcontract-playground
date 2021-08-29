pragma solidity ^0.8.7;

contract MyContract {
    /// State Variables (Global Variables) are stored in the blockchain itself
    int256 public myInt = 1;
    // uint can't have nßegative values
    uint256 myUint = 1;
    // Sacrifices performance by stores a bigger value [default Uint]
    uint256 public myUint256 = 1;
    // Optimize performance by having a small number
    uint8 public myUint8 = 1;

    /// Strings
    string public myString = "Hello, World!";
    // bytes32 is more performant
    bytes32 public myByte32 = "Hello, World!";

    /// address
    address public myAddress = 0x5A0b54D5dc17e0AadC83d2b43B0a0D3E029c4c;

    /// Arrays
    uint256[] public myArray = [1, 2, 3];
    string[] public stringArray = ["One", "Two", "Three"];

    string[] public emptyArray;

    // 2D array
    uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    function addValue(string memory _value) public {
        emptyArray.push(_value);
    }

    function getValueCount() public view returns (uint256) {
        return emptyArray.length;
    }

    /// Maps
    mapping(uint256 => string) public names;

    constructor() {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    /// Structs

    //Structs are basically ways to group values, so a plain class with a constructor
    struct MyStruct {
        uint256 myInt;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, World!");

    // Local Variables
    function getValue() public pure returns (uint256) {
        uint256 value = 1;
        return value;
    }
}
