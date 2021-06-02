//SDPX-License-Identifier: GPL-3.0

pragma solidity >=0.4.16 <0.9.0;
import "./Math.sol";

contract LibraryExampleContract{
    uint256 public value;
    function calculate(uint firstValue, uint secondValue) public{
        value = Math.devide(firstValue,secondValue);
    }
}