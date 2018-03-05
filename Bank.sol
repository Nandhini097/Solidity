pragma solidity ^0.4.18;

contract Token{
    function totalSupply() constant returns (uint256 supply) {}
    function balanceOf(address _owner) constant returns (uint256 balance) {}
    function transfer(address _to, uint256 _value) returns (bool success) {}
    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {}
    function approve(address _spender, uint256 _value) returns (bool success) {}
    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {}
    
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

contract Standard is Token{
    
     mapping (address => uint256) bal;
     mapping(address => mapping(address => uint256))internal allow;
     uint256 public totalSupply;
      function _totalSupply()public constant returns(uint256)
    {
        return totalSupply;
    }
       function deposit(uint256 value )public
    {
        bal[msg.sender]=bal[msg.sender]+value;
    }
    function withdraw(uint256 value )public 
    {
        bal[msg.sender]=bal[msg.sender]-value;
    }
  
     
     function transfer(address _to,uint256 _value) returns(bool success) {
         if (bal[msg.sender] >= _value && _value > 0 ){
             
             bal[msg.sender] -= _value;
             bal[_to] += _value;
             Transfer(msg.sender,_to,_value);
             return true;
         }
         else{
             return false;
         }
     }
     
     function transferFrom(address _from,address _to,uint256 _value) returns(bool success) {
         if (bal[_from] >= _value && _value > 0 && allow[_from][_to] >= _value){
             
             bal[_from] -= _value;
             bal[_to] += _value;
             allow[_from][_to] -= _value;
             Transfer(_from,_to,_value);
             return true;
         }
         else{
             return false;
         }
     }
     
     function balanceOf(address _owner) constant returns(uint256 ){
         return bal[_owner];
     }
     
     function approve(address _spender,uint256 _value) returns(bool success){
         allow[msg.sender][_spender] = _value;
         Approval(msg.sender,_spender,_value);
         return true;
     }
     
     
     function allowance(address _owner,address _spender) constant returns(uint256 ){
         return allow[_owner][_spender];
     }
     
}

contract doll is Standard{
    
    string public name;
    uint8 public decimals;
    string public symbol;
   
    
    function doll(){
       
        totalSupply = 10000;
       bal[msg.sender] =  totalSupply ;
        name = "abc";
        symbol = "kec";
        decimals = 18;
        
    }
   
    
}
