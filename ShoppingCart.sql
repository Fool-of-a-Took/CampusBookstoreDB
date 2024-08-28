create table Shopping_Cart
(CartID nvarchar(50) Primary Key,
TotalCost decimal(10,2),
MemberID nvarchar(50),
foreign key (MemberID) references Member(MemberID));

insert into Shopping_Cart (CartID, TotalCost, MemberID)
values ('CA01','176','105'),
('CA02','124','106'),
('CA03','167','108'),
('CA04','66','102');