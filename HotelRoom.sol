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

    /// [payable] the address can receive ethereum as payment
    address payable public owner;

    constructor() public {
        //msg sender is the user who calls the function
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    // Modifiers can be used to check something before running the function
    modifier onlyWhileVacant() {
        require(currentStatus == Statuses.Vacant, "Currently Ocuppied.");
        _;
    }

    function bookRoom() payable onlyWhileVacant {
        // [require] -> ensures some conditions are met

        // Check price
        require(msg.value >= 2 ether, "Not enough Ether provided.");
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
    }
}
