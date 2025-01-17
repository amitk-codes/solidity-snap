// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract MyMapping{
  mapping (address => uint) balances;
  uint numberOfKeys;

  function setBalance(address _address, uint _balance) external {
    if(balances[_address] == 0){
      numberOfKeys++;
    }
    balances[_address] = _balance;
  }

  function fetchBalance(address _address) external view returns(uint){
    return balances[_address];
  }

  function fetchNumberOfAccounts() external view returns (uint){
    return numberOfKeys;
  }
}