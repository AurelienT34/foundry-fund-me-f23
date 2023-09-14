// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FoundMe.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script {
    function run() external returns (FundMe) {
        HelperConfig helperConfig = new HelperConfig();
        vm.startBroadcast();
        FundMe fundme = new FundMe(helperConfig.activeNetworkConfig());
        vm.stopBroadcast();
        return fundme;
    }
}
