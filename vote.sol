pragma solidity^0.4.0;
contract sam
{
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
 
 function voters(uint256 ad,string name, uint256 age,uint256 vote)public ab() {
     verify[ad].ad=ad;
     verify[ad].name=name;
     verify[ad].age=age;
     verify[ad].vote=vote;
     verify[ad].see=true;
     
 }
 function display(uint256 ad)public constant  returns(string)
 {
           // return( verify[ad].name,verify[ad].age);
           verify[ad].count++;
           if(verify[ad].vote==1)
           {
               return "candidate1";
           }else
           {
              return "candidate 2";
           }
 }
/* function count(uint256 ad,uint256 count)public constant returns(uint256)
 {
      if( verify[ad].ad!=ad)
      {
    return  (verify[ad].count++);
      }
 }*/
 
 
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
