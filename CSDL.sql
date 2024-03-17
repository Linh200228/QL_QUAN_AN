USE QuanLyQuanAn
GO
/****** Object:  Database [QLCP]    Script Date: 11/29/2022 12:11:54 AM ******/
CREATE DATABASE QuanLyQuanAn
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLCP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLCP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLCP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLCP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE QuanLyQuanAn SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC QuanLyQuanAn.[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE QuanLyQuanAn SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE QuanLyQuanAn SET ANSI_NULLS OFF 
GO
ALTER DATABASE QuanLyQuanAn SET ANSI_PADDING OFF 
GO
ALTER DATABASE QuanLyQuanAn SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE QuanLyQuanAn SET ARITHABORT OFF 
GO
ALTER DATABASE QuanLyQuanAn SET AUTO_CLOSE OFF 
GO
ALTER DATABASE QuanLyQuanAn SET AUTO_SHRINK OFF 
GO
ALTER DATABASE QuanLyQuanAn SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE QuanLyQuanAn SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE QuanLyQuanAn SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE QuanLyQuanAn SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE QuanLyQuanAn SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE QuanLyQuanAn SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE QuanLyQuanAn SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE QuanLyQuanAn SET  DISABLE_BROKER 
GO
ALTER DATABASE QuanLyQuanAn SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE QuanLyQuanAn SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE QuanLyQuanAn SET TRUSTWORTHY OFF 
GO
ALTER DATABASE QuanLyQuanAn SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE QuanLyQuanAn SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE QuanLyQuanAn SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE QuanLyQuanAn SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE QuanLyQuanAn SET RECOVERY SIMPLE 
GO
ALTER DATABASE QuanLyQuanAn SET  MULTI_USER 
GO
ALTER DATABASE QuanLyQuanAn SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE QuanLyQuanAn SET DB_CHAINING OFF 
GO
ALTER DATABASE QuanLyQuanAn SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE QuanLyQuanAn SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE QuanLyQuanAn SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE QuanLyQuanAn SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE QuanLyQuanAn SET QUERY_STORE = OFF
GO


USE QuanLyQuanAn
GO
/****** Object:  Table [dbo].[BAN]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE TAIKHOAN
(
    MaTaiKhoan int PRIMARY KEY IDENTITY(1,1),
    TenDangNhap nvarchar(50) NOT NULL,
    MatKhau nvarchar(50) NOT NULL,
    MaQuyen int NOT NULL,
    MaNV int NULL,
    MaKH int NULL
)
GO

CREATE TABLE [dbo].[BAN](
	[MaBan] [nvarchar](10) NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[MaKhuVuc] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CA]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CA](
	[MaCa] [nvarchar](10) NOT NULL,
	[TenCa] [nvarchar](50) NULL,
	[MaKhuVuc] [nvarchar](10) NULL,
	[MaNhanVien] [nvarchar](50) NULL,
	[SoTien] [int] NULL,
	[Ngay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGTHUC]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGTHUC](
	[MaCongThuc] [nvarchar](10) NOT NULL,
	[TenCongThuc] [nvarchar](50) NULL,
	[MaThucDon] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGTHUCCHITIET]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGTHUCCHITIET](
	[MaCongThucCT] [nvarchar](10) NOT NULL,
	[MaCongThuc] [nvarchar](10) NULL,
	[MaHangHoa] [nvarchar](10) NULL,
	[MaDonVi] [nvarchar](10) NULL,
	[SoLuong] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongThucCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONVI]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONVI](
	[MaDonVi] [nvarchar](10) NOT NULL,
	[TenDonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MaHangHoa] [nvarchar](10) NOT NULL,
	[TenHangHoa] [nvarchar](50) NULL,
	[MaNCC] [nvarchar](10) NULL,
	[Gia] [decimal](18, 0) NULL,
	[MaDonVi] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [uniqueidentifier] NOT NULL,
	[NgayVao] [datetime] NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[PhuThu] [decimal](18, 0) NULL,
	[PhuThuTheoPhanTram] [bit] NULL,
	[GiamGia] [decimal](18, 0) NULL,
	[GiamGiaTheoPhanTram] [bit] NULL,
	[NgayThanhToan] [datetime] NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[DaThanhToan] [bit] NOT NULL,
	[MaBan] [nvarchar](10) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONBANHANG]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONBANHANG](
	[MaHDBH] [nvarchar](10) NOT NULL,
	[NgayBan] [datetime] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaKH] [nvarchar](10) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[MaNCC] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONCHITIET]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONCHITIET](
	[MaHDCT] [uniqueidentifier] NOT NULL,
	[MaHD] [uniqueidentifier] NOT NULL,
	[MaThucDon] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[MaLKH] [nvarchar](10) NULL,
	[MaQuyen] [int] NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHO]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHO](
	[MaKho] [nvarchar](10) NOT NULL,
	[TenKho] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUVUC]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUVUC](
	[MaKhuVuc] [nvarchar](10) NOT NULL,
	[TenKhuVuc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MaKM] [nvarchar](10) NOT NULL,
	[TenKM] [nvarchar](50) NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[NoiDung] [nvarchar](50) NULL,
	[GiaTri] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIKHAHANG]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIKHAHANG](
	[MaLKH] [nvarchar](10) NOT NULL,
	[TenLKH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUONG]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUONG](
	[MaNhanVien] [nvarchar](10) NULL,
	[SoCa] [int] NULL,
	[TongTien] [float] NULL,
	[NgayNhan] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[LoaiHang_NCC] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[MaQuyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [nvarchar](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaNCC] [nvarchar](10) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MaPX] [nvarchar](10) NOT NULL,
	[NgayXuat] [date] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaKH] [nvarchar](10) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUCDON]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUCDON](
	[MaThucDon] [nvarchar](10) NOT NULL,
	[TenThucDon] [nvarchar](50) NULL,
	[Gia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONKHO]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONKHO](
	[MaTonKho] [nvarchar](10) NOT NULL,
	[MaHH] [nvarchar](10) NULL,
	[SoLuong] [decimal](18, 2) NULL,
	[MaDonVi] [nvarchar](10) NULL,
	[MaKho] [nvarchar](10) NULL,
 CONSTRAINT [PK_TONKHO] PRIMARY KEY CLUSTERED 
(
	[MaTonKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B02', N'02', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B03', N'03', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B04', N'04', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B05', N'05', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B06', N'06', N'KV03')

GO
INSERT [dbo].[CA] ([MaCa], [TenCa], [MaKhuVuc], [MaNhanVien], [SoTien], [Ngay]) VALUES (N'CA03', N'Ca 3', N'KV01', N'NV03', NULL, CAST(N'2022-06-01' AS Date))
GO
INSERT [dbo].[CONGTHUC] ([MaCongThuc], [TenCongThuc], [MaThucDon]) VALUES (N'CT01', N'Nước Cam', N'TD03')
INSERT [dbo].[CONGTHUC] ([MaCongThuc], [TenCongThuc], [MaThucDon]) VALUES (N'CT02', N'Cà phê', N'TD01')
INSERT [dbo].[CONGTHUC] ([MaCongThuc], [TenCongThuc], [MaThucDon]) VALUES (N'CT03', N'Đào', N'TD06')
GO
INSERT [dbo].[CONGTHUCCHITIET] ([MaCongThucCT], [MaCongThuc], [MaHangHoa], [MaDonVi], [SoLuong]) VALUES (N'CTCT01', N'CT01', N'HH01', N'Kg', CAST(0.20 AS Decimal(18, 2)))
INSERT [dbo].[CONGTHUCCHITIET] ([MaCongThucCT], [MaCongThuc], [MaHangHoa], [MaDonVi], [SoLuong]) VALUES (N'CTCT02', N'CT03', N'HH03', N'Trai', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[CONGTHUCCHITIET] ([MaCongThucCT], [MaCongThuc], [MaHangHoa], [MaDonVi], [SoLuong]) VALUES (N'CTCT03', N'CT02', N'HH02', N'Kg', CAST(0.03 AS Decimal(18, 2)))
GO
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Chai', N'Chai')
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Kg', N'Kí lô gam')
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Ly', N'Ly')
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Trai', N'Trái')
GO
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH01', N'Cam', N'', CAST(20000 AS Decimal(18, 0)), N'Kg')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH02', N'Cà phê', N'NCC03', CAST(200000 AS Decimal(18, 0)), N'Kg')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH03', N'Dừa', NULL, CAST(5000 AS Decimal(18, 0)), N'Trái')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH04', N'Đào', NULL, CAST(20000 AS Decimal(18, 0)), N'Kg')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH05', N'Nho', NULL, CAST(100000 AS Decimal(18, 0)), N'Kg')
GO
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'35941dc6-7893-4491-9302-3667c49c55a6', CAST(N'2022-11-29T00:09:08.507' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B30')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', CAST(N'2022-06-30T13:08:22.673' AS DateTime), N'KH01', N'NV02', CAST(10 AS Decimal(18, 0)), 0, CAST(110 AS Decimal(18, 0)), 0, CAST(N'2022-06-30T13:09:55.000' AS DateTime), CAST(1435900 AS Decimal(18, 0)), 1, N'B01')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', CAST(N'2022-11-29T00:07:57.630' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-11-29T00:08:00.000' AS DateTime), CAST(1663000 AS Decimal(18, 0)), 1, N'B02')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'78a4135f-ffe7-437a-8d26-5fbba983563c', CAST(N'2022-10-22T10:31:23.063' AS DateTime), N'KH05', N'NV02', CAST(1000 AS Decimal(18, 0)), 0, CAST(5 AS Decimal(18, 0)), 1, CAST(N'2022-10-22T10:31:49.000' AS DateTime), CAST(789500 AS Decimal(18, 0)), 1, N'B03')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'd204ab64-d893-4494-9326-60b15295b63c', CAST(N'2022-11-29T00:08:45.013' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B38')

GO
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'ffad7405-378a-4281-a150-0015e346c062', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'2ba0cf06-632f-44ed-b97a-03c956872318', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'8ba6a6d5-b2f6-4f0e-a969-048ed61e0782', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'cc1138f2-cf89-4877-9460-04c0652999c5', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'5c2ecc4f-6ade-440d-8335-0dd2aa96b87d', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD03', 2, N'1 ly không đường')
GO

INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH05', N'Đặng Văn Minh', N'Số 120Y, Huyện Phú Tân', N'973873099', N'vhngmai@gmail.com', NULL, 1, N'ngvnminh', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH06', N'Trần Quang Mạnh', N'Số 114G, Huyện Ngọc Hiển', N'993707863', N'lthingiang@gmail.com', NULL, 1, N'tanvo', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH07', N'Nguyễn Hải Sinh', N'Số 162P, Huyện Ngọc Hiển', N'933751310', N'hongdiulinh@gmail.com', NULL, 1, N'nguynhisinh', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH08', N'Nguyễn An Cơ', N'Số 130D, Huyện Ngọc Hiển', N'967992239', N'honghulong@gmail.com', NULL, 1, N'nguynanc', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH09', N'Phạm Ðức Khang', N'Số 126B, Huyện Phú Tân', N'960762328', N'bithinn@gmail.com', NULL, 1, N'phmckhang', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH10', N'Nguyễn Văn Nguyên', N'Huyện U Minh', N'983726373', N'nvnguyen@gmail.com', NULL, 1, N'nguyen', N'123')
GO
INSERT [dbo].[KHO] ([MaKho], [TenKho]) VALUES (N'K01', N'Kho chính')
INSERT [dbo].[KHO] ([MaKho], [TenKho]) VALUES (N'K02', N'Kho phụ')
INSERT [dbo].[KHO] ([MaKho], [TenKho]) VALUES (N'K03', N'Kho bếp')
GO
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV01', N'Tầng trệt')
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV02', N'Lầu 1')
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV03', N'Lầu 2')
GO
INSERT [dbo].[LUONG] ([MaNhanVien], [SoCa], [TongTien], [NgayNhan]) VALUES (N'NV01', 15, 900000, CAST(N'2022-06-30T13:58:00.000' AS DateTime))
INSERT [dbo].[LUONG] ([MaNhanVien], [SoCa], [TongTien], [NgayNhan]) VALUES (N'NV02', 10, 600000, CAST(N'2022-06-30T13:58:00.000' AS DateTime))
GO
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC01', N'PepsiCo Việt Nam', N'Thành phố Hồ Chí Minh', N'19001220', N'pepsi@gmail.com', N'Nước suối')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC02', N'CoCaCoLa', N'Thành phố Hồ Chí Minh', N'1900555584', N'cocola@gmal.com', N'Coca')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC03', N'Trung Nguyên', N'Thành phố Buôn Ma Thuột', N'0909300096', NULL, N'Cà phê')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC04', N'Lavie', N'Long An', N'0723511801', NULL, N'Nước suối')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC05', N'Red Bull', N'Bình Dương', N'0274374916', NULL, N'Nước tăng lực')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV02', N'Nguyễn Linh Tý ', N'Cần Thơ', N'033854225', N'linhty@gmail.com', N'linhty', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV03', N'Nguyễn Thanh Huy', N'Cần Thơ', N'098873849', N'thanhhuy@gmail.com', N'thanhhuy', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV04', N'Nguyễn Chí Linh', N'Vĩnh Long', N'038565884', N'chilinh@gmail.com', N'chilinh', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV05', N'Nguyễn Hoàng Kha', N'Sóc Trăng', N'922374863', N'hoangkha@duck.com', N'hoangkha', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV06', N'Nguyễn Hoàng Phúc', N'Vĩnh Long', N'385467389', N'hoanghao@gmail.com', N'hoangphuc', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV07', N'Đỗ Hoàng Hảo', N'Long An', N'983764788', N'hoanghao@gmai.com', N'hoanghao', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV08', N'Ngô Hoài Trúc', N'HCM', N'354655678', N'hoaitruc@gmail.com', N'hoaitruc', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV09', N'Hồ Hồng Sơn', N'Hậu Giang', N'930251761', N'hongson@gmail.com', N'hongson', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV10', N'Phan Duy Hưng', N'Cà Mau', N'929751696', N'phannguytct@gmail.com', N'phannguytct', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV100', N'Đỗ Ngọc Hoàng Khương', N'Kiêng Giang', N'922999408', N'hoangkhuongw@gmail.com', N'hoangkhuong', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV101', N'Nguyễn Hoài Linh', N'Cà Mau', N'0329999888', N'nhlinh@gmail.com', N'linh', N'1', N'4')
GO

INSERT [dbo].[PHIEUNHAP] ([MaPN], [NgayNhap], [MaNV], [MaNCC], [TongTien]) VALUES (N'PN01', CAST(N'2023-05-25' AS Date), N'NV01', N'NCC01', 10000000)
INSERT [dbo].[PHIEUNHAP] ([MaPN], [NgayNhap], [MaNV], [MaNCC], [TongTien]) VALUES (N'PN02', CAST(N'2023-05-25' AS Date), N'NV02', N'NCC02', 15000000)
GO
INSERT [dbo].[PHIEUXUAT] ([MaPX], [NgayXuat], [MaNV], [MaKH], [TongTien]) VALUES (N'PX01', CAST(N'2023-04-11' AS Date), N'NV01', N'KH01', 100000)
INSERT [dbo].[PHIEUXUAT] ([MaPX], [NgayXuat], [MaNV], [MaKH], [TongTien]) VALUES (N'PX02', CAST(N'2023-04-23' AS Date), N'NV02', N'KH02', 200000)
INSERT [dbo].[PHIEUXUAT] ([MaPX], [NgayXuat], [MaNV], [MaKH], [TongTien]) VALUES (N'PX03', CAST(N'2023-05-12' AS Date), N'NV03', N'KH03', 900000)
GO
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD01', N'Cà phê', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD02', N'Nước dừa', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD03', N'Ép cam', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD04', N'Nước suối', CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD05', N'Nutri Boost', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD05', N'Nutri Boost', CAST(12000 AS Decimal(18, 0)))
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_MaHD]  DEFAULT (newid()) FOR [MaHD]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_NgayVao]  DEFAULT (getdate()) FOR [NgayVao]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_PhuThuTheoPhanTram]  DEFAULT ((1)) FOR [PhuThuTheoPhanTram]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_GiamGiaTheoPhanTram]  DEFAULT ((1)) FOR [GiamGiaTheoPhanTram]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_DaThanhToan]  DEFAULT ((0)) FOR [DaThanhToan]
GO
ALTER TABLE [dbo].[HOADONCHITIET] ADD  CONSTRAINT [DF_HOADONCHITIET_MaHDCT]  DEFAULT (newid()) FOR [MaHDCT]
GO
ALTER TABLE [dbo].[HOADONCHITIET] ADD  CONSTRAINT [DF_HoaDonChiTiet_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoDoanhThu]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BaoCaoDoanhThu]
@TuNgay DATETIME
,@DenNgay DATETIME
AS
BEGIN
	SELECT NgayVao = FORMAT(HOADON.NgayVao, 'dd/MM/yyyy HH:mm:ss')
	, Ban.TenBan
	, dbo.KHUVUC.TenKhuVuc
	, dbo.KHACHHANG.TenKH
	, dbo.NHANVIEN.TenNV
	, dbo.THUCDON.TenThucDon
	, dbo.THUCDON.Gia
	, dbo.HOADONCHITIET.SoLuong
	, ThanhTien = (dbo.THUCDON.Gia * dbo.HOADONCHITIET.SoLuong)
	FROM dbo.HOADONCHITIET, dbo.HOADON, dbo.BAN, dbo.KHUVUC, dbo.KHACHHANG, dbo.NHANVIEN, dbo.THUCDON
	WHERE dbo.HOADONCHITIET.MaHD = dbo.HOADON.MaHD
	AND dbo.HOADON.MaBan = dbo.BAN.MaBan
	AND dbo.KHUVUC.MaKhuVuc = dbo.BAN.MaKhuVuc
	AND dbo.HOADON.MaKH = dbo.KHACHHANG.MaKH
	AND dbo.HOADON.MaNV = dbo.NHANVIEN.MaNV
	AND dbo.HOADONCHITIET.MaThucDon = dbo.THUCDON.MaThucDon
	AND dbo.HOADON.NgayVao BETWEEN @TuNgay AND DATEADD(DAY, 1, @DenNgay)
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllHoaDonChiTiet]
@MaHD UNIQUEIDENTIFIER
AS
BEGIN
SELECT
	MaHDCT
	,MaHD
	,MaThucDon
	,TenThucDon = (SELECT TenThucDon FROM dbo.THUCDON WHERE MaThucDon = HOADONCHITIET.MaThucDon)
	,Gia = (SELECT Gia FROM dbo.THUCDON WHERE MaThucDon = HOADONCHITIET.MaThucDon)
	,SoLuong
	,GhiChu
FROM HOADONCHITIET
WHERE MaHD = (SELECT MaHD FROM dbo.HOADON WHERE MaHD = @MaHD AND DaThanhToan = 0)
END
GO
/****** Object:  StoredProcedure [dbo].[LayChiTietHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 4. Get chi tiết hóa đơn theo mã hóa đơn
CREATE PROC [dbo].[LayChiTietHoaDon]
@MaHD nvarchar(10)
AS
Begin
SELECT MaHD, MaThucDon, SoLuong, GhiChu FROM dbo.HoaDonChiTiet WHERE MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachBan]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[LayDanhSachBan] 
@MaKhuVuc nvarchar(10)
AS
Begin
SELECT MaBan, TenBan, MaKhuVuc, DaThanhToan = ISNULL((SELECT TOP 1 ISNULL(DaThanhToan, 1) FROM dbo.HOADON WHERE MaBan = Ban.MaBan ORDER BY NgayVao DESC), 1) FROM BAN 
WHERE 

MaKhuVuc = (CASE WHEN @MaKhuVuc = '' THEN MaKhuVuc ELSE @MaKhuVuc END) ORDER BY TenBan
END
GO
/****** Object:  StoredProcedure [dbo].[LayHoaDonMoiNhat]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayHoaDonMoiNhat]
@MaBan nvarchar(10)
AS
Begin
SELECT TOP 1 MaHD, NgayVao, MaKH, MaNV, PhuThu, PhuThuTheoPhanTram, GiamGia, GiamGiaTheoPhanTram, NgayThanhToan, ThanhTien, DaThanhToan, MaBan  FROM dbo.HOADON WHERE MaBan = @MaBan ORDER BY NgayVao DESC
END

GO
/****** Object:  StoredProcedure [dbo].[LayTatCaKhuVuc]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 1. Get tất cả khu vực
CREATE PROCEDURE [dbo].[LayTatCaKhuVuc]
AS
SELECT MaKhuVuc = '', TenKhuVuc = N'Tất cả' UNION SELECT MaKhuVuc, TenKhuVuc FROM KHUVUC ORDER BY MaKhuVuc
GO
/****** Object:  StoredProcedure [dbo].[LuuHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LuuHoaDon]
	@NgayVao datetime
	,@MaKH nvarchar(10)
	,@MaNV nvarchar(10)
	,@PhuThu decimal(18,0)
	,@PhuThuTheoPhanTram bit
	,@GiamGia decimal(18,0)
	,@GiamGiaTheoPhanTram bit
	,@MaBan nvarchar(10)
AS
BEGIN
INSERT INTO HOADON
(
	NgayVao
	,MaKH
	,MaNV
	,PhuThu
	,PhuThuTheoPhanTram
	,GiamGia
	,GiamGiaTheoPhanTram
	,MaBan
)
OUTPUT Inserted.MaHD
VALUES
(
	@NgayVao
	,@MaKH
	,@MaNV
	,@PhuThu
	,@PhuThuTheoPhanTram
	,@GiamGia
	,@GiamGiaTheoPhanTram
	,@MaBan
)
END
GO
/****** Object:  StoredProcedure [dbo].[LuuHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LuuHoaDonChiTiet]
	@Loai NVARCHAR(10)
	,@MaHDCT uniqueidentifier
	,@MaHD uniqueidentifier
	,@MaThucDon nvarchar(10)
	,@SoLuong int
	,@GhiChu nvarchar(200)
AS
BEGIN
IF(@Loai='them')
BEGIN
INSERT INTO HOADONCHITIET
(
	MaHD
	,MaThucDon
	,SoLuong
	,GhiChu
)
OUTPUT Inserted.MaHDCT
VALUES
(
	@MaHD
	,@MaThucDon
	,@SoLuong
	,@GhiChu
)
END
ELSE
BEGIN
UPDATE HOADONCHITIET
SET 
	MaHD = @MaHD
	,MaThucDon = @MaThucDon
	,SoLuong = @SoLuong
	,GhiChu = @GhiChu
OUTPUT Inserted.MaHDCT
WHERE MaHDCT = @MaHDCT
END
END
GO
/****** Object:  StoredProcedure [dbo].[PhanQuyen]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PhanQuyen]
@Username nvarchar(20),
@Password nvarchar(20),
@NhanVien bit
as
BEGIN
IF @NhanVien = 1
	SELECT MaQuyen = ISNULL(MaQuyen, 0), TenDangNhap, MaNV, MaKH = '', TenNV, TenKH = '' FROM dbo.NHANVIEN WHERE TenDangNhap = @Username AND MatKhau = @Password
ELSE
	SELECT MaQuyen = ISNULL(MaQuyen, 0), TenDangNhap, MaNV = '', MaKH, TenNV = '', TenKH FROM dbo.KHACHHANG WHERE TenDangNhap = @Username AND MatKhau = @Password

END
GO
/****** Object:  StoredProcedure [dbo].[SuaHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SuaHoaDon]
@MaHD UNIQUEIDENTIFIER, @NgayVao datetime, @MaKH nvarchar(10), @MaNV nvarchar(10), @PhuThu DECIMAL(18,0), @PhuThuTheoPhanTram bit, @GiamGia DECIMAL(18,0), @GiamGiaTheoPhanTram bit, @NgayThanhToan datetime, @ThanhTien DECIMAL(18,0), @DaThanhToan bit, @MaBan nvarchar(10)
AS
Begin
UPDATE dbo.HOADON SET NgayVao = @NgayVao, MaKH = @MaKH, MaNV = @MaNV, PhuThu = @PhuThu, PhuThuTheoPhanTram = @PhuThuTheoPhanTram, GiamGia = @GiamGia, GiamGiaTheoPhanTram = @GiamGiaTheoPhanTram, NgayThanhToan = @NgayThanhToan, ThanhTien = @ThanhTien, DaThanhToan = @DaThanhToan, MaBan = @MaBan WHERE MaHD = @MaHD
END
-- 10. Xóa hóa đơn
GO
/****** Object:  StoredProcedure [dbo].[SuaHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SuaHoaDonChiTiet]
@MaHDCT UNIQUEIDENTIFIER, @SoLuong int, @GhiChu nvarchar(200)
AS
Begin
UPDATE dbo.HoaDonChiTiet SET SoLuong = @SoLuong, GhiChu = @GhiChu WHERE MaHDCT = @MaHDCT
END
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemHoaDon]
@NgayVao DATETIME
, @MaKH nvarchar(10)
, @MaNV nvarchar(10)
, @PhuThu DECIMAL(18,0)
, @PhuThuTheoPhanTram BIT
, @GiamGia DECIMAL(18,0)
, @GiamGiaTheoPhanTram BIT
, @MaBan nvarchar(10)
AS
Begin
INSERT INTO dbo.HOADON 
(NgayVao, MaKH, MaNV, PhuThu, PhuThuTheoPhanTram, GiamGia, GiamGiaTheoPhanTram, MaBan, DaThanhToan)
OUTPUT Inserted.MaHD
VALUES (@NgayVao, @MaKH, @MaNV, @PhuThu, @PhuThuTheoPhanTram, @GiamGia, @GiamGiaTheoPhanTram, @MaBan, 0)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 5.  thêm hóa đơn chi tiết
CREATE PROC [dbo].[ThemHoaDonChiTiet]
@MaHD nvarchar(10), @MaThucDid nvarchar(10), @SoLuong int, @GhiChu nvarchar(50)
AS
Begin
INSERT INTO dbo.HoaDonChiTiet (MaHD, MaThucDon, SoLuong, GhiChu) VALUES (@MaHD, @MaThucDid, @SoLuong, @GhiChu)
END
-- 6. sửa hóa đơn chi tiết
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTien]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTien]
@TuNgay DATETIME
,@DenNgay DATETIME
AS
BEGIN
	SELECT SUM(dbo.THUCDON.Gia * dbo.HOADONCHITIET.SoLuong) AS Tong
	FROM dbo.HOADONCHITIET, dbo.HOADON, dbo.THUCDON
	WHERE dbo.HOADONCHITIET.MaHD = dbo.HOADON.MaHD
	AND dbo.HOADONCHITIET.MaThucDon = dbo.THUCDON.MaThucDon
	AND dbo.HOADON.NgayVao BETWEEN @TuNgay AND DATEADD(DAY, 1, @DenNgay)
END
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoNam]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoNam]
@Nam datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE YEAR(NgayVao) = YEAR(@Nam)
END
-- 14. tính tổng thành tiền theo tuần
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoNgay]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoNgay]
@Ngay datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE Day(NgayVao) = @Ngay
END
-- 12. tính tổng thành tiền theo tháng
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoThang]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoThang]
@Thang datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE MONTH(NgayVao) = MONTH(@Thang)
END
-- 13. tính tổng thành tiền theo năm
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoTuan]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoTuan]
@Tuan int
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE DATEPART(WEEK, NgayVao) = @Tuan
END
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDon]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaHoaDon]
@MaHD UNIQUEIDENTIFIER
AS
Begin
	DELETE FROM dbo.HOADON WHERE MaHD = @MaHD
	DELETE FROM dbo.HOADONCHITIET WHERE MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDonChiTiet]    Script Date: 11/29/2022 12:11:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaHoaDonChiTiet]
@MaHDCT UNIQUEIDENTIFIER
AS
Begin
DELETE FROM dbo.HoaDonChiTiet WHERE MaHDCT = @MaHDCT
END
-- 8. Thêm hóa đơn
GO
USE [master]
GO
ALTER DATABASE [QLCP] SET  READ_WRITE 
GO

UPDATE TaiKhoan SET MaQuyen = 4 WHERE TenDangNhap = 'hlinh'
GO