USE [master]
GO
/****** Object:  Database [QLDT]    Script Date: 11/28/2021 7:58:20 PM ******/
CREATE DATABASE [QLDT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLDT_2411_Data', FILENAME = N'E:\LOG_QLDT\QLDT_2411.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLDT_2411_Log', FILENAME = N'E:\LOG_QLDT\QLDT_2411.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLDT] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLDT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLDT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLDT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLDT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLDT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLDT] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLDT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLDT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLDT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLDT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLDT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLDT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLDT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLDT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLDT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLDT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLDT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLDT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLDT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLDT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLDT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLDT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLDT] SET RECOVERY FULL 
GO
ALTER DATABASE [QLDT] SET  MULTI_USER 
GO
ALTER DATABASE [QLDT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLDT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLDT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLDT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLDT', N'ON'
GO
USE [QLDT]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[MaBanner] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[MaBanner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietThietBi]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThietBi](
	[MaChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[MaTB] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaTien] [int] NOT NULL,
	[RAM] [nvarchar](100) NULL,
	[ManHinh] [nvarchar](100) NULL,
	[Pin] [nvarchar](100) NULL,
	[BoNhoTrong] [nvarchar](100) NULL,
	[Chip] [nvarchar](100) NULL,
	[CameraSau] [nvarchar](100) NULL,
	[CameraTruoc] [nvarchar](100) NULL,
	[Khac] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiTietThietBi] PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaHD] [int] NOT NULL,
	[MaChiTiet] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
 CONSTRAINT [PK_CTHoaDon_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoHang]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaoHang](
	[MaGiaoHang] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[TenNguoiNhan] [nvarchar](100) NOT NULL,
	[DiaChi1] [text] NOT NULL,
	[SoDT1] [char](12) NOT NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_GiaoHang] PRIMARY KEY CLUSTERED 
(
	[MaGiaoHang] ASC,
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [int] NOT NULL,
	[TenHD] [nvarchar](100) NULL,
	[NgayHD] [datetime] NOT NULL,
	[TongTien] [money] NULL,
	[IsThanhToan] [bit] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLoaiNV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNV] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiNhanVien_Quyen]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien_Quyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[MaLoaiNV] [int] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiNhanVien_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC,
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiThietBi]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThietBi](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiThietBi] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCupCung]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCupCung](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [varchar](11) NOT NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_NhaCupCung] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [varchar](11) NOT NULL,
	[Email] [varchar](50) NULL,
	[MaLoaiNV] [int] NOT NULL,
	[TaiKhoan] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[NgayDangKy] [date] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaTH] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NOT NULL,
	[SoTienThanhToan] [money] NOT NULL,
	[NgayThanhToan] [date] NOT NULL,
	[PhuongThucThanhToan] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanhToan_1] PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThietBi]    Script Date: 11/28/2021 7:58:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThietBi](
	[MaTB] [int] IDENTITY(1,1) NOT NULL,
	[TenTB] [nvarchar](100) NOT NULL,
	[MaLoai] [int] NOT NULL,
	[MaNCC] [int] NOT NULL,
	[ThongTinMoTa] [text] NULL,
	[HinhAnh1] [nvarchar](500) NOT NULL,
	[HinhAnh2] [nvarchar](500) NOT NULL,
	[HinhAnh3] [nvarchar](500) NOT NULL,
	[NgayUpLoad] [date] NULL,
	[IsDelete] [bit] NOT NULL,
	[IsBestSeller] [bit] NOT NULL,
 CONSTRAINT [PK_ThietBi] PRIMARY KEY CLUSTERED 
(
	[MaTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([MaBanner], [FileName]) VALUES (1, N'Banner1.jpg')
INSERT [dbo].[Banner] ([MaBanner], [FileName]) VALUES (2, N'Banner2.jpg')
INSERT [dbo].[Banner] ([MaBanner], [FileName]) VALUES (3, N'Banner3.jpg')
INSERT [dbo].[Banner] ([MaBanner], [FileName]) VALUES (4, N'Banner4.jpg')
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[ChiTietThietBi] ON 

INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (1, 1, 1, 20990000, N'RAM 4 GB', N'Màn hình 6.1"', N'Pin 2815 mAh', N'ROM 64 GB', N'Chip Apple A14 Bionic', N'Camera trước: 12 MP', N'Camera sau: 2 camera 12 MP', NULL)
INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (2, 2, 3, 11790000, N'RAM 8 GB', N'Màn hình 6.5"', N'Pin 4500 mAh', N'ROM 256 GB', N'Chip Apple A14 Bionic', N'Camera trước: 32 MP', N'Camera sau: Chính 64 MP', NULL)
INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (3, 3, 3, 6690000, N'RAM 8 GB', N'Màn hình 6.43"', N'Pin 5000 mAh', N'ROM 128 GB', N'Chip Snapdragon 662', N'Camera trước: 16 MP', N'Camera sau: Chính 48 MP & Phụ 2 MP, 2 MP', NULL)
INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (4, 4, 1, 18990000, N'RAM 12 GB', N'Màn hình 6.56"', N'Pin 4450 mAh', N'ROM 256 GB', N'Chip MediaTek Dimensity 1200', N'Camera trước: 32 MP', N'Camera sau: Chính 50 MP & Phụ 12 MP, 12 MP, 8 MP', NULL)
INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (5, 5, 0, 10990000, N'RAM 8 GB', N'Màn hình 6.67"', N'5000 mAh', N'ROM 256 GB', N'Chip MediaTek Dimensity 1200', N'Camera trước: 16 MP', N'Camera sau: Chính 108 MP & Phụ 8 MP, 5 MP', NULL)
INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (6, 6, 3, 2990000, N'RAM 4 GB', N'Màn hình 6.5"', N'Pin 5000 mAh', N'ROM 32 GB', N'Chip Spreadtrum SC9863A', N'Camera trước: 5 MP', N'Camera sau: 8 MP', NULL)
INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (7, 7, 0, 3290000, N'RAM 2 GB', N'Màn hình 6.39"', N'Pin 4000 mAh', N'ROM 64 GB', N'Chip Snapdragon 460', N'Camera trước: 8 MP', N'Camera sau: Chính 13 MP & Phụ 5 MP, 2 MP', NULL)
INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (8, 8, 5, 31490000, N'RAM 6 GB', N'Màn hình 6.7"', N'Pin 3687 mAh', N'ROM 128 GB', N'Chip Apple A14 Bionic', N'Camera trước: 12 MP', N'Camera sau: 3 camera 12 MP', NULL)
INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (12, 12, 21, 15000000, N'RAM', N'ManHinh', N'Pin', N'BoNhoTrong', N'Chip', N'CameraSau', N'CameraTruoc', N'')
INSERT [dbo].[ChiTietThietBi] ([MaChiTiet], [MaTB], [SoLuong], [GiaTien], [RAM], [ManHinh], [Pin], [BoNhoTrong], [Chip], [CameraSau], [CameraTruoc], [Khac]) VALUES (13, 17, 10, 320000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Kiểu dáng gọn đẹp, phù hợp cho người thuận cả 2 tay. 
Độ phân giải mặc định 1000 DPI, đáp ứng các nhu cầu thường nhật. 
Kết nối không dây 2.4 GHz qua đầu thu USB cho khoảng cách dùng đến 10 m.
Sử dụng 1 viên pin AA, dễ tìm mua và thay thế.')
SET IDENTITY_INSERT [dbo].[ChiTietThietBi] OFF
INSERT [dbo].[CTHoaDon] ([MaHD], [MaChiTiet], [SoLuong], [ThanhTien]) VALUES (7, 8, 1, 31490000.0000)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaChiTiet], [SoLuong], [ThanhTien]) VALUES (8, 8, 1, 31490000.0000)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaChiTiet], [SoLuong], [ThanhTien]) VALUES (9, 8, 1, 31490000.0000)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaChiTiet], [SoLuong], [ThanhTien]) VALUES (13, 6, 1, 2990000.0000)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaChiTiet], [SoLuong], [ThanhTien]) VALUES (14, 5, 1, 10990000.0000)
INSERT [dbo].[CTHoaDon] ([MaHD], [MaChiTiet], [SoLuong], [ThanhTien]) VALUES (15, 7, 2, 3290000.0000)
SET IDENTITY_INSERT [dbo].[GiaoHang] ON 

INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (1, 3, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (2, 4, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (3, 5, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (4, 6, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (5, 7, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (6, 8, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (7, 9, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (8, 10, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (9, 11, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (10, 12, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (11, 13, N'1234', N'12', N'0375499877  ', N'afds@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (12, 14, N'Lê Phúc Hậu', N'Qu?n 7, TP H? Chí Minh', N'0987012421  ', N'lephuchau@gmail.com')
INSERT [dbo].[GiaoHang] ([MaGiaoHang], [MaHD], [TenNguoiNhan], [DiaChi1], [SoDT1], [Email]) VALUES (13, 15, N'Nguyễn Công Nam', N'12 Lê L?i', N'0375499877  ', N'afds@gmail.com')
SET IDENTITY_INSERT [dbo].[GiaoHang] OFF
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (3, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (4, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (5, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (6, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (7, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (8, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (9, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (10, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (11, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (12, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 31490000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (13, 14, NULL, CAST(0x0000ADED00000000 AS DateTime), 2990000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (14, 5, NULL, CAST(0x0000ADED00000000 AS DateTime), 10990000.0000, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [TenHD], [NgayHD], [TongTien], [IsThanhToan]) VALUES (15, 14, NULL, CAST(0x0000ADEE00000000 AS DateTime), 6580000.0000, 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[LoaiNhanVien] ON 

INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (1, N'Admin')
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV]) VALUES (2, N'KhachHang')
SET IDENTITY_INSERT [dbo].[LoaiNhanVien] OFF
INSERT [dbo].[LoaiNhanVien_Quyen] ([MaQuyen], [MaLoaiNV], [GhiChu]) VALUES (N'MuaHang', 1, NULL)
INSERT [dbo].[LoaiNhanVien_Quyen] ([MaQuyen], [MaLoaiNV], [GhiChu]) VALUES (N'MuaHang', 2, NULL)
INSERT [dbo].[LoaiNhanVien_Quyen] ([MaQuyen], [MaLoaiNV], [GhiChu]) VALUES (N'QuanLyDonHang', 1, NULL)
INSERT [dbo].[LoaiNhanVien_Quyen] ([MaQuyen], [MaLoaiNV], [GhiChu]) VALUES (N'QuanLySanPham', 1, NULL)
SET IDENTITY_INSERT [dbo].[LoaiThietBi] ON 

INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (1, N' iPhone', N'DT')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (2, N'Samsung', N'DT')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (3, N'OPPO', N'DT')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (4, N'Vivo', N'DT')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (5, N'Xiaomi', N'DT')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (6, N'Realme', N'DT')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (7, N'Nokia', N'DT')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (8, N'Loa', N'PK')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (9, N'Chuột', N'PK')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (10, N'Tai Nghe', N'PK')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (11, N'Thẻ nhớ ', N'PK')
INSERT [dbo].[LoaiThietBi] ([MaLoai], [TenLoai], [Note]) VALUES (12, N'Sạc dự phòng', N'PK')
SET IDENTITY_INSERT [dbo].[LoaiThietBi] OFF
SET IDENTITY_INSERT [dbo].[NhaCupCung] ON 

INSERT [dbo].[NhaCupCung] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (1, N'Nhà cung cấp số 1', N'TP Hồ Chí Minh', N'0123456789', N'ncc1@gmail.com')
INSERT [dbo].[NhaCupCung] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (2, N'Nhà cung cấp số 2', N'Hà Nội', N'0123456779', N'ncc2@gmail.com')
INSERT [dbo].[NhaCupCung] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) VALUES (3, N'Nhà cung cấp số 3', N'Đà Nẵng', N'0123456779', N'ncc3@gmail.com')
SET IDENTITY_INSERT [dbo].[NhaCupCung] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (1, N'Nguyễn Văn An', N'114 Lê Trọng Tấn, quận Tân Phú, TP Hồ Chí Minh', N'037845612', N'nguyenvanan@gmail.com', 1, N'xuanhuy')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (2, N'Nguyễn Công Anh', N'Bình Chánh, TP Hồ Chí Minh', N'0987654321', N'nguyenconganhn@gmail.com', 2, N'conganh')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (3, N'Nguyễn Minh Anh', N'Quân 1, TP Hồ Chí Minh', N'037896612', N'nguyenminhanh@gmail.com', 1, N'minhanh')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (4, N'Nguyễn Hằng Nga', N'Bình Chánh, TP Hồ Chí Minh', N'0987098321', N'nguyenhangnga@gmail.com', 2, N'hangnga')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (5, N'Lê Phúc Hậu', N'Quận 7, TP Hồ Chí Minh', N'0987012421', N'lephuchau@gmail.com', 2, N'phuchau')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (10, N'd', N'1', N'0375499452', N'afds@gmail.com', 2, N'd')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (11, N'a', N'a', N'0375499877', N'afds@gmail.com', 2, N'a')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (12, N'123', N'1', N'0375499877', N'afds@gmail.com', 2, N'123')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (13, N'2', N'2', N'0375499877', N'afds@gmail.com', 2, N'2')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (14, N'Nguyễn Công Nam', N'12 Lê Lợi', N'0375499877', N'afds@gmail.com', 2, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [DiaChi], [DienThoai], [Email], [MaLoaiNV], [TaiKhoan]) VALUES (15, N'456', N'140 lê văn lợi', N'0375499877', N'afds@gmail.com', 2, N'456')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'MuaHang', N'Mua Hàng')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLyDonHang', N'Quản lý đơn hàng')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLySanPham', N'Quản lý sản phẩm')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'1', N'1', 1, CAST(0x48430B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'123', N'123', 1, CAST(0x48430B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'2', N'2', 1, CAST(0x48430B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'456', N'456', 1, CAST(0x48430B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'a', N'a', 1, CAST(0x48430B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'conganh', N'123', 1, CAST(0x58420B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'd', N'1', 1, CAST(0x48430B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'hangnga', N'123', 1, CAST(0xAA410B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'minhanh', N'123', 1, CAST(0x08420B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'phuchau', N'123', 1, CAST(0x97410B00 AS Date))
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau], [TrangThai], [NgayDangKy]) VALUES (N'xuanhuy', N'123', 1, CAST(0x14420B00 AS Date))
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 

INSERT [dbo].[ThanhToan] ([MaTH], [MaHD], [SoTienThanhToan], [NgayThanhToan], [PhuongThucThanhToan]) VALUES (3, 4, 31490000.0000, CAST(0x49430B00 AS Date), NULL)
INSERT [dbo].[ThanhToan] ([MaTH], [MaHD], [SoTienThanhToan], [NgayThanhToan], [PhuongThucThanhToan]) VALUES (4, 15, 6580000.0000, CAST(0x4B430B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
SET IDENTITY_INSERT [dbo].[ThietBi] ON 

INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (1, N'iPhone 12', 1, 2, NULL, N'iphone12_1.jpg', N'iphone12_2.jpg', N'iphone12_3.jpg', CAST(0x443F0B00 AS Date), 0, 1)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (2, N'Samsung Galaxy A52s 5G 256GB', 2, 1, NULL, N'samsung_galaxy_a52s_1.jpg', N'samsung_galaxy_a52s_2.jpg', N'samsung_galaxy_a52s_3.jpg', CAST(0x603F0B00 AS Date), 0, 1)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (3, N'OPPO A74', 3, 2, NULL, N'oppo-a74_1.jpg', N'oppo-a74_2.jpg', N'oppo-a74_3.jpg', CAST(0x5C420B00 AS Date), 0, 0)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (4, N'VivoY 21', 4, 3, NULL, N'vivo-y21_1.jpg', N'vivo-y21_2.jpg', N'vivo-y21_3.jpg', CAST(0x2F430B00 AS Date), 0, 0)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (5, N'Xiaomi 11T 5G 128GB', 5, 3, NULL, N'xiaomi-11t-white_1.jpg', N'xiaomi-11t-white_2.jpg', N'xiaomi-11t-white_3.jpg', CAST(0xAD410B00 AS Date), 0, 1)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (6, N'Realme C11 (2021)', 6, 1, NULL, N'realme-c11-2021_1.jpg', N'realme-c11-2021_2.jpg', N'realme-c11-2021_3.jpg', CAST(0xB0400B00 AS Date), 0, 1)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (7, N'Nokia 3.4', 7, 1, NULL, N'nokia-34_1.jpg', N'nokia-34_2.jpg', N'nokia-34_3.jpg', CAST(0xC2410B00 AS Date), 0, 1)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (8, N'iPhone 12 Pro', 1, 1, NULL, N'iPhone12Pro_1.jpg', N'iPhone12Pro_2.jpg', N'iPhone12Pro_3.jpg', CAST(0xE9410B00 AS Date), 0, 1)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (12, N'Sam Sung Test', 12, 2, NULL, N'Chrysanthemum.jpg', N'Desert.jpg', N'Hydrangeas.jpg', CAST(0x4B430B00 AS Date), 1, 1)
INSERT [dbo].[ThietBi] ([MaTB], [TenTB], [MaLoai], [MaNCC], [ThongTinMoTa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [NgayUpLoad], [IsDelete], [IsBestSeller]) VALUES (17, N'Chuột G-302', 9, 2, NULL, N'chuot-bluetooth-apple-mk2e3-trang-avatar-600x600.jpg', N'chuot-khong-day-rapoo-m20-plus-thumb-600x600.jpg', N'chuot-khong-day-rapoo-m216-den-ava-600x600.jpg', CAST(0x4B430B00 AS Date), 0, 0)
SET IDENTITY_INSERT [dbo].[ThietBi] OFF
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_IsThanhToan]  DEFAULT ((0)) FOR [IsThanhToan]
GO
ALTER TABLE [dbo].[ThietBi] ADD  CONSTRAINT [DF_ThietBi_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[ThietBi] ADD  CONSTRAINT [DF_ThietBi_IsBestSeller]  DEFAULT ((0)) FOR [IsBestSeller]
GO
ALTER TABLE [dbo].[ChiTietThietBi]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietThietBi_ThietBi] FOREIGN KEY([MaTB])
REFERENCES [dbo].[ThietBi] ([MaTB])
GO
ALTER TABLE [dbo].[ChiTietThietBi] CHECK CONSTRAINT [FK_ChiTietThietBi_ThietBi]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_ChiTietThietBi] FOREIGN KEY([MaChiTiet])
REFERENCES [dbo].[ChiTietThietBi] ([MaChiTiet])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK_CTHoaDon_ChiTietThietBi]
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK_CTHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[GiaoHang]  WITH CHECK ADD  CONSTRAINT [FK_GiaoHang_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[GiaoHang] CHECK CONSTRAINT [FK_GiaoHang_HoaDon]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[LoaiNhanVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiNhanVien_Quyen_LoaiNhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[LoaiNhanVien_Quyen] CHECK CONSTRAINT [FK_LoaiNhanVien_Quyen_LoaiNhanVien]
GO
ALTER TABLE [dbo].[LoaiNhanVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiNhanVien_Quyen_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[LoaiNhanVien_Quyen] CHECK CONSTRAINT [FK_LoaiNhanVien_Quyen_Quyen]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiNhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiNhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([TaiKhoan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToan_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_ThanhToan_HoaDon]
GO
ALTER TABLE [dbo].[ThietBi]  WITH CHECK ADD  CONSTRAINT [FK_ThietBi_LoaiThietBi] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiThietBi] ([MaLoai])
GO
ALTER TABLE [dbo].[ThietBi] CHECK CONSTRAINT [FK_ThietBi_LoaiThietBi]
GO
ALTER TABLE [dbo].[ThietBi]  WITH CHECK ADD  CONSTRAINT [FK_ThietBi_NhaCupCung] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCupCung] ([MaNCC])
GO
ALTER TABLE [dbo].[ThietBi] CHECK CONSTRAINT [FK_ThietBi_NhaCupCung]
GO
USE [master]
GO
ALTER DATABASE [QLDT] SET  READ_WRITE 
GO
