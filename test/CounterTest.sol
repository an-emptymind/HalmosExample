// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {SymTest} from '../lib/halmos-cheatcodes/src/SymTest.sol';

import {Counter} from "../src/Counter.sol";

contract CounterTest is Test, SymTest {
    Counter internal counter;

    function setUp() public {
        counter = new Counter();
    }
    
    function check_setNumber() public {
        uint256 x = svm.createUint256("x"); // symbolic uint256
        counter.setNumber(x);
        assertEq(counter.number(), x, "setNumber should assign exactly");
    }
}
