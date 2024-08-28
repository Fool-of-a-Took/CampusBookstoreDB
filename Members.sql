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