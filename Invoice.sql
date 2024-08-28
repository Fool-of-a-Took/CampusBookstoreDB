create table Invoice
(InvoiceID nvarchar(50) Primary Key,
Date date, 
TotalAmount decimal(10,2),
PublisherID nvarchar(50),
Foreign Key (PublisherID) References Publisher(PublisherID),
PurchaseOrderID nvarchar(50),
Foreign Key (PurchaseOrderID) References Purchase_Order(PurchaseOrderID));

insert into Invoice (InvoiceID, Date, TotalAmount, PublisherID, PurchaseOrderID)
values ('INV01','2021-08-29','2560','P01','PO01'),
('INV02','2021-09-02','1180','P02','PO02'),
('INV03','2021-09-15','3630','P01','PO03'),
('INV04','2021-10-15','4695','P03','PO04'),
('INV05','2021-10-17','2640','P04','PO05');