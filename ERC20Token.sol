//SDPX-License-Identifier: GPL-3.0

pragma solidity >=0.4.16 <0.9.0;
 
 contract ERC20Token{
     mapping(address => uint256) public balances;
     
     function mint() public virtual {
         balances[tx.origin]++;
     }
 }

contract ChildContract is ERC20Token {
    string public symbol;
    address[] public owners;
    uint256 ownersCount;

    constructor(string memory _name, string memory _symbol) ERC20Token(_name) public{
        symbol = _symbol;
    }

    function mint() public override{
        super.mint();
        ownersCount++;
        owners.push(msg.sender);
    }
}