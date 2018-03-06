pragma solidity ^0.4.18;

contract ERC20Basic {
  function totalSupply() public view returns (uint256);
  function balanceof(address who) constant returns (uint256);
  function transfer(address _to, uint256 _value) public returns (bool);
   //function transferFrom(address _from,address _to,uint256 _value) returns(bool success);
  event Transfer(address indexed from, address indexed to, uint256 value);
}
