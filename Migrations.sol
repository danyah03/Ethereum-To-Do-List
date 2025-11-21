// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Migrations {
    address public owner;
    uint public lastCompletedMigration;

    constructor() {
        owner = msg.sender;  // <-- NOT tx.origin
    }

    modifier restricted() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    function setCompleted(uint completed) public restricted {
        lastCompletedMigration = completed;
    }
}
