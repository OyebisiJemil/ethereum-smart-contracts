//SDPX-License-Identifier: GLP-3.0
pragma solidity >=0.4.16<0.9.0;

contract AcceptEtherExampleContract {
    mapping(address=>uint) public _balances;
    address payable _wallet;
    
    constructor(address payable wallet) public {
        _wallet = wallet;
    }
    
    event Purchase(address buyer, uint amount);
    
    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        _balances[msg.sender] += 1;
         _wallet.transfer(msg.value);
         emit Purchase(msg.sender,1);
    }
}