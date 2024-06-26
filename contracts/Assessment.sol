// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Assessment {
    
    uint256 public balance;

   

    constructor(uint initBalance) payable {
        
        balance = initBalance;
    }

    function getBalance() public view returns(uint256){
        return balance;
    }

    function gcd(uint a, uint b) public payable {
        while (b != 0) {
            uint temp = b;
            b = a % b;
            a = temp;
        }
        balance=balance+a;
    }



    function lcm(uint a, uint b) public payable  {
        

        uint max = a > b ? a : b;
        uint min = a < b ? a : b;
        uint lcmValue = max;

        while (lcmValue % min != 0) {
            lcmValue += max;
        }

        balance=balance+lcmValue;
    }
}
