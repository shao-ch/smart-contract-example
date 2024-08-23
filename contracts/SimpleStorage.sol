// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleStorage {

    uint256  favoriteNumber=5;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber=_favoriteNumber;
    }

    function getNum() public view  returns (uint256){
        return favoriteNumber;
    }

}