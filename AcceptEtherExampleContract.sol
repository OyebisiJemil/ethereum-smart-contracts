//SDPX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16<0.9.0;

contract AcceptEtherExampleContract {
    mapping(address=>uint) public _balances;
    address payable wallet;
    address public tokenOftheExternalContract;
    
    constructor(address payable _wallet, address _tokenOftheExternalContract) public {
        wallet = _wallet;
        tokenOftheExternalContract = _tokenOftheExternalContract;
    }
    
    event Purchase(address buyer, uint amount);
    
    function() external payable{
        buyToken();
    }

    function buyToken() public payable {
         ERC20Token(address(tokenOftheExternalContract)).mint();
         wallet.transfer(msg.value);
         emit Purchase(msg.sender,1);
    }
}