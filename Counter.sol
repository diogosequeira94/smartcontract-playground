Counter.sol

contract Counter {
    uint count;
    
    function getCount() public view {
        return count;
    }
}