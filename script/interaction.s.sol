//Fund and Withdrawal Script

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {DevOpsTools} from "../lib/foundry-devops/src/DevOpsTools.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundFundMe is Script {
    uint256 constant SEND_VALUE = 0.001 ether;


    function fundFundMe (address mostRecentDeployment) public {
        
        FundMe(payable(mostRecentDeployment)).fund{value: SEND_VALUE}();
        
        console.log("Funded With %s", SEND_VALUE);
    }

    function run() external {
        address mostRecentDeployment = DevOpsTools.get_most_recent_deployment(
            "FundMe", 
            block.chainid
        );
        vm.startBroadcast();
        fundFundMe(mostRecentDeployment);
        vm.stopBroadcast();

    }


}

contract WithdrawalFundMe is Script {
    function withdrawalFundMe (address mostRecentDeployment) public {
        vm.startBroadcast();
        FundMe(payable(mostRecentDeployment)).withdraw();
        vm.stopBroadcast();
    }

    function run() view external {
        address mostRecentDeployment = DevOpsTools.get_most_recent_deployment(
            "FundMe", 
            block.chainid
        );
        
        WithdrawalFundMe(mostRecentDeployment);
        

    }

}