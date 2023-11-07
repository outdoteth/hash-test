// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";
import {console} from "forge-std/console.sol";

contract CounterTest is Test {

    function test_Hash() public {
        bytes32 firstHash = keccak256(
            "Order("
                "uint256 nonce,"
                "bool isBuy,"
                "uint256 amount,"
                "uint256 price,"
                "uint256 expiration,"
                "address recipient,"
                "address baseToken,"
                "address assetToken,"
                "address maker"
            ")"
        );

        bytes32 secondHash = keccak256(
            "Order(uint256 nonce,bool isBuy,uint256 amount,uint256 price,uint256 expiration,address recipient,address baseToken,address assetToken,address maker)"
        );

        console.log("firstHash");
        console.logBytes32(firstHash);
        console.log("secondHash");
        console.logBytes32(secondHash);
    }

}
