pragma solidity^0.4.0;
contract sam
{
    struct lib
    {
        uint256 bookid;
        string bookname;
        bool stock;
        uint256 count;
    
    }
    struct student
    {
        uint256 stuid;
        uint256 stubookid;
        string name;
    }
    mapping(uint256=>lib)libb;
    mapping(uint256=>student)stud;
    uint256 t;
    function sam()
    {
        t=now+1 hours;
    }
    modifier ab()
    {
        require(t>now);
        _;
    }
    
    function lib1(uint256 bookid,string bookname,bool stock,uint256 stuid)public ab() 
    {
        libb[stuid].bookid=bookid;
        libb[stuid].bookname=bookname;
        libb[stuid].stock=true;
        libb[stuid].count++;
    }
    function student1(uint256 stuid,uint256 stubookid,string name)
    {
        stud[stuid].stuid=stuid;
        stud[stuid].stubookid=stubookid;
        stud[stuid].name=name;
    }
    
    function avail(uint256 id)public constant returns(string)
    {
        require(libb[id].stock);
        
            return "available";
            
       
        
    }
    function studentdetails(uint256 stuid)public constant returns(string,string,uint256)
    {          
       return (stud[stuid].name,libb[stuid].bookname,libb[stuid].count);
    
    }
    
}


