//SDPX-License-Identifier: GPL-3.0

pragma solidity >=0.4.16 <0.9.0;

library Math {
    
    function devide(uint256 firstValue, uint256 secondValue) internal pure returns (uint256){
        require(secondValue>0);
        uint256 result = firstValue / secondValue;
        return result;
    }
}