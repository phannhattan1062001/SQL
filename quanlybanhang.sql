create database quanlybanhang
use quanlybanhang

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
   
   --Nhap du lieu bang nhanvien--
   insert into nhanvien  
   values ('NV1',N'Huỳnh Văn Sang','09/16/1995' ,'0 ' ,'08/15/2019 ' ,'0984601234' , 'procute@gamil.com')
   
   insert into nhanvien  
   values ('NV12',N'Huỳnh Văn Rạng','09/16/1995' ,'0 ' ,'08/15/2018 ' ,'0384601234' , 'procute@gami12.com')
   
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
   
    insert into nhanvien 
   values ('NV11',N'Trần Thị Hoa Hảo Huyền','02/10/1997' ,'0 ' ,'10/20/2018 ' ,'01452367891' , '')
   
  
   
   --Nhap du lieu bang khach hang--
   
   insert into khachhang 
   values ('KH21',N'Đỗ Nhật Mỹ',' ',' ' ,'08/15/1991' , ' ')
   
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
   
   select *from khachhang 
   
    --Nhap du lieu bang sanpham--
    
    insert into sanpham
   values ('AA',N'Vở AA','cuốn',N'Lào ' ,'15.000' , '60 ')
 
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
   
   select * from sanpham 
   
    --Nhap du lieu bang hoadon--
   
   insert into hoadon
   values ('01','02/16/2020 ','KH1','NV1' ,' ')
   
   insert into hoadon
   values ('02','05/10/2020 ','KH2','NV2' ,' ')
   
   insert into hoadon
   values ('03','09/30/2020 ','KH3','NV3' ,' ')
   
   insert into hoadon
   values ('04','10/20/2020 ','KH4','NV4' ,' ')
   
   insert into hoadon
   values ('05','12/08/2020 ','KH5','NV5' ,' ')
   
   insert into hoadon
   values ('06','03/12/2020 ','KH6','NV6' ,' ')
   
   insert into hoadon
   values ('07','06/09/2020 ','KH7','NV7' ,' ')
   
   insert into hoadon
   values ('08','04/19/2020 ','KH8','NV8' ,' ')
   
   insert into hoadon
   values ('09','01/28/2020 ','KH10','NV9' ,' ')
   
   insert into hoadon
   values ('10','02/27/2020 ','KH11','NV10' ,' ')
   
   insert into hoadon
   values ('11','03/14/2020 ','KH12','NV5' ,' ')
   
   insert into hoadon
   values ('12','04/27/2020 ','KH13','NV6' ,' ')
   
   insert into hoadon
   values ('13','05/16/2020 ','KH14','NV9' ,' ')
   
   insert into hoadon
   values ('14','06/19/2020 ','KH15','NV5' ,' ')
    
   insert into hoadon
   values ('15','09/24/2020 ','KH1','NV4' ,' ')
   
   insert into hoadon
   values ('16','10/22/2020 ','KH4','NV2' ,' ')
   
   insert into hoadon
   values ('17','11/20/2020 ','KH3','NV9' ,' ')
   
   insert into hoadon
   values ('18','06/30/2020 ','KH10','NV2' ,' ')
   
   select * from hoadon
   
   --Nhap du lieu bang cthd--
   insert into cthd
   values ('01','BB ','30 ','15000') 
   
   insert into cthd
   values ('02','TV ','10','4000000') 
 
   insert into cthd
   values ('04','KDR ','50 ','40000') 
   
   insert into cthd
   values ('03','XM ','5 ','35000000') 
   
   insert into cthd
   values ('05','QA','90 ','350000') 
   
   insert into cthd
   values ('06','BC ','44 ','6000') 
   
   insert into cthd
   values ('07','GD ','20 ','3200000') 
   
   insert into cthd
   values ('08','DP ','25 ','40000') 
   
   insert into cthd
   values ('09','CK ','10 ','350000') 
   
   insert into cthd
   values ('10','MG ','59 ','4000') 
   
   insert into cthd
   values ('11','BG ','15 ','4000000') 
   
   insert into cthd
   values ('12','VHS ','40 ','17000') 
   
   insert into cthd
   values ('13','DT ','2 ','10000000') 
   
   insert into cthd
   values ('14','TL ','7 ','5550000') 
   
   insert into cthd
   values ('15','DT ','8 ','10000000') 
   
   insert into cthd
   values ('16','XD ','17 ','3500000') 
   
   insert into cthd
   values ('17','DP ','30 ','40000') 
   
   insert into cthd
   values ('18','XM ','7 ','40000000')
    insert into cthd
   values ('18','SH ','7 ','40000000')  
   
   SELECT * FROM khachhang
   
   --BAI 2--
  1. select masp,tensp,soluong from sanpham
    
  2. select hoten, ngaylamviec from nhanvien
   
  3. select diachi, sodt from khachhang where diachi =N'Quy Nhơn'
   
  4. select masp, tensp from sanpham where gia >100000 and soluong <50
   
  5. select hoten from khachhang where doanhso <=0
   
  6. select tensp from sanpham where nuocsx =N'Nhật Bản'
   
  7. select khachhang.hoten  from khachhang, sanpham, hoadon, cthd
     where khachhang.makh=hoadon.makh 
     and hoadon.sohd=cthd.sohd 
     and cthd.masp=sanpham.masp 
     and sanpham.masp = 'SH'
      
  8. select hoadon.trigia, nhanvien.hoten, khachhang.hoten from hoadon, nhanvien ,khachhang 
     where nhanvien.manv=hoadon.manv and khachhang.makh=hoadon.makh and hoadon.sohd ='01'
      
  9. select nhanvien.hoten from nhanvien, khachhang
     where nhanvien.sodt = khachhang.sodt
      
  10. select  a.hoten from nhanvien a,nhanvien b
      where a.ngaysinh =b.ngaysinh and a.manv <> b.manv 
   
  --BAI 3--
   1. select tensp from sanpham
      where sanpham.masp  not in (select  masp from cthd)
   
   2. select hoten from nhanvien 
      where nhanvien .manv not in (select manv from hoadon )
   
   3. select hoten, manv from nhanvien
      where  year(ngaylamviec) = (select(MIN(year(ngaylamviec)))from nhanvien)
   
   4. select CTHD.sohd,makh, SUM(soluong*giaban)
      from cthd,hoadon
      where cthd.sohd=hoadon.sohd
      group by cthd.sohd,makh
   
   5. select sanpham. tensp, cthd.masp  from sanpham,hoadon,cthd
      where YEAR(ngayhd)='2020'and sanpham .masp =cthd.masp and cthd .sohd =hoadon .sohd
      group by  cthd.masp ,sanpham.tensp
      having COUNT(cthd.masp)=1
   
   6. create proc cap_nhat_tri_gia (@shd int) as
      update hoadon 
      set trigia=
      (select sum(soluong*giaban) from  cthd
      where  sohd = @shd 
      group by sohd)
      where sohd =@shd
      cap_nhat_tri_gia 18
      
    
   7. create proc cap_nhat_danh_so (@mkh nvarchar(30)) as
      update khachhang
      set doanhso =
      (select   SUM(trigia)from hoadon ,khachhang 
      where khachhang .makh= hoadon .makh and khachhang.makh = @mkh
      group by khachhang.makh )
      where khachhang.makh= @mkh
      cap_nhat_danh_so kh17
      
    
   8. select nhanvien .manv ,nhanvien .hoten ,COUNT(sohd)N'số hóa đơn đã lập' 
      from nhanvien  left join hoadon 
      on nhanvien .manv =hoadon .manv 
      group by nhanvien .manv,nhanvien .hoten
    
   9. select sanpham .tensp ,sanpham .masp, sum(sanpham .soluong -cthd.soluong) as tonkho from cthd,sanpham 
      where sanpham .masp =cthd.masp 
      group by sanpham .masp ,tensp 
    
   10. select sanpham .masp ,sanpham .tensp ,SUM(cthd.giaban*cthd.soluong-sanpham.gia*sanpham.soluong) as tienloi from 
       cthd, sanpham where sanpham .masp =cthd.masp 
       group by tensp,sanpham .masp
    
    -- BÀI 4--
    
    1. Select top 1 nhanvien .manv ,nhanvien.hoten , (sum(soluong))as soluongnhieunhat
       from nhanvien ,cthd ,hoadon 
       where  nhanvien .manv =hoadon .manv and hoadon .sohd =cthd.sohd 
       group by nhanvien .manv ,nhanvien.hoten 
       order by SUM(soluong) desc 
       
    2. select cthd.sohd,soluong from cthd
       where soluong = (select MIN(soluong)from cthd)
    
    3. select  khachhang.makh from cthd,khachhang, hoadon 
       where SUM(soluong)=(select MAX(SUM(soluong)) from cthd) and khachhang .makh=hoadon .makh and hoadon .sohd=cthd.sohd 
       group by khachhang. makh
       
    
    4. select cthd.sohd , SUM(cthd.soluong*giaban)as tongcong, sanpham.masp,tensp from sanpham , cthd 
       where cthd .masp =sanpham .masp
       group by  cthd .sohd, sanpham .masp,tensp
       order by sohd
       compute sum(sum(cthd.soluong*giaban)) by sohd
    
     
    --BAI 5--
    select *from chi_tieu_nv
    
    1. create view abc as
       select sanpham.masp ,sanpham .tensp 
       from sanpham 
       where nuocsx =N'Nhật Bản'
    
    2. create view mat_hang_DT as
       select nuocsx, masp from sanpham
       where tensp=N'Điện Thoại'
    
    3. create view khach_hang_doanh_so_cao_nhat as
       select top 1 hoadon.makh ,SUM(soluong*giaban)as doanhso 
       from khachhang , hoadon , cthd 
       where khachhang .makh =hoadon .makh and hoadon .sohd = cthd .sohd 
       group by hoadon .makh 
    
    4. create view chi_tiet_don_dat_hang_1 as
       select khachhang.makh ,nhanvien .manv, SUM(soluong*giaban) as trigia 
       from cthd,khachhang ,nhanvien, hoadon 
       where khachhang .makh= hoadon.makh  and hoadon .sohd= cthd.sohd and hoadon .manv= nhanvien .manv and hoadon.sohd ='01'
       group by khachhang.makh ,nhanvien .manv
    
    5. create view san_pham_Viet_Nam_sx as
       select masp,SUM(soluong)as tongsoluong 
       from sanpham 
       where nuocsx=N'Việt Nam'
       group by masp
       
    6. create view don_dat_hang_so_3 as
       select tensp,SUM(cthd.soluong*giaban) as tongtien
       from sanpham ,cthd 
       where sohd='03' and cthd.masp=sanpham.masp 
       group by tensp
    
    7. create view tt_khach_hang as
       select makh,hoten 
       from khachhang 
       where sodt is null  
    select * from tt_khach_hang
    8. create view tt_nhan_vien as
       select a.manv , a.hoten
       from  nhanvien a, nhanvien b
       where a.ngaysinh=b.ngaysinh and a.manv<>b.manv 
       
    9. create view chi_tieu_nv as
       select nhanvien.manv, hoten
       from nhanvien  
       where  manv not in(select manv from hoadon where nhanvien .manv=hoadon .manv  and  DAY(ngayhd)<='30')
      
    10. create view ct_san_pham as
        select masp, tensp 
        from sanpham 
        where soluong <'70'
        
    --Bài 6--
    1.  create proc ct_kh (@mkh nvarchar(30)) as
        select doanhso from khachhang
        where makh= @mkh
        ct_kh kh3
        
    2.  create proc ct_sp (@gia int, @sl int) as
        select tensp, masp from sanpham 
        where gia > @gia and soluong < @sl
        ct_sp 300000,70
        
    3.  alter proc ct_nv (@mnv char(10)) as
        select hoadon.manv,hoten ,(count(sohd)) as soluonghoadon 
        from nhanvien, hoadon 
        where nhanvien .manv =@mnv and nhanvien .manv=hoadon.manv  
        group by sohd,hoadon .manv,hoten
        ct_nv NV9
    
    4.  create proc ct_hd (@shd int) as
        select manv, COUNT(masp)as slsp 
        from hoadon, cthd
        where hoadon.sohd =cthd.sohd and hoadon .sohd =@shd
        group by hoadon.sohd ,manv
        ct_hd 10
        
   *5.  create proc ct_sl (@msp nvarchar(20))  as
        select top 1( sum(cthd.soluong)) as lonnhat,  sanpham.masp from sanpham,cthd
        where  cthd.masp=sanpham .masp and sanpham.masp= @msp
        group by sohd, sanpham .masp ,cthd.soluong
        order by sum(cthd.soluong) desc
        ct_sl xm
         
         drop proc ct_sl     
    -- Bài 7--
    1. create function tongtien (@shd int)
       returns int
       as
       begin
        declare @trigia int 
        select @trigia = (trigia) from hoadon where sohd=@shd
        return @trigia
       end
     
     select dbo.tongtien(sohd)from hoadon 
  
  
    2. create function xeploai(@sl int)
       returns nvarchar(30)
       as
       begin declare @xl nvarchar(30)
       select
        @xl = case 
       when soluong > 10 then N'bán chạy'
       else N'Bán chậm'
       end
       from cthd
       where soluong=@sl
       return @xl
       end 
       
       select dbo.xeploai(soluong) from cthd 
       
       
    3. create function kttt()
       returns table
       as
       return select masp,tensp,soluong from sanpham
       
       select * from kttt()
       
       
    4. alter function ttkh ()
       returns table 
       as
       return (select  max(doanhso) as doanhsocaonhat from khachhang  )
       
       select * from khachhang
   
   
    5. create function tthd (@masp nvarchar(20))
       returns int 
       begin 
       declare @sll int 
       select @sll=(select  sum(cthd.soluong) as solonnhat  from cthd, hoadon
       where MONTH(ngayhd)='06' and hoadon .sohd=cthd.sohd and cthd.masp=@masp
       group by cthd.masp)
       return @sll
       end
       drop function tthd
       select dbo.tthd('mx') 
       
    --Bài 8--
     1. create trigger ghsl
        on cthd 
        for insert 
        as
        if(select soluong from inserted)>= (select sanpham.soluong from sanpham,inserted where sanpham.masp=inserted.masp)
           begin 
           print('nhap lai')
           rollback tran
           end
        insert into cthd values ('01','aa',80,123)
    
     2. create trigger soluongnhap
        on sanpham
        for insert 
        as 
        if( select soluong from inserted) <= 50 
        begin 
          print('vui long nhap lai')
          rollback tran
        end
        
     3. create trigger inds
        on sanpham
        for update
        as
        begin
        declare @giat int =(select gia from deleted)
        declare @gias int =( select gia from inserted)
        declare @msp nvarchar(30) =(select masp from deleted)
        if(@giat) <> (@gias)
          begin
          print '@msp'
          print  '@msp, @giat, @gias'
          rollback tran
          end
        end
       
      4. create trigger khongchoxoa
         on nhanvien
         for delete
         as
         if(select YEAR(getdate())-YEAR(ngaylamviec) from deleted)>= '1'
         begin 
           print('khong duoc phep xoa')
           rollback tran
         end
         
      5. alter trigger capnhaplaitrigia
         on cthd
         for insert
         as
         begin
          declare @shd int =( select sohd from cthd)
           update hoadon
           
           set trigia=(select(SUM(inserted.soluong*cthd.giaban)) 
           from cthd,inserted 
           where inserted.sohd=hoadon.sohd and hoadon.sohd=@shd
           group by cthd.sohd)
           where sohd=@shd
         end
         
         select * from hoadon
         insert into cthd
		 values ('08','bg','40 ','3200000') 
         
       6. alter trigger suagia
          on cthd
          for update
          as
          begin 
          declare @giaban float =(select (1.5*gia) from sanpham)
          update cthd
          set giaban= @giaban
          end
          
          
          select * from cthd
          select * from sanpham
          
          
          alter trigger xempro 
          on sinhvien
          for delete 
          as
          begin 
          declare @msv nvarchar(10)=(select masv from deleted,lop where deleted.malop=lop.malop)
          if(select diachi from deleted,lop where deleted.malop=lop.malop  and deleted.masv=@msv and  tenlop like 'CNTT%')= 'quynhon'
          begin
          print 'khong cho xoa'
          rollback tran 
          end
          end
       delete from sinhvien 
       where masv='sv3'