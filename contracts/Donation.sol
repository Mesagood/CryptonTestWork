// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Donation {

    address public  owner;
    address[] public donators;

    mapping(address => uint) public countDonat;
    
    constructor (){
        owner = msg.sender;
    }
    
    modifier requireOwner() {
        require(owner == msg.sender, "Not an owner");
        _;
    }

    function gatherDonation() public payable {
        donators.push(msg.sender);
        countDonat[msg.sender]=msg.value;
    }

    function withdrawFunds(address payable _to) public requireOwner {
        _to.transfer(address(this).balance);
    }

    function getDonators() public view returns (address[] memory){
       return donators;
    }
} 