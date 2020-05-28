pragma solidity >=0.4.21 <0.7.0;

contract Adoption {
    address[16] public adopters;

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15, 'Pet Id Out of Range');

    adopters[petId] = msg.sender;

    return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
    return adopters;
    }
}
