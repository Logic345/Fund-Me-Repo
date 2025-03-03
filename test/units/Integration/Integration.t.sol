// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "src/FundMe.sol";
import {DeployFundMe} from "script/DeployFundMe.s.sol";
import {FundFundMe, WithdrawalFundMe} from "script/interaction.s.sol";

contract Integration is Test {

    FundMe fundMe;

    address USER = makeAddr("user");
    uint256 constant SEND_VALUE = 0.1 ether;   //100000000000000000
    uint256 constant STARTING_BALANCE = 10 ether;
    uint256 constant GAS_PRICE = 1 ether;


    function setUp() external {
        DeployFundMe deployFundMe = new DeployFundMe();
        fundMe = deployFundMe.run();
        vm.deal(USER, STARTING_BALANCE);
    }

    function testUserCanFund() public {
        FundFundMe fundFundMe = new FundFundMe();
        //vm.prank(USER);
        //vm.deal(USER, 1e18);
        fundFundMe.fundFundMe(address(fundMe));

        //address funder = fundMe.getFunder(0);
        //assertEq(funder, USER);
        WithdrawalFundMe withdrawalFundMe = new WithdrawalFundMe();
        withdrawalFundMe.withdrawalFundMe(address(fundMe));

        assert(address(fundMe).balance == 0);
        
    }

}