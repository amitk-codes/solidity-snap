// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract MyArrays{
    uint[] private myArr;

    constructor(){
        myArr = [11,22,33,44,55];
    }

    function fetchLength() external view returns (uint){
        return myArr.length;
    }

    function fetchElement(uint index) external view returns (uint){
        require(index < myArr.length, "No element found at given index");
        return myArr[index];
    }

    function addNewElement(uint newElement) external{
        myArr.push(newElement);
    }

    function removeLastElement() external {
        require(myArr.length != 0, "Array is already empty");
        myArr.pop();
    }
}