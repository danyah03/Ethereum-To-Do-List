// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TodoList {
    string public lastTask;
    uint public taskCount;

    event TaskAdded(address indexed user, string task);

    function addTask(string memory _task) public {
        lastTask = _task;
        taskCount++;
        emit TaskAdded(msg.sender, _task);
    }

    function getLastTask() public view returns (string memory) {
        return lastTask;
    }

    function getTaskCount() public view returns (uint) {
        return taskCount;
    }
}
