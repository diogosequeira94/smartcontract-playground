pragma solidity ^0.8.7;

contract Counter {
    uint256 count = 0;

    // Constructor syntax
    /* 
   constructor() {
        count = 0;
    }
    */

    /// Method syntax, [public] means visible outside contract
    /// [view] means it's only a getter
    /// returs(uint) to specify return type
    function getCount() public view returns (uint256) {
        return count;
    }

    function incrementCount() public {
        // count = count + 1;
        count++;
    }
}
