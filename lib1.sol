pragma solidity ^0.4.0;
contract lib{
    struct student{
        uint256 id;
        string name;
        string bookname;
        uint256 count;
        bool s;
    }
    struct book{
        uint256 bid;
        string  bname;
        uint256 stock;
    }
    mapping(uint256=>student)students;
    mapping(uint256=>book)books;
    function studentdet(uint256 id,string name,string bookname,bool s)
    {
        students[id].id=id;
        students[id].name=name;
        students[id].bookname=bookname;
       students[id].s=true;
    }
    function bookdet(uint256 bid,string bname, uint256 stock)
    {
       books[bid].bid=bid;
       books[bid].bname=bname;
       books[bid].stock=stock;
    }
    
    function getbooks(uint256 id,uint256 bid)
    {
       require(students[id].s);
        students[id].count++;
        books[bid].stock-=1;
    }
    function receive(uint256 id,uint256 bid)constant returns(string,string,uint256,uint256)
    {
        return (students[id].name,students[id].id,students[id].bookname,students[id].count,books[bid].stock);
    }
}
