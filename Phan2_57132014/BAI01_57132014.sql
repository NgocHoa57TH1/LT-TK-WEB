create database QUANLYXE_57132014
CREATE TABLE LoaiXe 
 (
	MaLoai nchar(10) primary key,
	TenLoai nvarchar(50) not null,
	DonGiaTheoNgay int not null,
 )
 create table KhachHang
 (
	MaKhach nchar(10) primary key,
	HoTenKhach nvarchar(50) not null,
	DiaChi nvarchar(50) not null,
	DienThoai nvarchar(10) not null
 )
 create table Xe
 (
	SoXe nchar(10) primary key,
	TinhTrang bit not null,
	MaLoai nchar(10) not null foreign key references LoaiXe(MaLoai)
 )
 create table NhatKiThue
 (
	SoXe nchar(10) not null foreign key references Xe(SoXe),
	MaKhach nchar(10) not null foreign key references KhachHang(MaKhach),
	TuNgay smalldatetime,
	DenNgay smalldatetime,
	constraint pk_NhatKiThue primary key(SoXe,MaKhach,TuNgay)

 )
 insert into LoaiXe(MaLoai,TenLoai,DonGiaTheoNgay)
 values ('XE01',N'XE 10 CHỖ',20000)
 insert into LoaiXe(MaLoai,TenLoai,DonGiaTheoNgay)
 values ('XE02',N'XE 16 CHỖ',30000)
 insert into LoaiXe(MaLoai,TenLoai,DonGiaTheoNgay)
 values ('XE03',N'XE 20 CHỖ',50000)
 insert into LoaiXe(MaLoai,TenLoai,DonGiaTheoNgay)
 values ('XE04',N'XE 26 CHỖ',60000)
 insert into LoaiXe(MaLoai,TenLoai,DonGiaTheoNgay)
 values ('XE05',N'XE 30 CHỖ',70000)


 insert into KhachHang(MaKhach,HoTenKhach,DiaChi,DienThoai)
 values ('KH01',N'NGUYỄN VĂN A',N'KHÁNH HÒA',12345678)
 insert into KhachHang(MaKhach,HoTenKhach,DiaChi,DienThoai)
 values ('KH02',N'TRẦN VĂN B',N'PHÚ YÊN',54671089)
 insert into KhachHang(MaKhach,HoTenKhach,DiaChi,DienThoai)
 values ('KH03',N'LÊ VĂN C',N'ĐĂK LĂK',12371089)
 insert into KhachHang(MaKhach,HoTenKhach,DiaChi,DienThoai)
 values ('KH04',N'NGUYỄN VĂN D',N'PHÚ YÊN',54671012)
 insert into KhachHang(MaKhach,HoTenKhach,DiaChi,DienThoai)
 values ('KH05',N'LÝ VĂN E',N'NHA TRANG',54453089)


 insert into Xe(SoXe,TinhTrang,MaLoai)
 values ('123',1,'XE03')
 insert into Xe(SoXe,TinhTrang,MaLoai)
 values ('456',0,'XE01')
 insert into Xe(SoXe,TinhTrang,MaLoai)
 values ('145',1,'XE02')
 insert into Xe(SoXe,TinhTrang,MaLoai)
 values ('243',0,'XE05')
 insert into Xe(SoXe,TinhTrang,MaLoai)
 values ('178',1,'XE04')


 insert into NhatKiThue(SoXe,MaKhach,TuNgay,DenNgay)
 values ('123','KH03',12/02/2017,14/02/2017)
 insert into NhatKiThue(SoXe,MaKhach,TuNgay,DenNgay)
 values ('145','KH01',17/08/2017,20/08/2017)
 insert into NhatKiThue(SoXe,MaKhach,TuNgay,DenNgay)
 values ('456','KH05',04/07/2017,10/07/2017)
 insert into NhatKiThue(SoXe,MaKhach,TuNgay,DenNgay)
 values ('243','KH02',05/10/2017,07/10/2017)
 insert into NhatKiThue(SoXe,MaKhach,TuNgay,DenNgay)
 values ('178','KH04',25/05/2017,28/05/2017)




