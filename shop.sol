pragma solidity^0.4.0;
contract solidity{
    struct products
    {
        uint256 id;
        string pname;
        uint256 pprice;
        uint256 stock;
    
    }
    struct customer
    {
        uint256 quan;
        
    }
    mapping(uint256=>products)get;
    mapping(uint256=>customer)cus;
    uint256 t;
    function solidity()
    {
        t=now+1 hours;
    }
    modifier sam
    {
        require(t>now);
        _;
    }
    function product(uint256 id,string pname,uint256 pprice,uint256 stock)public sam()
    {get[id].id=id;
        get[id].pname=pname;
        get[id].pprice=pprice;
        get[id].stock=stock;
        
    }
    function buy(uint256 id,uint256 quan)constant returns(string)
    {
        if(get[id].stock>=quan)
        {
          return "available";
        }
        else
        {
            return("not available");
        }

}
}
