create database QLBH
create table KhachHang
(
	MaKH		nchar(10)		primary key,
	TenKH		nvarchar(50)	not null,
	DiaChi		nvarchar(50)	not null,
	DienThoai	nchar(10)		not null,
	GhiChu		nvarchar(50)	not null
)
create table LoaiMatHang
(
	MaLoaiMH	nchar(10)		primary key,
	TenLoaiMH	nvarchar(50)	not null
)
create table NhaCungCap
(
	MaNCC		nchar(10)		primary key,
	TenNhaCC	nvarchar(50)	not null,
	DiaChi		nvarchar(50)	not null,
	DienThoai	nchar(10)		not null,
	GhiChu		nvarchar(50)	not null
)
create table BoPhan
(
	MaBP	nchar(2)		primary key,
	TenBP	nvarchar(50)	not null
)


create table NhanVien
(
	MaNV		nchar(5)		primary key,
	HoNV		nvarchar(50)	not null,
	TenNV		nchar(10)		not null,
	GioiTinh	bit				not null default(1),
	NgaySinh	smalldatetime						,
	DiaChi		nvarchar(50)	not null,
	Luong		tinyint			not null,
	MaBP		nchar(2)		foreign key references BoPhan(MaBP)

)

create table MatHang
(
	MaMH		nchar(5)		primary key,
	TenMH		nchar(10)		not null,
	DVT			nvarchar(5)		not null,
	DonGiaNhap	smallmoney,
	DonGiaBan	smallmoney,
	SoLuongTon	tinyint,
	MaLoaiMH	nchar(10)		foreign key references LoaiMatHang (MaLoaiMH)

)
create table HoaDonNhap
(
	SoHDN		nchar(5)			primary key,
	NgayNhap	smalldatetime		not null,
	MaNCC		nchar(10)			foreign key references NhaCungCap (MaNCC), 
	MaNV		nchar(5)			foreign key references NhanVien (MaNV), 
	GhiChu		nvarchar(50)		not null
)



create table HoaDonBan
(
	SoHDB	nchar(5)		primary key,
	NgayBan smalldatetime	not null,
	MaNCC	nchar(10)		foreign key references NhaCungCap (MaNCC), 
	MaNV	nchar(5)		foreign key references NhanVien (MaNV), 
	GhiChu	nvarchar(50)	not null
)


create table CTHDN
(
	SoHDN			nchar(5)	not null,
	MaMH			nchar(5)	not null,
	SoLuongNhap		tinyint		not null,
	DonGiaNhap		smallmoney	NOT NULL,
	constraint pk_CTHDN			primary key (SoHDN,MaMH )
)

create table CTHDB
(
	SoHDB		nchar(5)		not null,
	MaMH		nchar(5)		not null,
	SoLuongBan	tinyint			not null,
	DonGiaBan	smallmoney		NOT NULL,
	constraint pk_CTHDB			primary key (SoHDB,MaMH )
)
insert into KhachHang (MaKH,TenKH,DiaChi,DienThoai,GhiChu)
values ('KH01',N'TÔ THIÊN ÂN',N'32 TRẦNN VĂN ƠN','0123456789',N'KHÁCH LẺ')
insert into KhachHang (MaKH,TenKH,DiaChi,DienThoai,GhiChu)
values ('KH02',N'ĐĂNG KHÁNH KIỆT',N'50/16 NGÔ ĐỨC KẾ','1207894652',N'KHÁCH SỈ')
insert into KhachHang (MaKH,TenKH,DiaChi,DienThoai,GhiChu)
values ('KH03',N'LÊ NGỌC MAI',N'4 NGUYỄN THỊ MINH KHAI','0978515249','KHÁCH SỈ')
insert into KhachHang (MaKH,TenKH,DiaChi,DienThoai,GhiChu)
values ('KH04',N'NGUYỄN A',N'17 TRẦN VĂN ƠN','012347812','KHÁCH LẺ')
insert into KhachHang (MaKH,TenKH,DiaChi,DienThoai,GhiChu)
values ('KH05',N'THẠCH TRÂN TRÂN',N'89 PHẠM HỒNG THÁI','0178947100', 'KHÁCH SỈ?')


insert into LoaiMatHang (MaLoaiMH, TenLoaiMH)
values ('LHGD',N'LOẠI HÀNG GIA DỤNG')
insert into LoaiMatHang (MaLoaiMH, TenLoaiMH)
values ('LHNH',N'LOẠI HÀNG NGẮN HẠN')
insert into LoaiMatHang (MaLoaiMH, TenLoaiMH)
values ('LHSC',N'LOẠI HÀNG SỬA CHỮA')
insert into LoaiMatHang (MaLoaiMH, TenLoaiMH)
values ('LHDH',N'LOẠI HÀNG DÀI HẠN')
insert into LoaiMatHang (MaLoaiMH, TenLoaiMH)
values ('LHTT',N'LOẠI HÀNG THỜI TRANG')

insert into NhaCungCap(MaNCC,TenNhaCC,DiaChi,DienThoai,GhiChu)
values ('NCC01',N'NHÀ BẾP',N'100/5 NGUYỄN THIỆN THUẬT', '0157849213',N'CUNG CẤP HÀNG GIA DỤNG')
insert into NhaCungCap(MaNCC,TenNhaCC,DiaChi,DienThoai,GhiChu)
values ('NCC02',N'ĐỒ ĂN TRONG NGÀY',N'45 HOÀNG HỮU NAM', '0197548123',N'CUNG CẤP HÀNG NGẮN HẠN')
insert into NhaCungCap(MaNCC,TenNhaCC,DiaChi,DienThoai,GhiChu)
values ('NCC03',N'ĐỒ CƠ KHÍ',N'10 LÍ TỰ TRỌNG', '0987146255',N'CUNG CẤP HÀNG SỬA CHỮA')
insert into NhaCungCap(MaNCC,TenNhaCC,DiaChi,DienThoai,GhiChu)
values ('NCC04',N'ĐỒ ĂN ĐÔNG LẠNH',N'70 TRẦN PHÚ', '0157849213',N'CUNG CẤP HÀNG GIA DỤNG')
insert into NhaCungCap(MaNCC,TenNhaCC,DiaChi,DienThoai,GhiChu)
values ('NCC05',N'FASHION',N'10/5 HỒ TÙNG MẬU', '0157814803',N'CUNG CẤP QUẦN ÁO')



insert into BoPhan(MaBP,TenBP)
values ('01','PHÒNG NHÂN SỰ')
insert into BoPhan(MaBP,TenBP)
values ('02','PHÒNG DỰ ÁN')
insert into BoPhan(MaBP,TenBP)
values ('03','PHÒNG KINH DOANH')
insert into BoPhan(MaBP,TenBP)
values ('04','PHÒNG THIẾT KẾ')
insert into BoPhan(MaBP,TenBP)
values ('05','PHÒNG MAKETING')




insert into NhanVien(MaNV,HoNV,TenNV,GioiTinh,NgaySinh,DiaChi,Luong,MaBP)
 values ('NV01',N'LÊ THÀNH',N'NGHĨA',1,10/08/1979,N'40 VÂN ĐỒN',100,'01')
insert into NhanVien(MaNV,HoNV,TenNV,GioiTinh,NgaySinh,DiaChi,Luong,MaBP)
 values ('NV02',N'HUỲNH TRẤN',N'MINH',1,25/01/1997,N'16 NGUYỄN BIỂU',190,'03')
insert into NhanVien(MaNV,HoNV,TenNV,GioiTinh,NgaySinh,DiaChi,Luong,MaBP)
 values ('NV03',N'LA NGỌC',N'THỦY',2,05/11/1990,N'116 DÃ TƯỢNG',150,'05')
 insert into NhanVien(MaNV,HoNV,TenNV,GioiTinh,NgaySinh,DiaChi,Luong,MaBP)
 values ('NV04',N'THẠCH MỘC',N'NGÂN',2,27/03/1993,N'55 MAI XUÂN THƯỞNG',170,'02')
 insert into NhanVien(MaNV,HoNV,TenNV,GioiTinh,NgaySinh,DiaChi,Luong,MaBP)
 values ('NV05',N'MỘC GIANG',N'GIANG',1,19/05/1993,N'188 HÒN CHỒNG',140,'04')





insert into MatHang (MaMH,TenMH,DVT,DonGiaNhap,DonGiaBan,SoLuongTon,MaLoaiMH)
values ('MH01',N'DAO PHÂY',N'CÁI',12000,16000,0,'LHGD')
insert into MatHang (MaMH,TenMH,DVT,DonGiaNhap,DonGiaBan,SoLuongTon,MaLoaiMH)
values ('MH02',N'KHOAN ĐIỆN',N'CÁI',150000,200000,5,'LHSC')
insert into MatHang (MaMH,TenMH,DVT,DonGiaNhap,DonGiaBan,SoLuongTon,MaLoaiMH)
values ('MH03',N'ĐẬU HÀ LAN',N'KG',10000,18000,7,'LHGD')
insert into MatHang (MaMH,TenMH,DVT,DonGiaNhap,DonGiaBan,SoLuongTon,MaLoaiMH)
values ('MH04',N'MÌ GÓI',N'GÓI',1000,5000,1,'LHDH')
insert into MatHang (MaMH,TenMH,DVT,DonGiaNhap,DonGiaBan,SoLuongTon,MaLoaiMH)
values ('MH05',N'ÁO THUN',N'CÁI',50000,65000,0,'LHTT')



insert into HoaDonNhap(SoHDN,NgayNhap,MaNCC,MaNV,GhiChu)
values ('HDN01',12/12/2017,'NCC01','NV04','NHẬP SÁNG')
insert into HoaDonNhap(SoHDN,NgayNhap,MaNCC,MaNV,GhiChu)
values ('HDN02',18/03/2017,'NCC02','NV01','NHẬP SÁNG')
insert into HoaDonNhap(SoHDN,NgayNhap,MaNCC,MaNV,GhiChu)
values ('HDN03',25/09/2017,'NCC03','NV03','NHẬP CHIỀU')
insert into HoaDonNhap(SoHDN,NgayNhap,MaNCC,MaNV,GhiChu)
values ('HDN04',26/01/2017,'NCC04','NV02','NHẬP SÁNG')
insert into HoaDonNhap(SoHDN,NgayNhap,MaNCC,MaNV,GhiChu)
values ('HDN05',10/05/2017,'NCC05','NV05','NHẬP SÁNG')


insert into  HoaDonBan(SoHDB,NgayBan,MaNCC,MaNV,GhiChu)
values ('HDB01',27/09/2017,'NCC03','NV05','BÁN SÁNG')
insert into  HoaDonBan(SoHDB,NgayBan,MaNCC,MaNV,GhiChu)
values ('HDB02',20/03/2017,'NCC01','NV02','BÁN CHIỀU')
insert into  HoaDonBan(SoHDB,NgayBan,MaNCC,MaNV,GhiChu)
values ('HDB03',29/09/2017,'NCC02','NV03','BÁN SÁNG')
insert into  HoaDonBan(SoHDB,NgayBan,MaNCC,MaNV,GhiChu)
values ('HDB04',28/01/2017,'NCC05','NV01','BÁN SÁNG')
insert into  HoaDonBan(SoHDB,NgayBan,MaNCC,MaNV,GhiChu)
values ('HDB05',17/05/2017,'NCC03','NV04','BÁN CHIỀU')



insert into CTHDN(SoHDN,MaMH,SoLuongNhap,DonGiaNhap)
 values ('HD01','MH01',20,12000)
insert into CTHDN(SoHDN,MaMH,SoLuongNhap,DonGiaNhap)
 values ('HD02','MH02',17,150000)
insert into CTHDN(SoHDN,MaMH,SoLuongNhap,DonGiaNhap)
 values ('HD03','MH03',30,10000)
insert into CTHDN(SoHDN,MaMH,SoLuongNhap,DonGiaNhap)
 values ('HD04','MH04',100,1000)
insert into CTHDN(SoHDN,MaMH,SoLuongNhap,DonGiaNhap)
 values ('HD05','MH05',70,50000)





insert into CTHDB(SoHDB,MaMH,SoLuongBan,DonGiaBan)
 values('HD01','MH01',3,16000)
insert into CTHDB(SoHDB,MaMH,SoLuongBan,DonGiaBan)
 values('HD02','MH02',17,200000)
insert into CTHDB(SoHDB,MaMH,SoLuongBan,DonGiaBan)
 values('HD03','MH03',29,18000)
insert into CTHDB(SoHDB,MaMH,SoLuongBan,DonGiaBan)
 values('HD04','MH04',100,5000)
insert into CTHDB(SoHDB,MaMH,SoLuongBan,DonGiaBan)
 values('HD05','MH05',57,65000)

		--HIỂN THỊ DANH SÁCH CÁC BẢNG DỮ LIỆU
-- Loại mặt hàng
GO
CREATE PROC LoaiMatHang_DS
AS
BEGIN
	SELECT * FROM LoaiMatHang
END
-- Mặt hàng
GO
CREATE PROC MatHang_DS
AS
BEGIN
	SELECT * FROM MatHang
END
-- Nhà cung cấp
GO
CREATE PROC NhaCungCap_DS
AS
BEGIN
	SELECT * FROM NhaCungCap
END
-- Bộ phận
GO
CREATE PROC BoPhan_DS
AS
BEGIN 
	SELECT * FROM BoPhan 
END
-- Nhân viên
GO
CREATE PROC NhanVien_DS
AS
BEGIN
	SELECT * FROM NhanVien
END
-- Khách hàng
GO
CREATE PROC KhachHang_DS
AS
BEGIN 
	SELECT * FROM KhachHang
END
-- Hóa đơn nhập
GO
CREATE PROC HoaDonNhap_DS
AS
BEGIN
	SELECT * FROM HoaDonNhap
END
-- Hóa đơn bán
GO
CREATE PROC HoaDonBan_DS
AS
BEGIN
	SELECT * FROM HoaDonBan
END
-- Chi tiết hóa đơn bán
GO
CREATE PROC CTHDB_DS
AS
BEGIN
	SELECT * FROM CTHDB 
END
-- Chi tiết hóa đơn nhập
GO
CREATE PROC CTHDN_DS
AS
BEGIN
	SELECT * FROM CTHDN
END


		--XÓA MỘT BẢN GHI TRONG BẢNG DỮ LIỆU TƯƠNG ỨNG
GO
CREATE PROC LoaiMatHang_Xoa
@MaLoaiMH VARCHAR(10)
AS
BEGIN 
	DELETE FROM LoaiMatHang WHERE MaLoaiMH = @MaLoaiMH
END

GO
CREATE PROC BoPhan_Xoa
@MaBP VARCHAR(5)
AS
BEGIN
	DELETE FROM BoPhan WHERE MaBP = @MaBP
END

GO
CREATE PROC NhanVien_Xoa
@MaNV VARCHAR(10)
AS
BEGIN
	DELETE FROM NhanVien WHERE MaNV = @MaNV
END

GO
CREATE PROC KhachHang_Xoa
@MaKH VARCHAR(15)
AS
BEGIN
	DELETE FROM KhachHang WHERE MaKH = @MaKH
END

GO
CREATE PROC MatHang_Xoa
@MaMH VARCHAR(15)
AS
BEGIN
	DELETE FROM MatHang WHERE MaMH = @MaMH
END

GO
CREATE PROC NhaCungCap_Xoa
@MaNCC VARCHAR(15)
AS
BEGIN
	DELETE FROM NhaCungCap WHERE MaNCC = @MaNCC
END

GO
CREATE PROC HoaDonBan_Xoa
@SoHDB VARCHAR(15)
AS
BEGIN
	DELETE FROM HoaDonBan WHERE SoHDB = @SoHDB
END

GO
CREATE PROC HoaDonNhap_Xoa
@SoHDN VARCHAR(15)
AS
BEGIN
	DELETE FROM HoaDonNhap WHERE SoHDN = @SoHDN
END

GO
CREATE PROC CTHDB_Xoa
@SoHDB VARCHAR(15),
@MaMH  VARCHAR(15)
AS
BEGIN
	DELETE FROM CTHDB WHERE SoHDB = @SoHDB AND MaMH = @MaMH
END

GO
CREATE PROC CTHDN_Xoa
@SoHDN VARCHAR(15),
@MaMH  VARCHAR(15)
AS
BEGIN
	DELETE FROM CTHDN WHERE SoHDN = @SoHDN AND MaMH = @MaMH
END

		

		--THỦ TỤC THÊM BẢN GHI MỚI VÀO BẢNG LoaiMatHang, KhachHang, NhaCungCap


GO
CREATE PROC LoaiMatHang_Them
@MaLoaiMH	VARCHAR(10),
@TenLoaiMH	NVARCHAR(30)
AS
BEGIN 
	INSERT INTO LoaiMatHang VALUES(@MaLoaiMH,@TenLoaiMH)
END

GO
CREATE PROC KhachHang_Them
@MaKH		VARCHAR(15),
@TenKH		NVARCHAR(30),
@DiaChi		NVARCHAR(70),
@DienThoai	VARCHAR(12),
@GhiChu		NVARCHAR(70)
AS
BEGIN
	INSERT INTO KhachHang VALUES(@MaKH,@TenKH,@DiaChi,@DienThoai,@GhiChu)
END

GO
CREATE PROC NhaCungCap_Them
@MaNCC		VARCHAR(15),
@TenNCC		NVARCHAR(30),
@DiaChi		NVARCHAR(70),
@DienThoai	VARCHAR(12),
@GhiChu		NVARCHAR(40)
AS
BEGIN 
	INSERT INTO NhaCungCap VALUES(@MaNCC,@TenNCC,@DiaChi,@DienThoai,@GhiChu)
END

-->  THỦ TỤC CHÈN THÊM MỘT MẶT HÀNG 
GO
CREATE PROC MatHang_Them
@MaMH		VARCHAR(15),
@TenMH		NVARCHAR(40),
@DVT		NVARCHAR(15),
@DonGiaNhap	MONEY,
@DonGiaBan	MONEY,
@SoLuongTon	INT,
@MaLoaiMH	VARCHAR(10)
AS
BEGIN
	DECLARE @ThanhCong INT
	IF NOT EXISTS (SELECT 1 FROM MatHang WHERE MaMH = @MaMH)
			AND NOT EXISTS (SELECT 1 FROM LoaiMatHang WHERE MaLoaiMH = @MaLoaiMH)
		BEGIN
			SET @ThanhCong = 1
			INSERT INTO MatHang VALUES(@MaMH,@TenMH,@DVT,@DonGiaNhap,@DonGiaBan,@SoLuongTon,@MaLoaiMH)
		END
	ELSE
		BEGIN 
			SET @ThanhCong = 0
		END
	RETURN @ThanhCong
END

--> THỦ TỤC THÊM 1 NHÂN VIÊN
GO
CREATE PROC NhanVien_Them
@MaNV		VARCHAR(10),
@HoNV		NVARCHAR(30),
@TenNV		NVARCHAR(10),
@GioiTinh	BIT,
@NgaySinh	DATE,
@DiaChi		NVARCHAR(70),
@Luong		MONEY,
@MaBP		VARCHAR(5)
AS
BEGIN
	DECLARE @ThanhCong INT
	IF NOT EXISTS (SELECT 1 FROM NhanVien WHERE MaNV = @MaNV) 
			AND NOT EXISTS (SELECT 1 FROM BoPhan WHERE MaBP = @MaBP)
		BEGIN
			SET @ThanhCong = 1
			INSERT INTO NhanVien VALUES(@MaNV,@HoNV,@TenNV,@GioiTinh,@NgaySinh,@DiaChi,@Luong,@MaBP)
		END
	ELSE
		BEGIN
			SET @ThanhCong = 0
		END
	RETURN @ThanhCong
END

-- THỦ TỤC THÊM MỘT BỘ PHẬN
GO
CREATE PROC BoPhan_Them
@TenBP		NVARCHAR(30)
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM BoPhan WHERE TenBP = @TenBP)
	BEGIN
		DECLARE @ID VARCHAR(2)
		IF (SELECT COUNT(MaBP) FROM BoPhan) = 0
			SET @ID = '00'
		ELSE
			SELECT @ID = MAX(RIGHT(MaBP,2)) FROM BoPhan
			SELECT @ID = CASE
					WHEN @ID >= 0 AND @ID < 9 THEN 'BP0' + CONVERT(CHAR,CONVERT(INT,@ID) + 1)
					WHEN @ID >= 9 THEN 'BP' + CONVERT(CHAR,CONVERT(INT,@ID)+1)
						 END
		INSERT INTO BoPhan VALUES(@ID,@TenBP)
	END
END

GO
CREATE FUNCTION NgayHienTai()
RETURNS VARCHAR(8)
AS
BEGIN
	DECLARE @NgayHT VARCHAR(8)
	SELECT @NgayHT = CONVERT(varchar(8),CAST(GETDATE() AS DATE),112)
	RETURN @NgayHT
END

--> THỦ TỤC THÊM HÓA ĐƠN BÁN
GO
CREATE PROC HoaDonBan_Them
@NgayBan	DATETIME,
@MaKH		VARCHAR(15),
@MaNV		VARCHAR(10),
@GhiChu		NVARCHAR(40)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM KhachHang WHERE MaKH = @MaKH)
		AND EXISTS (SELECT 1 FROM NhanVien WHERE MaNV = @MaNV)
	BEGIN
		DECLARE @ID VARCHAR(15)
 		IF(SELECT COUNT(SoHDB) FROM HoaDonBan WHERE LEFT(SoHDB,8) = (SELECT dbo.NgayHienTai())) = 0
 			SET @ID = '0'
 		ELSE
 			SELECT @ID = MAX(RIGHT(SoHDB,3)) FROM HoaDonBan WHERE LEFT(SoHDB,8) = (SELECT dbo.NgayHienTai())
 			SELECT @ID = CASE
 					WHEN @ID >= 0 AND @ID < 9 THEN (SELECT dbo.NgayHienTai()) + 'HDB00' +  CONVERT(CHAR,CONVERT(INT,@ID) + 1)
 					WHEN @ID >= 9 AND @ID < 99 THEN (SELECT dbo.NgayHienTai()) + 'HDB0' + CONVERT(CHAR,CONVERT(INT,@ID) + 1)
 					WHEN @ID >= 99 AND @ID < 1000 THEN (SELECT dbo.NgayHienTai()) + 'HDB' + CONVERT(CHAR,CONVERT(INT,@ID) + 1)
 						 END
		INSERT INTO HoaDonBan VALUES(@ID,@NgayBan,@MaKH,@MaNV,@GhiChu)
	END
END

--> THỦ TỤC THÊM HÓA ĐƠN NHẬP
GO
CREATE PROC HoaDonNhap_Them
@NgayNhap	DATETIME,
@MaNCC		VARCHAR(15),
@MaNV		VARCHAR(10),
@GhiChu		NVARCHAR(40)
AS
BEGIN
	IF EXISTS (SELECT 1 FROM NhaCungCap WHERE MaNCC = @MaNCC)
		AND EXISTS (SELECT 1 FROM NhanVien WHERE MaNV = @MaNV)
	BEGIN
		DECLARE @ID VARCHAR(15)
 		IF(SELECT COUNT(SoHDN) FROM HoaDonNhap WHERE LEFT(SoHDN,8) = (SELECT dbo.NgayHienTai())) = 0
 			SET @ID = '0'
 		ELSE
 			SELECT @ID = MAX(RIGHT(SoHDN,3)) FROM HoaDonNhap WHERE LEFT(SoHDN,8) = (SELECT dbo.NgayHienTai())
 			SELECT @ID = CASE
 					WHEN @ID >= 0 AND @ID < 9 THEN (SELECT dbo.NgayHienTai()) + 'HDN00' +  CONVERT(CHAR,CONVERT(INT,@ID) + 1)
 					WHEN @ID >= 9 AND @ID < 99 THEN (SELECT dbo.NgayHienTai()) + 'HDN0' + CONVERT(CHAR,CONVERT(INT,@ID) + 1)
 					WHEN @ID >= 99 AND @ID < 1000 THEN (SELECT dbo.NgayHienTai()) + 'HDN' + CONVERT(CHAR,CONVERT(INT,@ID) + 1)
 						 END
		INSERT INTO HoaDonBan VALUES(@ID,@NgayNhap,@MaNCC,@MaNV,@GhiChu)
	END
END

--> THỦ TỤC THÊM CHI TIẾT HÓA ĐƠN BÁN
GO
CREATE PROC CTHDB_Them
@SoHDB		VARCHAR(15),
@MaMH		VARCHAR(15),
@SoLuongBan	INT,
@DonGiaBan	MONEY
AS
BEGIN
	IF EXISTS (SELECT 1 FROM HoaDonBan WHERE SoHDB = @SoHDB)
		AND EXISTS (SELECT 1 FROM MatHang WHERE MaMH = @MaMH)
	BEGIN
		INSERT INTO CTHDB VALUES(@SoHDB,@MaMH,@SoLuongBan,@DonGiaBan)
	END
END

--> THỦ TỤC THÊM HÓA ĐƠN NHẬP 
GO
CREATE PROC CTHDN_Them
@SoHDN		 VARCHAR(15),
@MaMH		 VARCHAR(15),
@SoLuongNhap INT,
@DonGiaNhap	 MONEY
AS
BEGIN
	IF EXISTS (SELECT 1 FROM HoaDonNhap WHERE SoHDN = @SoHDN)
		AND EXISTS (SELECT 1 FROM MatHang WHERE MaMH = @MaMH)
	BEGIN
		INSERT INTO CTHDN VALUES(@SoHDN,@MaMH,@SoLuongNhap,@DonGiaNhap)
	END
END
