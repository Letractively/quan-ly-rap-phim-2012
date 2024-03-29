SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quyen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [varchar](5) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiPhim]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiPhim](
	[MaLoaiPhim] [varchar](5) NOT NULL,
	[TenLoaiPhim] [nvarchar](30) NULL,
 CONSTRAINT [PK_LoaiPhim] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhim] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SuKien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SuKien](
	[MaSuKien] [varchar](5) NOT NULL,
	[TenSuKien] [nvarchar](100) NULL,
	[NoiDung] [ntext] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[HinhAnhSuKien] [varchar](100) NULL,
	[MucGiamGia] [nvarchar](5) NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_SuKien] PRIMARY KEY CLUSTERED 
(
	[MaSuKien] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiGhe]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiGhe](
	[MaLoaiGhe] [varchar](5) NOT NULL,
	[TenLoaiGhe] [ntext] NULL,
 CONSTRAINT [PK_LoaiGhe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiGhe] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThanhVien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ThanhVien](
	[TenDangNhapTV] [varchar](30) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MatKhau] [varchar](30) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[Email] [varchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[TenDangNhapTV] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DangPhong]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DangPhong](
	[MaDangPhong] [varchar](5) NOT NULL,
	[TenDangPhong] [nvarchar](30) NULL,
 CONSTRAINT [PK_DangPhong] PRIMARY KEY CLUSTERED 
(
	[MaDangPhong] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuocGia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QuocGia](
	[MaQuocGia] [varchar](50) NOT NULL,
	[TenQuocGia] [nvarchar](30) NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[MaQuocGia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DangPhim]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DangPhim](
	[MaDangPhim] [varchar](5) NOT NULL,
	[TenDangPhim] [nvarchar](15) NULL,
 CONSTRAINT [PK_DangPhim] PRIMARY KEY CLUSTERED 
(
	[MaDangPhim] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NhanVien](
	[TenDangNhapNV] [varchar](10) NOT NULL,
	[MatKhauNV] [varchar](30) NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[MaQuyen] [varchar](5) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[TenDangNhapNV] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phim]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Phim](
	[MaPhim] [varchar](10) NOT NULL,
	[TenPhim] [nvarchar](200) NULL,
	[MaDangPhim] [varchar](5) NULL,
	[MaLoaiPhim] [varchar](5) NULL,
	[DoDaiGio] [int] NULL,
	[DoDaiPhut] [int] NULL,
	[MaQuocGia] [varchar](50) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[AnhDaiDien] [varchar](100) NULL,
	[GhiChu] [ntext] NULL,
	[MoTaPhim] [ntext] NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ve]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ve](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [varchar](5) NOT NULL,
	[TenDangNhapNV] [varchar](10) NOT NULL,
	[SoGhe] [varchar](5) NOT NULL,
	[MaLichChieu] [int] NOT NULL,
	[MaPhim] [varchar](10) NOT NULL,
	[MaSuKien] [varchar](5) NULL,
	[DonGia] [int] NULL,
	[TinhTrang] [varchar](30) NULL,
	[TenDangNhapTV] [varchar](30) NULL,
 CONSTRAINT [PK_Ve_1] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC,
	[TenDangNhapNV] ASC,
	[SoGhe] ASC,
	[MaLichChieu] ASC,
	[MaPhim] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ghe]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ghe](
	[SoGhe] [varchar](5) NOT NULL,
	[MaPhong] [varchar](5) NOT NULL,
	[MaLoaiGhe] [varchar](5) NULL,
 CONSTRAINT [PK_Ghe_1] PRIMARY KEY CLUSTERED 
(
	[SoGhe] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BinhLuan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhapTV] [varchar](30) NULL,
	[MaPhim] [varchar](10) NULL,
	[NoiDungBinhLuan] [ntext] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phong]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Phong](
	[MaPhong] [varchar](5) NOT NULL,
	[TenPhong] [ntext] NULL,
	[MaDangPhong] [varchar](5) NULL,
	[TrangThaiPhong] [ntext] NULL,
	[SoLuongDayGheToiDa] [numeric](2, 0) NULL,
	[SoLuongGheToiDaOMoiDay] [numeric](2, 0) NULL,
	[GhiChu] [ntext] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XuatChieu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XuatChieu](
	[MaXuatChieu] [int] IDENTITY(1,1) NOT NULL,
	[MaPhim] [varchar](10) NULL,
	[GioChieu] [int] NULL,
	[PhutChieu] [int] NOT NULL,
 CONSTRAINT [PK_XuatChieu] PRIMARY KEY CLUSTERED 
(
	[MaXuatChieu] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LichChieu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LichChieu](
	[MaLichChieu] [int] IDENTITY(1,1) NOT NULL,
	[MaPhong] [varchar](5) NULL,
	[MaXuatChieu] [int] NULL,
	[NgayChieu] [datetime] NULL,
 CONSTRAINT [PK_LichChieu] PRIMARY KEY CLUSTERED 
(
	[MaLichChieu] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_Quyen]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Quyen]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Phim_DangPhim]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phim]'))
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_DangPhim] FOREIGN KEY([MaDangPhim])
REFERENCES [dbo].[DangPhim] ([MaDangPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_DangPhim]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Phim_LoaiPhim]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phim]'))
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_LoaiPhim] FOREIGN KEY([MaLoaiPhim])
REFERENCES [dbo].[LoaiPhim] ([MaLoaiPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_LoaiPhim]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Phim_QuocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phim]'))
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_QuocGia] FOREIGN KEY([MaQuocGia])
REFERENCES [dbo].[QuocGia] ([MaQuocGia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_QuocGia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ve_Ghe]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ve]'))
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Ghe] FOREIGN KEY([SoGhe], [MaPhong])
REFERENCES [dbo].[Ghe] ([SoGhe], [MaPhong])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Ghe]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ve_LichChieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ve]'))
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_LichChieu] FOREIGN KEY([MaLichChieu])
REFERENCES [dbo].[LichChieu] ([MaLichChieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_LichChieu]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ve_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ve]'))
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_NhanVien] FOREIGN KEY([TenDangNhapNV])
REFERENCES [dbo].[NhanVien] ([TenDangNhapNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_NhanVien]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ve_Phong]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ve]'))
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Phong]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ve_SuKien]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ve]'))
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_SuKien] FOREIGN KEY([MaSuKien])
REFERENCES [dbo].[SuKien] ([MaSuKien])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_SuKien]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ghe_LoaiGhe]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ghe]'))
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_LoaiGhe] FOREIGN KEY([MaLoaiGhe])
REFERENCES [dbo].[LoaiGhe] ([MaLoaiGhe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_LoaiGhe]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ghe_Phong]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ghe]'))
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_Phong]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BinhLuan_Phim]') AND parent_object_id = OBJECT_ID(N'[dbo].[BinhLuan]'))
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_Phim]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BinhLuan_ThanhVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[BinhLuan]'))
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([TenDangNhapTV])
REFERENCES [dbo].[ThanhVien] ([TenDangNhapTV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Phong_DangPhong]') AND parent_object_id = OBJECT_ID(N'[dbo].[Phong]'))
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_DangPhong] FOREIGN KEY([MaDangPhong])
REFERENCES [dbo].[DangPhong] ([MaDangPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_DangPhong]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_XuatChieu_Phim]') AND parent_object_id = OBJECT_ID(N'[dbo].[XuatChieu]'))
ALTER TABLE [dbo].[XuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_XuatChieu_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[XuatChieu] CHECK CONSTRAINT [FK_XuatChieu_Phim]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LichChieu_Phong]') AND parent_object_id = OBJECT_ID(N'[dbo].[LichChieu]'))
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_Phong]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LichChieu_XuatChieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[LichChieu]'))
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD  CONSTRAINT [FK_LichChieu_XuatChieu] FOREIGN KEY([MaXuatChieu])
REFERENCES [dbo].[XuatChieu] ([MaXuatChieu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichChieu] CHECK CONSTRAINT [FK_LichChieu_XuatChieu]
