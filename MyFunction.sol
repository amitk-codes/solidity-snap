// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

contract MyFunction{
  uint public storedNum = 10;
  uint private secretNum = 1234509876;
  address public owner;

  constructor(){
    owner = msg.sender;
    incrementBy1();
    incrementByGivenNum(10);
  }

  modifier onlyContractOwner(){
    require(owner == msg.sender, "Not Authorized to perform this task");
    _;
  }

  function incrementBy1() public {
    storedNum++;
  }

  function incrementByGivenNum(uint _givenNum) public returns (uint){
    storedNum += _givenNum;
    return storedNum;
  }

  function modifiedFunction() onlyContractOwner() public view returns(uint){
    return secretNum;
  }
}