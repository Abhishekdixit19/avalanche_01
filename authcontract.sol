// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Auth {
    uint public id = 123;
    uint public password = 456;
    bool public access = false;
    
    function auth(uint IsId,uint InPassword) public  {
        require(IsId == id, "Wrong Id");
        assert(InPassword == password);
        access = true;
    }
    
    function showAccess() external view returns (bool) {

        if (access == false) {
            revert("You dont have access");
        }
        return access;
    }
}
