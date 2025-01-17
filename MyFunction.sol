// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

contract MyFunction{
  uint public storedNum = 10;

  constructor(){
    incrementBy1();
    incrementByGivenNum(10);
  }

  function incrementBy1() public {
    storedNum++;
  }

  function incrementByGivenNum(uint _givenNum) public returns (uint){
    storedNum += _givenNum;
    return storedNum;
  }
}