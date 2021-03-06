create database QLGV
use QLGV

create table giaovien
(magv char(5) primary key,
 ho   nvarchar(30) null,
 ten  nvarchar(10) null,
 sdt  char(11)     null,
 email char(15)    null)
 
 create table giodaygv
 ( magv char(5) primary key
   references giaovien(magv),
   solopday int null,
   sotietquydinh int null,
   sotietthuchien int null)
   
   insert into giaovien
   values ('gv1',N'Lê Ngọc',N'Bình',01296535658,'')
   
   insert into giaovien
   values ('gv2',N'Trần Văn',N'Minh',0983569875,'')
   
   insert into giaovien
   values ('gv3',N'Phạm Văn',N'Toàn',0963963789,'toan@gmail.com')
   
   insert into giaovien
   values ('gv4',N'Hồ Minh',N'Trung',' ','trung@gmail.com')
   
   insert into giaovien
   values ('gv5',N'Nguyễn Thị',N'Kim',0913568745,'kim@gmail.com')
   
   insert into giaovien
   values ('gv7',N'Nguyễn Thị',N'Kim','','kim@gmail.com')
   
    insert into giaovien
   values ('gv9',N'Nguyễn Thị',N'Kim','','kim@gmail.com')
   
   insert into giodaygv
   values ('gv1',4,200,180)
   
   insert into giodaygv
   values ('gv2',3,280,200)
   
   insert into giodaygv
   values ('gv3',5,280,300)
   
   insert into giodaygv
   values ('gv4',5,240,350)
   
   insert into giodaygv
   values ('gv5',4,250,310)
   
   
   select magv from giodaygv 
   where sotietthuchien = (select MAX(sotietthuchien)from giodaygv)
   
   select magv from giodaygv
   where sotietthuchien<sotietquydinh
   
   update giodaygv
   set sotietquydinh = 240 
   where sotietquydinh < 240
   
   select * from giaovien
   where sdt is  null
   
  create function hieu1(@a int, @b int)
   returns int 
   as
   begin
     return @a-@b
   end
   
   select dbo.hieu1(sotietthuchien, sotietquydinh) from giodaygv