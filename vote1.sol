pragma solidity^0.4.0;
contract sam
{
    uint256 a;
uint256 b;


    struct voting
    {
    string name;
    uint256 age;
    uint256 ad;
    uint256 vote;
    bool see;
    uint256 count;
}
      uint256 t;

    function sam()
    {  
        t=now+2 hours;
       
        
    }
    modifier ab{
       require(t>now);
        _;
    }
    
 mapping(uint256=>voting)verify;
 
 modifier check(uint256 ad){
     require(verify[ad].ad!=ad);
     _;
    
 }
 
 
 function vote(uint256 ad,string name, uint256 age,uint256 vote)public ab() check(ad) {
     verify[ad].ad=ad;
     verify[ad].name=name;
     verify[ad].age=age;
     verify[ad].vote=vote;
     verify[ad].see=true;
     verify[ad].count++;
     
 }
 modifier aa(uint256 ad)
 {
     require(verify[ad].vote==1);
     _;
 }

 
 function validate(uint256 ad)public constant returns(string)
 {
     if(verify[ad].see){
     return "already voted";
     }
 else{
     return"new voter";
 }
 }
}
