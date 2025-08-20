// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
        if (number==999){
            overFlow();
        }
    }

    function increment() public {
        number++;
    }

    function overFlow() internal {
        number = type(uint256).max;
        number = number +1;
    }

}
