create database QLBANHANG
use QLBANHANG

create table nhanvien
( manv char(10) primary key,
  hoten nvarchar(60) not null,
  ngaysinh date null,
  gioitinh bit null,
  ngaylamviec date null,
  sodt char(11) null,
  email char(30) not null)
  
  
  
  create table khachhang 
  ( makh char(10) primary key,
    hoten nvarchar(60) not null,
    diachi nvarchar(100) null,
    sodt char(11) null,
    ngaysinh date null,
    doanhso float null)
    
    
    
    
 create table  sanpham
 ( masp char(10) primary key,
   tensp nvarchar(50) not null,
   dvt nvarchar(30) null,
   nuocsx nvarchar(50) null,
   gia float not null,
   soluong float not null)
   
   
   
   
  create table hoadon 
  ( sohd char(10) primary key,
    ngayhd date not null,
    makh char(10) not null
    constraint fk_makh foreign key(makh) 
    references khachhang(makh) on delete cascade on update cascade,
    manv char(10) not null
    constraint fk_manv foreign key(manv) 
    references nhanvien(manv) on delete cascade on update cascade,
    trigia float null)
    
    
    create table cthd
    ( sohd char(10) not null,
      masp char(10) not null,
      soluong float not null,
      giaban float not null,
      constraint cthd_pk primary key (sohd , masp))
    -- BAI 1--  
   alter table cthd
   add constraint fk_sohd foreign key(sohd)
   references hoadon(sohd)on delete cascade on update cascade
   
   alter table cthd
   add constraint fk_masp foreign key(masp)
   references sanpham(masp)on delete cascade on update cascade
   
   alter table nhanvien
   add constraint ck_ngaysinh check (year(getdate())-year(ngaysinh)>=18)
   
   alter table khachhang
   add constraint u_sodt unique(sodt)
   
   alter table sanpham
   add constraint ck_soluong check(soluong>=50)
   alter table nhanvien
   add constraint ck_ass check (sodt>=10)
   
   --Nhap du lieu bang nhanvien--
   insert into nhanvien  
   values ('NV30',N'Huỳnh Văn Sang','09/16/1995' ,'0 ' ,'08/15/2019 ' ,'09' , 'procute@gamil.com')
   
   insert into nhanvien 
   values ('NV2',N'Trương Thành Nam','10/17/1998' ,'1 ' ,'08/15/2019 ' ,'0984601456' , 'procute1@gamil.com')
   
   insert into nhanvien 
   values ('NV3',N'Đỗ Thị Thuận','08/10/1995' ,'0 ' ,'09/15/2019 ' ,'09846016787' , 'procute2@gamil.com')
   
   insert into nhanvien 
   values ('NV4',N'Trần Hạo Thiên','01/20/1999' ,'0 ' ,'02/15/2019 ' ,'0984601444' , 'procute3@gamil.com')
   
   insert into nhanvien 
   values ('NV5',N'Đỗ Văn Tài','12/19/1991' ,'1 ' ,'06/20/2019 ' ,'0984601111' , 'procute4@gamil.com')
   
    insert into nhanvien 
   values ('NV6',N'Trần Văn Thành','02/25/1992' ,'1 ' ,'07/21/2019 ' ,'0984602222' , 'procute5@gamil.com')
   
    insert into nhanvien 
   values ('NV7',N'Lê Trung Phong','06/25/1992' ,'1 ' ,'09/30/2019 ' ,'09514602333' , 'procute6@gamil.com')
   
    insert into nhanvien 
   values ('NV8',N'Hoàng Văn Mai','12/01/1995' ,'0' ,'03/19/2018 ' ,'01671087624' , 'procute7@gamil.com')
   
    insert into nhanvien 
   values ('NV9',N'Nguyễn Văn Thịnh','11/20/1992' ,'1 ' ,'01/29/2019 ' ,'0955402341' , '')
   
    insert into nhanvien 
   values ('NV10',N'Hoàng Cao Thanh Tú','06/07/1992' ,'0 ' ,'09/08/2019 ' ,'0144602367' , '')
   
   --Nhap du lieu bang khach hang
   
   insert into khachhang 
   values ('KH1',N'Trần Thanh Cao',' ','0984605433 ' ,'08/15/1999' , ' ')
   
   insert into khachhang 
   values ('KH2',N'Đỗ Văn Tài',N'02 Hoàng Văn Thụ ','0984601111 ' ,'09/20/1997' , ' ')
    
   insert into khachhang 
   values ('KH3',N'Mai Tài Phến',' ','0984601546 ' ,'08/15/2000' , ' ')
   
   insert into khachhang 
   values ('KH4',N'Đỗ Nhật Nam',N'20 Hùng Vương ','0982634256 ' ,'02/26/2001' , ' ')
   
   insert into khachhang 
   values ('KH5',N'Trình Thanh Bình',' ','01674829740 ' ,'03/12/1987' , ' ')
   
   insert into khachhang 
   values ('KH6',N'Đỗ Trấn Thành',N'15 Thắng Lợi ','02154879635 ' ,'12/11/1988' , ' ')
   
   insert into khachhang 
   values ('KH7',N'Nguyễn Quang Hải',' ','01451278946 ' ,'04/15/1996' , ' ')
   
   insert into khachhang 
   values ('KH8',N'Nguyễn Công Phượng',N'30 Trường Chinh ','0923406546 ' ,'04/11/1995' , ' ')
      
   insert into khachhang 
   values ('KH10',N'Bùi Tiến Dũng',' ','0123608746 ' ,'02/10/1998' , ' ')
   
   insert into khachhang 
   values ('KH11',N'Đặng Văn Lâm',' ','07664554655 ' ,'07/30/2000' , ' ')
   
   insert into khachhang 
   values ('KH12',N'Nguyễn Văn Toàn',N'69 Tôn Thất Tùng ','0124576389 ' ,'01/30/1998' , ' ')
   
   insert into khachhang 
   values ('KH13',N'Đoàn Văn Hậu',' ','01478963524 ' ,'03/15/2001' , ' ')
   
   insert into khachhang 
   values ('KH14',N'Lương Xuân Trường',N'20 Hàm Nghi ','09145632591 ' ,'04/17/1996' , ' ')
   
   insert into khachhang 
   values ('KH15',N'Phan Văn Đức',' ','03156472894 ' ,'05/10/1998' , ' ')
   
   --Nhap du lieu bang sanpham--
 
   insert into sanpham
   values ('BS',N'Bánh socola','bì ',N'Lào ' ,'15.000' , '60 ')
   
   insert into sanpham
   values ('SH',N'Sữa Hộp',N'Hộp ',N'Nhật Bản ' ,'20.000' , '80 ')
   
   insert into sanpham
   values ('BC',N'Bút chì',N'cây ',N'Việt Nam ' ,'4.000' , '100 ')
   
   insert into sanpham
   values ('VHS',N'Vở',N' Cuốn ',N'Việt Nam ' ,'15.000' , '200 ')
   
   insert into sanpham
   values ('KS',N'Kẹo sữa',N'Bì ',N'Thái Lan ' ,'30.000' , '80 ')
   
   insert into sanpham
   values ('TV',N'Tivi',N'Cái ',N'Nhật Bản ' ,'2900000' , '100 ')
   
   insert into sanpham
   values ('TL',N'Tủ Lạnh',N'Cái ',N'Thái Lan ' ,'5000000' , '80 ')
   
   insert into sanpham
   values ('XD',N'Xe đạp',N'Chiếc ',N'Mỹ ' ,'3000000' , '90 ')
   
   insert into sanpham
   values ('LX',N'Lốp xe',N'Cái ',N'Thái Lan ' ,'110.000' , '80 ')
   
   insert into sanpham
   values ('DT',N'Điện Thoại',N'Cái',N'Anh ' ,'9000000' , '100 ')
   
   insert into sanpham
   values ('MT',N'Máy tính',N'Cái',N'Lào ' ,'11000000' , '90 ')
   
   insert into sanpham
   values ('CK',N'Cửa kính',N'Cái ',N'Thái Lan ' ,'300.000' , '60 ')
   
   insert into sanpham
   values ('BG',N'Bàn ghế',N'Bộ ',N'Bỉ' ,'3000000' , '60 ')
   
   insert into sanpham
   values ('MG',N'Mỳ gói',N'Bì ',N'Việt Nam ' ,'3000' , '80 ')
   
   insert into sanpham
   values ('QA',N'Đồ thể thao',N'Bộ',N'Việt Nam ' ,'300000' , '1000 ')
   
   insert into sanpham
   values ('GD',N'Giày da',N'Đôi ',N'Thái Lan ' ,'3000000' , '60 ')
   
   insert into sanpham
   values ('DP',N'Đen pha',N'cái ',N'Thái Lan ' ,'30000' , '100 ')
   
   insert into sanpham
   values ('XM',N'Xe máy',N'Chiếc ',N'Thái Lan ' ,'30000000' , '60 ')
   
   insert into sanpham
   values ('BB',N'Bàn chải',N'Cái ',N'Lào' ,'10000' , '80 ')
   
   insert into sanpham
   values ('KDR',N'Kem đánh răng',N'hộp ',N'Mỹ ' ,'30000' , '100 ')
   select* from sanpham 
   delete from sanpham 
   where masp='KDR'
   --Nhap du lieu bang hoadon--
   
   insert into hoadon
   values ('01','02/16/2019 ','12 ','101 ' ,'15.000')
   
    insert into hoadon
   values ('02','03/20/2019 ','11 ','104 ' ,'100.000')
   
    insert into hoadon
   values ('03','10/30/2019 ','10 ','102 ' ,'170000.000')
   
    insert into hoadon
   values ('04','03/11/2019 ','12 ','103 ' ,'500.000')
   
    
     insert into cthd
   values ('01','2 ','60 ','15.000')
    
   insert into cthd
   values ('02','3 ','100 ','100.000')
    
   insert into cthd
   values ('03','1','80 ','20.000')
    
    insert into cthd
   values ('04','4','0 ','180.000')
   
   
   select masp,tensp,soluong from sanpham
    
   select hoten, ngaylamviec from nhanvien
   
   select diachi, sodt from khachhang where diachi in('Quy Nhơn')
   
   select masp, tensp from sanpham where gia >100000 and soluong <50
   
   select hoten from khachhang where doanhso <=0
   
   select tensp from sanpham where nuocsx in('Nhật Bản')
   
   select khachhang.hoten  from khachhang, sanpham, hoadon, cthd
    where khachhang.makh=hoadon.makh 
    and hoadon.sohd=cthd.sohd 
    and cthd.masp=sanpham.masp 
    and sanpham.masp = ('2')
      
     select hoadon.trigia, nhanvien.hoten, khachhang.hoten from hoadon, nhanvien ,khachhang 
     where nhanvien.manv=hoadon.manv and khachhang.makh=hoadon.makh and hoadon.sohd =('01') 
      
      select nhanvien.hoten from nhanvien, khachhang
      where nhanvien.sodt = khachhang.sodt
      
      select nhanvien. hoten from nhanvien
      where  nhanvien .ngaysinh =nhanvien .ngaysinh and nhanvien .manv <> nhanvien .manv 
      
      --bai 3--
      
      select sanpham.tensp from sanpham
      where NOT EXISTS(SELECT masp from cthd where masp= sanpham .masp)
      
      select hoten from nhanvien 
      where not exists ( select manv from hoadon where manv = nhanvien .manv)
      
      select hoten,manv from nhanvien 
      where year(ngaysinh) = (select MAX(year(getdate())-year(ngaysinh)) from nhanvien )  
      
      
      select hoadon.sohd, hoadon.makh
      from (( khachhang inner join hoadon on hoadon.makh=khachhang.makh)
      inner join cthd on hoadon.sohd=cthd.sohd )
      group by hoadon.makh ,hoadon .sohd 
       sum (soluong*giaban)
    