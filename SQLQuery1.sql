create database Quanlitiembanhmi;

use Quanlitiembanhmi;

create table users(
id int identity(1,1) primary key,
tendangnhap varchar(255),
matkhau varchar(255),
tenhienthi nvarchar(255),
ngaytao datetime,
ngaycapnhat datetime
);

create table sanpham(
id int identity(1,1) primary key,
tensanpham nvarchar(255),
giatien float,
mota nvarchar(255),
hinhanh nvarchar(255),
ngaythem datetime,
ngaycapnhat datetime,
soluong int
);


create table voucher (
id int identity(1,1) primary key,
tenvoucher nvarchar(255),
mavoucher varchar(255),
ngaybatdau datetime,
ngayketthuc datetime,
hoadontoithieu float,
giamgiatoida float, 
ngaythem datetime,
ngaycapnhat datetime,
);


create table hoadon (
id int identity(1,1) primary key,
tenkhachhang nvarchar(255),
sdtkhachhang nvarchar(255),
magiamgia int FOREIGN KEY (magiamgia) REFERENCES voucher(id),
id_sanpham int foreign key(id_sanpham) references sanpham(id),
soluong int,
tongtien float,
ngaythem datetime,
ngaycapnhat datetime
);

insert into users (tendangnhap, matkhau, tenhienthi, ngaytao, ngaycapnhat) values ('admin', 'admin', 'Phan Anh Minh', '2022-08-27', '2023-01-13');
insert into users (tendangnhap, matkhau, tenhienthi, ngaytao, ngaycapnhat) values ('tk1', 'tk1', 'Tai khoan1', '2022-08-22', '2022-07-16');


select * from users
delete from users

insert into sanpham (tensanpham, giatien, soluong, mota, hinhanh, ngaythem, ngaycapnhat) values ('Bánh mì bơ sữa', 10000, 2, 'Bánh mì chấm với sữa', '', '10/22/2022', '3/31/2023');
insert into sanpham (tensanpham, giatien, soluong, mota, hinhanh, ngaythem, ngaycapnhat) values ('Bánh mì thịt quay', 15000, 4, 'Bánh mì với thịt quay', '', '12/20/2022', '5/2/2023');

select * from sanpham
delete from sanpham

insert into voucher (id, tenvoucher, mavoucher, ngaybatdau, ngayketthuc, hoadontoithieu, giamgiatoida, ngaythem, ngaycapnhat) values (1, 'Không có voucher', 'FREE', '11/5/2022', '2022-12-03', 0, 0, '2023-01-19', '2022-12-29');
insert into voucher (tenvoucher, mavoucher, ngaybatdau, ngayketthuc, hoadontoithieu, giamgiatoida, ngaythem, ngaycapnhat) values ('3 tặng 1', 'BM', '11/5/2022', '2022-12-03', 100000, 20000, '2023-01-19', '2022-12-29');
insert into voucher (tenvoucher, mavoucher, ngaybatdau, ngayketthuc, hoadontoithieu, giamgiatoida, ngaythem, ngaycapnhat) values ('Mùa hè vui', 'MHV', '1/11/2023', '2022-07-09', 50000, 5000, '2022-09-13', '2022-12-27');

select * from voucher
delete from voucher

select * from hoadon
delete from hoadon
insert into hoadon (tenkhachhang, sdtkhachhang, magiamgia, ngaythem, ngaycapnhat) values ('Cookies - Englishbay Wht', '404159', 1, '2023-04-01', '2022-12-10');
insert into hoadon (tenkhachhang, sdtkhachhang, magiamgia, ngaythem, ngaycapnhat) values ('Curry Paste - Green Masala', '3580769010459222',2, '2023-05-22', '2022-08-03');

DROP PROCEDURE laydanhsachsanpham; 

-- 1. Lấy dữ liệu từ bảng sản phẩm
create proc laydanhsachsanpham
as
select ROW_NUMBER() OVER (ORDER BY id) AS stt, * from sanpham;
--2. Thêm sản phẩm

create proc themsanpham
@tensanpham nvarchar(255),
@giatien float,
@mota nvarchar(255),
@hinhanh nvarchar(255),
@soluong int,
@ngaythem datetime,
@ngaycapnhat datetime
as
insert into sanpham(tensanpham, giatien,mota,soluong,hinhanh,ngaythem,ngaycapnhat)
values(@tensanpham,@giatien,@mota, @soluong,@hinhanh, @ngaythem, @ngaycapnhat)
-- xóa bảng thêm sản phẩm
drop proc themsanpham
--3. Xóa sản phẩm
create proc xoasanpham
@id int 
as 
delete sanpham
where id =@id

--4. Sửa sản phẩm
create proc suasanpham
@id int,@tensanpham nvarchar(255),@giatien float, @mota nvarchar(255), @soluong int,@hinhanh nvarchar(255), @ngaycapnhat datetime
as
update sanpham
set tensanpham = @tensanpham,
	giatien = @giatien,
	mota = @mota,
	soluong = @soluong,
	hinhanh = @hinhanh,
	ngaycapnhat= @ngaycapnhat
where id = @id
--5. Tìm sản phẩm
create proc timsanpham 
@tim nvarchar(255)
as 
select * from sanpham
where tensanpham like N'%' + @tim + '%'
	  
-- 6. Lấy dữ liệu bảng voucher
create procedure laydulieuvoucher 
as 
select * from voucher
-- 7. Thêm voucher
create proc themvoucher
@tenvoucher nvarchar(255),
@mavoucher varchar(255),
@hoadontoithieu float,
@giamgiatoida float, 
@ngaybatdau datetime,
@ngayketthuc datetime,
@ngaythem datetime,
@ngaycapnhat datetime
as
insert into voucher(tenvoucher,mavoucher,hoadontoithieu,giamgiatoida,ngaybatdau,ngayketthuc,ngaythem,ngaycapnhat)
values(@tenvoucher,@mavoucher,@hoadontoithieu,@giamgiatoida,@ngaybatdau,@ngayketthuc,@ngaythem,@ngaycapnhat)
-- 8. Kiểm tra voucher
create proc kiemtravoucher
@voucher varchar(255)
as
select * from voucher where mavoucher = @voucher
-- 9. Chi tiết sản phẩm
create proc chitietsanpham
@id int
as
select * from sanpham where id = @id
--10 Tạo hóa đơn
create proc taohoadon
@tenkhachhang nvarchar(255),
@sdtkhachhang nvarchar(255),
@magiamgia int,
@id_sanpham int,
@soluong int,
@ngaythem datetime,
@ngaycapnhat datetime,
@tongtien float
as
insert into hoadon(tenkhachhang, sdtkhachhang, magiamgia, id_sanpham, soluong, tongtien, ngaythem, ngaycapnhat) 
values (@tenkhachhang, @sdtkhachhang, @magiamgia, @id_sanpham, @soluong, @tongtien, @ngaythem, @ngaycapnhat)

create proc xoahoadon 
@id int
as
delete from hoadon where id = @id
-- 11. xóa voucher
create proc xoavoucher
@id int 
as 
delete voucher
where id =@id

--12. Sửa voucher
create proc suavoucher
@id int,@tenvoucher nvarchar(255),@mavoucher varchar(255), @ngaybatdau datetime,@ngayketthuc datetime, @hoadontoithieu float, @giamgiatoida float,@ngaycapnhat datetime
as
update voucher
set tenvoucher=@tenvoucher,mavoucher=@mavoucher,hoadontoithieu=@hoadontoithieu,giamgiatoida=@giamgiatoida ,ngaybatdau=@ngaybatdau,ngayketthuc =@ngayketthuc,ngaycapnhat=@ngaycapnhat
where id = @id

drop proc xoavoucher

-- 13. Tìm voucher
create proc timvoucher 
@tim nvarchar(255)
as 
select * from voucher
where tenvoucher like N'%' + @tim + '%'

create proc laytatcahoadon
as
select hoadon.id as idhoadon, * from hoadon inner join sanpham on sanpham.id = hoadon.id_sanpham

DROP PROCEDURE laytatcahoadon; 

create proc dangkytaikhoan
@tendangnhap varchar(255),
@matkhau varchar(255),
@tenhienthi nvarchar(255),
@ngaytao datetime,
@ngaycapnhat datetime
as
insert into users (tendangnhap, matkhau, tenhienthi, ngaytao, ngaycapnhat) values (@tendangnhap, @matkhau, @tenhienthi, @ngaytao, @ngaycapnhat);
