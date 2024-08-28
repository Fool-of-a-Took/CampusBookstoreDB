create database CampusBookstore;
use CampusBookstore;

create table Bookstore_Manager 
(ManagerID nvarchar(50) Primary Key,
Name nvarchar(50),
Email nvarchar(50));

insert into Bookstore_Manager (ManagerID, Name, Email)
values ('M01','John Doe','John.Doe@mail.apu.edu.my'),
('M02','Jane Doe','Jane.Doe@mail.apu.edu.my');








