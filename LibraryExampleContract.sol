//SDPX-License-Identifier: GPL-3.0

pragma solidity >=0.4.16 <0.9.0;
import "./SafeMath.sol";

contract LibraryExampleContract{
    using SafeMath for uint256;
    uint256 public value;
    function calculate(uint firstValue, uint secondValue) public{
        value = firstValue.div(secondValue);
    }
}