create table Book_PurchaseOrder
(Book_PurchaseOrderID nvarchar(50) Primary Key,
OrderQuantity int,
Subtotal decimal(10,2),
BookID nvarchar(50),
Foreign Key (BookID) References Book(BookID),
PurchaseOrderID nvarchar(50),
Foreign Key (PurchaseOrderID) References Purchase_Order(PurchaseOrderID));

insert into Book_PurchaseOrder (Book_PurchaseOrderID, 
OrderQuantity, Subtotal, BookID, PurchaseOrderID)
values ('BPO01','20','1480','001','PO01'),
('BPO02','20','1080','004','PO01'),
('BPO03','30','2310','005','PO03'),
('BPO04','20','1320','015','PO03'),
('BPO05','20','1180','009','PO02'),
('BPO06','30','1980','010','PO06'),
('BPO07','30','1455','002','PO04'),
('BPO08','10','1110','008','PO04'),
('BPO09','30','2130','011','PO04'),
('BPO10','30','2640','012','PO05');