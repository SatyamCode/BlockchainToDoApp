// SPDX-License-Identifier: MIT
pragma solidity >=0.5.16 <0.9.0;

contract TodoList {
    uint256 public taskCount = 0; // no of the todolist using state variables with intial value of 0.

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks; // creating a database analogous to blockchain.

    constructor() public {
        createTask("Checkout my app code on github");
    }

    function createTask(string memory _content) public {
        //function to create tasks
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
