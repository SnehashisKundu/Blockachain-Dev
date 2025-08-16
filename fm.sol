// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract modifierWithoutArg {
   address admin; 
  struct employee
  {
    uint emp_id;
    string emp_name;
    uint age;
   }
   
   constructor()
   {
     admin = msg.sender;
   }
    
    modifier isAdmin
    {
        require(admin == msg.sender);//error handler
        _;//rule of modifier function
    }
  employee e;
 function enterDetails (uint _empid, string memory _empname, 
                        uint _empage) public isAdmin {
   e.emp_id = _empid;
   e.emp_name = _empname;
   e.age = _empage;
 }
}