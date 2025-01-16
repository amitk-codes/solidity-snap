// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract StringTut{
    string private myStr = "1234";

    function fetchLength() external view returns (uint) {
        // the .length does not exist on string datatypes, instead it is present
        // in the bytes datatype

        bytes memory myBytes = bytes(myStr);
        return myBytes.length;
    }
}