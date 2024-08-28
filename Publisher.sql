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