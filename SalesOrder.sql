create table Sales_Order
(SalesOrderID nvarchar(50) Primary Key, 
Total decimal(10,2), 
PaymentMethod nvarchar(50),
OrderDate date,
DeliveryStatus nvarchar(50),
MemberID nvarchar(50),
foreign key (MemberID) references Member(MemberID));
			
insert into Sales_Order (SalesOrderID, Total, PaymentMethod, 
OrderDate, DeliveryStatus, MemberID)
values ('S01','472.5','Mastercard','2021-08-31','Shipped','102'),
('S02','182','Mastercard','2021-09-01','Shipped','104'),
('S03','176.00','Bank transfer','2021-09-07','Shipped','107'),
('S04','124.00','Mastercard','2021-09-09','Shipped','103'),
('S05','183','American Express','2021-10-16','In-transit','109'),
('S06','200','E-Wallet','2021-10-18','In-transit','101');