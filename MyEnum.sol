// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;

contract MyEnum{
  enum OrderStatus{
    DELIVERED,
    CANCELLED,
    PENDING
  }

  OrderStatus public currentStatus;
  constructor(){
    currentStatus = OrderStatus.PENDING;
  }

  function setDelivered() external {
    currentStatus = OrderStatus.DELIVERED;
  }

  function setCancelled() external {
    currentStatus = OrderStatus.CANCELLED;
  }

  // when we delete the currentStatus, it will reset it to 0th enum state
}