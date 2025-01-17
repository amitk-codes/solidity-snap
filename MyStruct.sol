// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;


contract MyStruct{
  struct myStruct {
    string myStringKey;
    uint myUintKey;
  }

  myStruct myStruct1;

  function setStruct(string calldata _key1, uint _key2) external {
    myStruct1.myStringKey = _key1;
    myStruct1.myUintKey = _key2;
  }

  function getStruct() external view returns(string memory, uint){
    return (myStruct1.myStringKey, myStruct1.myUintKey);
  }

}