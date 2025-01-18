// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract MyKeccak{
    function hashUsingKeccak(string calldata _myString) external pure returns(bytes32){
        return keccak256(abi.encodePacked(_myString));
    }
}