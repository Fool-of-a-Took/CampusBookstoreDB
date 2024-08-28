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