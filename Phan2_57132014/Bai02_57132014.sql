create database DKMH
create table MonHoc
(
	MaMH nchar(10) primary key,
	TenMH nvarchar(50) not null,
	SoTC tinyint not null
)
create table Lop
(
	MaLop nchar(10) primary key,
	TenLop nvarchar(50) not null,
	NganhHoc nvarchar(50) not null
)
create table SinhVien
(
	MaSV nchar(10) primary key,
	HoSV nvarchar(50) not null,
	TenSV nchar(10) not null,
	NgaySinh smalldatetime,
	GioiTinh bit not null default(1),
	MaLop nchar(10) not null foreign key references Lop(MaLop)
)
create table DKMH
(
	MaSV nchar(10) not null,
	MaMH nchar(10) not null,
	NgayDK smalldatetime not null
	constraint pk_DKMH primary key (MaSV,MaMH )
)
drop table MonHoc

insert into MonHoc(MaMH,TenMH,SoTC )
 values ('MH01',N'NHẬP MÔN LẬP TRÌNH',3)
insert into MonHoc(MaMH,TenMH,SoTC )
 values ('MH02',N'KĨ THUẬT LẬP TRÌNH',5)
insert into MonHoc(MaMH,TenMH,SoTC )
 values ('MH03',N'MẠNG MÁY TÍNH',2)
insert into MonHoc(MaMH,TenMH,SoTC )
 values ('MH04',N'PHÂN TÍCH THIẾT KẾ HTTT',3)
insert into MonHoc(MaMH,TenMH,SoTC )
 values ('MH05',N'QUẢN TRỊ MẠNG',4)


insert into  Lop(MaLop,TenLop,NganhHoc )
 values ('57TH1',N'57 TIN HỌC 1',N'CÔNG NGHỆ THÔNG TIN')
insert into  Lop(MaLop,TenLop,NganhHoc )
 values ('57KT2',N'57 KẾ TOÁN 2',N'KINH TẾ')
insert into  Lop(MaLop,TenLop,NganhHoc )
 values ('57TH2',N'57 TIN HỌC 2',N'CÔNG NGHỆ THÔNG TIN')
insert into  Lop(MaLop,TenLop,NganhHoc )
 values ('57MH1',N'57 MÔI TRƯỜNG 1',N'CÔNG NGHỆ SINH HỌC')
insert into  Lop(MaLop,TenLop,NganhHoc )
 values ('57TH3',N'57 TIN HỌC 3',N'CÔNG NGHỆ THÔNG TIN')


 insert into  SinhVien(MaSV,HoSV,TenSV,NgaySinh,GioiTinh,MaLop )
 values ('57130123',N'NGUYỄN HỒNG',N'LAM',10/08/1997,0,'57KT2')
 insert into  SinhVien(MaSV,HoSV,TenSV,NgaySinh,GioiTinh,MaLop )
 values ('57133456',N'TRẦN KHÁNH',N'NGHIÊM',16/03/1997,1,'57TH1')
 insert into  SinhVien(MaSV,HoSV,TenSV,NgaySinh,GioiTinh,MaLop )
 values ('57136789',N'LÊ DIỆU LAM',N'THI',20/05/1997,0,'57TH2')
 insert into  SinhVien(MaSV,HoSV,TenSV,NgaySinh,GioiTinh,MaLop )
 values ('57131199',N'TỐNG MINH',N'THUẬN',06/12/1997,1,'57MH1') 
 insert into  SinhVien(MaSV,HoSV,TenSV,NgaySinh,GioiTinh,MaLop )
 values ('57136549',N'LA MẶC',N'KHƯƠNG',29/06/1997,1,'57TH3')