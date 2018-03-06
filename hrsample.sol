pragma solidity^0.4.0;

contract interview
{
    struct details{
        string candname;
        uint256 candrollno;
        uint256 ad;
    
        bool see;
    }
    
    mapping(uint256=>details)verify;
    uint256 t;

    function interview()
    {  
        t=now+2 hours;
        
        
    }
    modifier ab{
       require(t>now);
        _;
    }
    function get(uint256 ad,string candname,uint256 candrollno)public ab()
    {
        verify[ad].ad=ad;
        verify[ad].candname=candname;
        verify[ad].candrollno=candrollno;

        verify[ad].see=true;
    }
    function result(uint256 ad)public constant returns(string)
    {
        if(verify[ad].see)
        {
            return "already visited";
        }
        else
        {
            return "new comer";
        }
    }
}
