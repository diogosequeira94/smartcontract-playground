pragma solidity ^0.6.0;

// Ether - pay smart contracts
// Modifiers
// Visibility
// Events
// Enums

contract HotelRoom {
    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses currentStatus;

    event Occupy(address _ocupant, uint256 _value);

    /// [payable] the address can receive ethereum as payment
    address payable public owner;

    constructor() public {
        //msg sender is the user who calls the function
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    /// Modifiers can be used to check something before running the function
    modifier onlyWhileVacant() {
        require(currentStatus == Statuses.Vacant, "Currently Ocuppied.");
        _;
    }

    /// We could also use another modifier for [bookRoom] (costs(2 ether))
    modifier costs(uint256 _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
    }

    function bookRoom() payable onlyWhileVacant {
        // [require] -> ensures some conditions are met

        // Check price
        require(msg.value >= 2 ether, "Not enough Ether provided.");
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }

    /// receive function, like an anonymous, same code as above
    receive() external payable onlyWhileVacant {
        require(msg.value >= 2 ether, "Not enough Ether provided.");
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
