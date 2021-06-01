//SDPX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract MappingExampleContract{
    uint public _peopleCount;
    mapping(uint=>Person) public people;

    address owner;
    uint openingTime;

    modifier onlyOwner() {
      require(msg.sender == owner);
      _;
    }

    modifier onlyWhileOpen(){
        require(block.timestamp >= openingTime);
        _;
    }

    struct Person{
        uint id;
        string firstName;
        string lastName;
    }

    constructor() public {
        _peopleCount = 0;
        owner = msg.sender;
        openingTime = 1622494123;
    }

    function AddPerson(string memory firstName, string memory lastName) public onlyOwner onlyWhileOpen{
        incrementCount();
        people[_peopleCount] = Person(_peopleCount, firstName,lastName);
    }

    function incrementCount() internal {
         _peopleCount += 1;
    }
}