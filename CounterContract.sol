// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.16 <0.9.0;

contract CounterContract{
    uint public count;
    
    constructor() public {
        count = 0;
    }
    
    event Increment(uint value);
    event Decrement(uint value);
    
    function increment() public {
        count+=1;
        emit Increment(count);
    }
    
    function decrement() public{
        count -=1;
        emit Decrement(count);
    }
    
    function getCount() view public returns (uint){
        return count;
    }
}