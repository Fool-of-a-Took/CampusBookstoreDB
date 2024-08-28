create table Book_SalesOrder
(Book_SalesOrderID nvarchar(50) Primary Key,
SalesOrderID nvarchar(50),
foreign key (SalesOrderID) references Sales_Order(SalesOrderID),
BookID nvarchar(50),
foreign key (BookID) references Book(BookID),
Quantity int,
Subtotal decimal(10,2));

insert into Book_SalesOrder (Book_SalesOrderID, 
SalesOrderID, BookID, Quantity, Subtotal)
values ('BS01','S01','004','2','108.00'),
('BS02','S01','006','3','219.00'),
('BS03','S01','002','3','145.50'),
('BS04','S02','008','1','111.00'),
('BS05','S02','011','1','71.00'),
('BS06','S03','012','2','176.00'),
('BS07','S04','013','1','124.00'),
('BS08','S05','014','1','70.00'),
('BS09','S05','009','1','59.00'),
('BS10','S05','004','1','54.00'),
('BS11','S06','002','2','97.00'),
('BS12','S06','003','1','103.00');