pragma solidity ^0.8.17;

contract Hello{

  string _name;

  constructor(string memory name){
  _name = name;
  }

  function setName(string memory name) public{
  _name = name;
  }

  function getName() view public returns(string memory){
  return _name;
  }

  function speak() view public returns(string memory){
  string memory _str =  string.concat("Hello ",_name);
  return _str;
  }

  function deposit() external payable{
  }

  function withdraw() external{
  payable(msg.sender).transfer(getBalance());
  }

  function getBalance() view public returns(uint256){
  return address(this).balance;
  }
}
