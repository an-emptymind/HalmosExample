//Forge tests
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";
// import {console} from  'forge-std/console.sol';

contract CounterTest1 is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }

    function test_increment() public{
        uint256 newNumber= counter.number();
        try counter.increment(){
            assertEq(counter.number(),newNumber+1);
        }
        catch{
            assert(false);
        }
    }
}
