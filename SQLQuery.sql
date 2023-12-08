create database ExcerciseAssignment
use ExcerciseAssignment

create table CompanyInfo
(CId int primary key,
CName nvarchar(50) not null)
insert into CompanyInfo values(1,'Samsung'),(2,'HP'),(3,'Apple'),(4,'Dell'),(5,'Toshiba'),(6,'Redmi')

select * from CompanyInfo


create table ProductSInfo
(PId int primary key,
PName nvarchar(50) not null,
PPrice float not null,
PMDate date not null,
CId int Foreign key references CompanyInfo(CId))

insert into ProductSInfo values (101,'Laptop','55000.90','12/12/2023',1)
insert into ProductSInfo values (102,'Laptop','35000.90','12/12/2012',2)
insert into ProductSInfo values (103,'Mobile','15000.90','12/03/2012',2)
insert into ProductSInfo values (104,'Laptop','135000.90','12/12/2012',3)
insert into ProductSInfo values (105,'Mobile','65000.90','12/12/2012',3)
insert into ProductSInfo values (106,'Laptop','35000.90','12/12/2012',5)
insert into ProductSInfo values (107,'Mobile','35000.90','12/01/2012',5)
insert into ProductSInfo values (108,'Earpod','1000.90','12/01/2022',3)
insert into ProductSInfo values (109,'Laptop','85000.90','12/12/2021',6)
insert into ProductSInfo values (110,'Mobile','55000.70','12/12/2020',1)
select * from ProductSInfo

---------show all companies name and their product details-----------
select * from CompanyInfo c join ProductSInfo p on c.CId=p.CId

--------show all products name and their respective company name--------
select p.PName, c.CName from ProductSInfo p join CompanyInfo c on p.CId=c.CId

--------show all possible combination of company and products------
select * from ProductSInfo  cross join CompanyInfo 


