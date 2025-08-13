// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract events{
    event transfer(address indexed _to,address _from,uint amount);
    function mtrans(address to,uint amount)public {
        emit transfer(msg.sender,to,amount);
    }
}


contract test{
    event trader(uint indexed _date,address _from,address _to,uint amount);
    function trans(address to,uint amount)public{
        emit trader(block.timestamp,msg.sender,to,amount);
    }
}