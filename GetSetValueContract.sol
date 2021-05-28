//SPDX-License-Identitfier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract MySetGetValueContract{
    string _value; 

    constructor() public {
        _value = "Initial value";
    }

    function get() public view returns(string memory){
        return _value;
    }

    function set(string memory value) public {
        _value = value;
    }
}