// SPDX-License-Identifier: GPL-3.0

pragma solidity  >=0.4.16 <0.9.0;

contract ArrayExampleContract{
    string[] stringArray;
    uint public stringCount;

    constructor() public{
        stringCount = 0;
    }


    function addItem(string memory stringValue) public{
        stringArray.push(stringValue);
        stringCount+=1;
    }

    function getItem(uint index) public view returns(string memory){
        return stringArray[index];
    }
    function removeItem(uint index) public {
        delete stringArray[index];
    }
}