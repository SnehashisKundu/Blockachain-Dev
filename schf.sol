// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract HashFunction {
    
    function getHash(string memory _pass, string memory _name) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_pass, _name));
    }
}

contract hashkey{
    bytes32 password;
    function hashthe(string memory _passw)public{
        password=keccak256(abi.encode(_passw));
    }
    function check(string memory _passw)public view{
        require(keccak256(abi.encode(_passw))==password,"Wrong Password Try Again.");
    }
}