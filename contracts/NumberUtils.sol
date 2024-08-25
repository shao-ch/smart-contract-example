// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

library NumberUtils {
    //get the USD price of eth
    function getPice() internal  view returns (uint256) {
        AggregatorV3Interface aggregatorV3 = AggregatorV3Interface(
            0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43
        );
        //the unit of the responese is eth ,we need price*1e10
        (, int256 price, , , ) = aggregatorV3.latestRoundData();
        uint256 thisUnit = uint256(aggregatorV3.decimals())**10;
        return uint256(price) * thisUnit;
    }

    function getConverAomunt(uint256 _ethNumber) internal view returns (uint256) {
        uint256 price = getPice();
        return (price * _ethNumber) / 1e18;
    }

    function getVersion() internal view returns (uint256) {
        AggregatorV3Interface aggregatorV3 = AggregatorV3Interface(
            0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43
        );
        uint256 version = aggregatorV3.version();
        return version;
    }
}
