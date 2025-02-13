// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract SolidityTest{
    constructor() public {

    }

    function getResult() public view returns(uint) {
        uint a=1;
        uint b=6;
        uint result = a + b;
        return result;
    }
}
