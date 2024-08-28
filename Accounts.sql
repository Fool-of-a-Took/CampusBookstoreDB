create table Accounts
(BillingID nvarchar(50) Primary Key,
PaymentStatus nvarchar(50),
InvoiceID nvarchar(50),
foreign key (InvoiceID) references Invoice(InvoiceID));

insert into Accounts (BillingID, PaymentStatus, InvoiceID)
values ('B01','Completed','INV01'),
('B02','Completed','INV02'),
('B03','Completed','INV03'),
('B04','Completed','INV04'),
('B05','Processing','INV05');
