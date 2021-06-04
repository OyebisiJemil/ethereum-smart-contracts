//SDPX-License-Identifier: GPL-3.0

pragma solidity >=0.4.16 <0.9.0;

contract ICOVestingTimelock{
    address payable benefitiary;
    uint256 public releaseTime;
    
    constructor(address payable _benefitiary, uint256 _releaseTime) public payable{
        require(_releaseTime > block.timestamp);
        benefitiary = _benefitiary;
        releaseTime = _releaseTime;
    }
    
    function release() public {
        require(block.timestamp >= releaseTime);
        benefitiary.transfer(address(this).balance);
    }
}