// Load the TodoList contract artifact
const TodoList = artifacts.require("TodoList");

module.exports = function (deployer) {
  // Deploy the contract
  deployer.deploy(TodoList);
};
