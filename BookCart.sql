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