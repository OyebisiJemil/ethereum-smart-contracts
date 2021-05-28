// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.16 <0.9.0;

contract EnumExampleContract{
    enum Status { Pending, Inprogress, Completed }
    Status public status;

    constructor() public {
        status = Status.Pending;
    }


    function progress() public {
        status = Status.Inprogress;
    }

    function complete() public {
        status = Status.Completed;
    }
}