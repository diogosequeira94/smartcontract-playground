pragma solidity ^0.8.7;

contract Conditionals {
    uint256[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

    function countEvenNumbers() public view returns (uint256) {
        uint256 counter = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) {
                counter++;
            }
        }
        return counter;
    }

  // what is [pure] vs [view]
    function isEvenNumber(uint256 _number) public pure returns (bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }
}
