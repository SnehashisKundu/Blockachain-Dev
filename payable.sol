// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract payables{
    address payable public owner;
    constructor(){
        owner=payable (msg.sender);
    }
    function payeth() payable  public{
        owner.transfer(msg.value);
    }
}