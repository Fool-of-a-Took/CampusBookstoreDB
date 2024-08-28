create database CampusBookstore;
use CampusBookstore;

create table Bookstore_Manager 
(ManagerID nvarchar(50) Primary Key,
Name nvarchar(50),
Email nvarchar(50));

insert into Bookstore_Manager (ManagerID, Name, Email)
values ('M01','John Doe','John.Doe@mail.apu.edu.my'),
('M02','Jane Doe','Jane.Doe@mail.apu.edu.my');

create table Publisher
(PublisherID nvarchar(50) Primary Key,
Name nvarchar(50),
PrintedIn nvarchar(50));

insert into Publisher (PublisherID, Name, PrintedIn)
values ('P01','Bain & Co','UK'),
('P02','Deloid','USA'), 
('P03','Mackinsey','UK'),
('P04','Ernst & Old','China'),
('P05','Pricefirehouse','France');

create table Category
(CategoryID nvarchar(50) Primary Key,
Name nvarchar(50));

insert into Category (CategoryID, Name)
values ('C01','Business'),
('C02','Human Resources'),
('C03','Sociology'),
('C04','Computing'),
('C05','Biology');

create table Book
(BookID nvarchar(50) Primary Key,
Title nvarchar(50),
Author nvarchar(50),
InStock int,
UnitPrice decimal(10,2),
PublisherID nvarchar(50), 
foreign key (PublisherID) References Publisher(PublisherID),
CategoryID nvarchar(50),
foreign key (CategoryID) references Category(CategoryID));

insert into Book (BookID,Title,Author,InStock,UnitPrice,PublisherID,CategoryID)
values ('001','Introduction to Financial Accounting','E.Mush','17','74.00','P01','C01'),
('002','#PlzFix: Social Media and Corporate Burnout','S.Jobs','3','48.50','P03','C03'),
('003','Molecular Biology of the Cell','J.Ma','28','103.00','P02','C05'),
('004','How to Understand Those Who Cannot Be Understood','S.Erikson','17','54.00','P01','C03'),
('005','Quantum Field Theory','S.Hawking','2','77.00','P01','C04'),
('006','Atomic Habits to Remain Sane in Consulting','T.Johnson','19','73.00','P02','C01'),
('007','Speech and Language Processing','D.Jurafsky','29','97.00','P03','C04'),
('008','Paying Your Employees Fairly','M.Zuckerberg','1','111.00','P03','C02'),
('009','Human Anatomy and Physiology','B.Gates','15','59.00','P02','C02'),
('010','Principles of Macroeconomics','T.Cook','6','66.00','P02','C01'),
('011','Computers and Society','M.Dell','8','71.00','P03','C04'),
('012','The Life Changing Magic of Timesheets','J.Carrey','14','88.00','P04','C03'),
('013','The Subtle Art of Asking for a Pay Raise','S.Mendes','27','124.00','P05','C02'),
('014','Global Business Today','M. Freeman','20','70.00','P05','C01'),
('015','Wellbeing at Work','J.Bezos','18','66.00','P01','C02');

create table Member
(MemberID nvarchar(50) Primary Key,
FirstName nvarchar(50),
LastName nvarchar(50),
Email nvarchar(50),
Gender nvarchar(50),
Address nvarchar(50),
Number int);

insert into Member (MemberID, FirstName, LastName, Email, Gender, Address, Number)
values ('101','Emma','Lingarajan','Emma.Lingarajan@mail.apu.edu.my','Female','Subang','0111012345'),
('102','Tony','Fernandez','Tony.Fernandez@mail.apu.edu.my','Male','Kuala Lumpur Sentral','0111012346'),
('103','Marilee','Cavins','Marilee.Cavins@mail.apu.edu.my','Female','Damansara','0111012347'),
('104','Anandhi','Filiault','Anandhi.Filiault@mail.apu.edu.my','Female','TTDI','0111012348'),
('105','Maurine','Junkins','Maurine.Junkins@mail.apu.edu.my','Male','Bukit Jalil','0111012349'),
('106','Eu Lee','Chan','EuLee.Chan@mail.apu.edu.my','Male','Bangsar','0111012350'),
('107','Faizal','Muhammd Ali','Faizal.MuhammdAli@mail.apu.edu.my','Male','Mount Kiera','0111012351'),
('108','Toshia','Gleason','Toshia.Gleason@mail.apu.edu.my','Male','Kepong','0111012352'),
('109','Sima','Tan','Sima.Tan@mail.apu.edu.my','Male','Sungai Buloh','0111012353'),
('110','Amber','Lee','Amber.Lee@mail.apu.edu.my','Female','Kajang','0111012354');

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

create table Book_Cart
(Book_CartID nvarchar(50) Primary Key,
CartID nvarchar(50), foreign key (CartID) references Shopping_Cart(CartID),
BookID nvarchar(50), foreign key (BookID) references Book(BookID));

insert into Book_Cart (Book_CartID, CartID, BookID)
values ('BC01','CA01','003'),
('BC02','CA01','006'),
('BC03','CA02','013'),
('BC04','CA03','014'),
('BC05','CA03','007'),
('BC06','CA04','015');

create table Feedback
(FeedbackID nvarchar(50) Primary Key,
Rating int, 
MemberID nvarchar(50), foreign key (MemberID) references Member(MemberID),
BookID nvarchar(50), foreign key (BookID) references Book(BookID),
Comments nvarchar(150));

insert into Feedback (FeedbackID, Rating, MemberID, BookID, Comments)
values ('F01','6','102','004','Not updated to latest findings in the field'),
('F02','4','104','011','Not enough practical examples to put theory into action'),	
('F03','8','103','013','Easy to understand'),
('F04','7','109','004',''),
('F05','9','101','003','Very Helpful');

