pragma solidity ^0.8.7;

contract Counter {
    uint count;

    // Constructor syntax
    constructor() public {
        count = 0;
    }
    
    /// Method syntax, [public] means visible outside contract
    /// [view] means it's only a getter
    /// returs(uint) to specify return type
    function getCount() public view returns(uint) {
        return count;
    }

    function incrementCount() public {
        // count = count + 1;
        count++;
    }
}