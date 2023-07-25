pragma solidity ^0.8.17;

contract ContactBook{
	
  string private _name;
  
  address private _address;
	
  uint256 private _numberOfContacts;
	
  address[] private _contacts;
	
  mapping(address=>string) private _contactNames;

  constructor(string memory name){
		
    _name = name;
		
    _address = msg.sender;
  }

  function setName(string memory name) public onlyOwner{
  _name = name;
  }

  function getName() view public returns(string memory){
  return _name;
  }

  function setAddress(address account) public onlyOwner{
  _address = account;
  }

  function getAddress() view public returns(address){
  return _address;
  }

  function addContact(address account, string memory name) public onlyOwner{
  _contacts.push(account);
  _contactNames[account]=name;
  incrementNumber();
  emit NewContact(account,name,getLastIndex());
  }

  function incrementNumber() internal{
  _numberOfContacts+=1;
  }

  function getLastIndex() view public returns(uint256){
  if(_numberOfContacts>0){
  return _numberOfContacts-1;
  }
  return _numberOfContacts;
  }

  function getContactAddress(uint256 number) view public returns(address){
  return _contacts[number];
  }
  
  function getContactName(address account) view public returns(string memory){
  return _contactNames[account];
  }

  event NewContact(address account,string name, uint256 index);

  modifier onlyOwner(){
  require(msg.sender == getAddress(),"Only owner can call this function");
  _;
  }
}
