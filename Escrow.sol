//SDPX-License-Identifier: GPL-3.0

pragma solidity >=0.4.16 <0.9.0;

contract Escrow{
    address agent;
    mapping(address => uint256) public deposits;
    
    constructor() {
        agent = msg.sender;
    }
    
    modifier onlyAgent(){
        require(msg.sender == agent);
        _;
    }
    
    function deposit(address payee) public onlyAgent payable{// the onlyAgent modifier ensures that only the agent could deposit
        uint256 amount = msg.value; // the message property is part of the metadata passed along to the payable
        deposits[payee] += amount;
    }
    
    function withdraw(address payable payee) public onlyAgent{// the onlyAgent modifier ensures that only the agent could deposit
        uint256 payment = deposits[payee];
        deposits[payee] = 0;
        payee.transfer(payment);
    }
    
}