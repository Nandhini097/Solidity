pragma solidity ^0.4.18;

import "./ERC20Basic.sol";
contract ERC20 is ERC20Basic {
  function allowance(address owner, address spender) public view returns (uint256);
 function transferFrom(address from, address to, uint256 value) public returns (bool);
 function approve(address spender, uint256 value) public returns (bool);
  event Approval(address indexed owner, address indexed spender, uint256 value);
  function increaseApproval(address _spender, uint _addedValue) public returns (bool);
  function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool);
}
