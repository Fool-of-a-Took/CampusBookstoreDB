create table Purchase_Order
(PurchaseOrderID nvarchar(50) Primary Key,
OrderDate date,
ManagerID nvarchar(50),
Foreign Key (ManagerID) References Bookstore_Manager(ManagerID),
PublisherID nvarchar(50),
Foreign Key (PublisherID) References Publisher(PublisherID));

insert into Purchase_Order (PurchaseOrderID, OrderDate, ManagerID, PublisherID)
values ('PO01','2021-08-22','M01','P01'),
('PO02','2021-08-28','M01','P02'),
('PO03','2021-09-10','M01','P01'),
('PO04','2021-09-11','M01','P03'),
('PO05','2021-10-12','M02','P04'),
('PO06','2021-10-17','M02','P02');