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