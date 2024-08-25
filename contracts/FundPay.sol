// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//get funds from users
//withdraw dunds
//set minimum funding value in usd;

import "./NumberUtils.sol";

contract FundPay {

    using NumberUtils for uint256;

    uint256 public minimumUsd=50*1e18;

    address[] public funders;

    mapping(address => uint256) public addressToAmountFunded;


    //send a funding value
    function fund() public payable {

        msg.value.getConverAomunt();
        require(msg.value.getConverAomunt()>=minimumUsd,"Didn't send enough!");

        funders.push(msg.sender);
        addressToAmountFunded[msg.sender]=msg.value.getConverAomunt();
    }

    function withdraw() public {

    }

    
}