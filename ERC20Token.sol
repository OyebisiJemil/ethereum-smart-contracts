 //SPDX-License-Identifier: GPL-3.0
 
 pragma solidity >=0.4.16 <0.9.0;
 
 contract ERC20Token{
     mapping(address => uint256) public balances;
     
     function mint() public {
         balances[tx.origin]++;
     }
 }