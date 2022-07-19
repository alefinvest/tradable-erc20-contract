//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Tradable {

    struct SellOrder {
        uint256 id;
        address seller;
        uint256 amount;
        uint256 price;
        bool active;
    }

    SellOrder[] internal orders;

    event OrderPlaced(uint256 indexed id, address indexed seller, uint256 amount, uint256 price);
    event Selled(uint256 indexed id, address indexed seller, address indexed buyer, uint256 amount, uint256 price);
    event UpdatedOrderPrice(uint256 indexed id, uint256 newPrice);
    event UpdatedOrderAmount(uint256 indexed id, uint256 newAmount);

    constructor() {}
}