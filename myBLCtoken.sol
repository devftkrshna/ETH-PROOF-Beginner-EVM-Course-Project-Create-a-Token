// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract myBLCtoken {
   event LogMessage(string message);
   
    // public variables here
    string public tokeName="myBLCtokken";
    string public token="mBLC";
    uint public totalSupply=0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _to, uint _value) public{
      totalSupply += _value;
      balances[_to] += _value;
    }
    // burn function
    function burn(address _from, uint _value) public{
      if(balances[_from]>= _value){
         totalSupply -= _value;
         balances[_from]-= _value;
      }
      else{
         emit LogMessage("Insufficient Balance");
      }
    }
}
