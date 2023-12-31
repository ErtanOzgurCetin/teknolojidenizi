USE [DBTeknolojidenizi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20.10.2023 16:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 20.10.2023 16:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](33) NOT NULL,
	[NameSurname] [varchar](50) NOT NULL,
	[LastLoginDate] [datetime2](7) NOT NULL,
	[LastLoginIP] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 20.10.2023 16:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20.10.2023 16:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[DisplayIndex] [int] NOT NULL,
	[ParentID] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 20.10.2023 16:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [varchar](20) NULL,
	[PaymentOption] [int] NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[RecDate] [datetime2](7) NOT NULL,
	[Adress] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ZipCode] [varchar](10) NULL,
	[Phone] [varchar](20) NULL,
	[MailAdress] [varchar](80) NULL,
	[NameSurname] [varchar](100) NULL,
	[ShippingFee] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 20.10.2023 16:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [varchar](100) NULL,
	[ProductPicture] [varchar](150) NULL,
	[ProductPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.10.2023 16:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Description] [varchar](250) NULL,
	[DisplayIndex] [int] NOT NULL,
	[CategoryID] [int] NULL,
	[BrandID] [int] NULL,
	[Stock] [int] NOT NULL,
	[CargoDetail] [text] NULL,
	[Detail] [text] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPicture]    Script Date: 20.10.2023 16:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPicture](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Picture] [varchar](150) NULL,
	[DisplayIndex] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_ProductPicture] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 20.10.2023 16:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Slogan] [varchar](50) NULL,
	[Title] [varchar](50) NOT NULL,
	[Description] [varchar](250) NOT NULL,
	[Picture] [varchar](150) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Link] [varchar](150) NULL,
	[DisplayIndex] [int] NOT NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011190012_Initial', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231016014312_CategoryAdd', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231016021057_CategoryUpdate', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231016195519_UpdateCategory2', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231016201032_ProductsAdd', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231016211723_BrandAdd', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231016213312_ProductUpdate', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231016230808_ProductUpdate2', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231017003349_ProductAddDetail', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231017113344_productpictureadd', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231017115654_updateProductPicture', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231018133121_testing', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231018143228_testing2', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231020003314_test10', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231020003951_test11', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231020004036_test12', N'7.0.12')
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([ID], [UserName], [Password], [NameSurname], [LastLoginDate], [LastLoginIP]) VALUES (1, N'matata340', N'37eb4119fe1540a79331b7aa00f3d163', N'Ertan Özgür Çetin', CAST(N'2023-10-20T03:40:36.6779177' AS DateTime2), N'')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID], [Name]) VALUES (6, N'Acer')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (7, N'Lenovo')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (8, N'MSI')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (9, N'Asus')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (10, N'Technopc')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (11, N'Xiaomi')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (12, N'Gibabyte')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (13, N'BenQ')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (14, N'Logitech')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (15, N'Razer')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (16, N'James Donkey')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (17, N'DXRACER')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (18, N'SteelSeries')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (19, N'Frisby')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (20, N'AMD')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (21, N'AMD')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (22, N'Intel')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (24, N'XFX')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (25, N'Corsair')
INSERT [dbo].[Brand] ([ID], [Name]) VALUES (26, N'Kingston')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (8, N'Bilgisayar Ve Tablet', 1, NULL)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (9, N'Çevre Birimleri', 2, NULL)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (10, N'Gaming', 3, NULL)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (11, N'Bilgisayar Bileşenleri', 4, NULL)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (12, N'NoteBook', 1, 8)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (13, N'Masa Üstü', 2, 8)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (14, N'Tablet PC', 3, 8)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (15, N'Monitör', 1, 9)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (16, N'Klavye', 2, 9)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (17, N'Mouse', 3, 9)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (18, N'Gaming Koltuk', 1, 10)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (19, N'Gaming Kulaklık', 2, 10)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (21, N'Gaming Mousepad', 3, 10)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (22, N'İşlemci', 1, 11)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (23, N'Ekran Kartı', 2, 11)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (24, N'Anakart', 3, 11)
INSERT [dbo].[Category] ([ID], [Name], [DisplayIndex], [ParentID]) VALUES (25, N'Bellek ( RAM )', 4, 11)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [OrderNumber], [PaymentOption], [OrderStatus], [RecDate], [Adress], [City], [District], [Country], [ZipCode], [Phone], [MailAdress], [NameSurname], [ShippingFee]) VALUES (1, N'384544917394395', 0, 0, CAST(N'2023-10-18T17:54:49.5393436' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([ID], [OrderNumber], [PaymentOption], [OrderStatus], [RecDate], [Adress], [City], [District], [Country], [ZipCode], [Phone], [MailAdress], [NameSurname], [ShippingFee]) VALUES (2, N'634149187474', 1, 0, CAST(N'2023-10-18T18:41:49.8910220' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([ID], [OrderNumber], [PaymentOption], [OrderStatus], [RecDate], [Adress], [City], [District], [Country], [ZipCode], [Phone], [MailAdress], [NameSurname], [ShippingFee]) VALUES (3, N'953462318954954', 2, 0, CAST(N'2023-10-18T18:46:23.1889530' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([ID], [OrderNumber], [PaymentOption], [OrderStatus], [RecDate], [Adress], [City], [District], [Country], [ZipCode], [Phone], [MailAdress], [NameSurname], [ShippingFee]) VALUES (4, N'241524118252252', 1, 0, CAST(N'2023-10-18T18:52:41.6911890' AS DateTime2), N'aaa', N'istanbul', N'beylik', N'turkey', N'33455', N'53142222222', N'sanana@sna.com', N'ertan', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Order] ([ID], [OrderNumber], [PaymentOption], [OrderStatus], [RecDate], [Adress], [City], [District], [Country], [ZipCode], [Phone], [MailAdress], [NameSurname], [ShippingFee]) VALUES (5, N'22694423236236', 1, 0, CAST(N'2023-10-19T23:09:44.3211855' AS DateTime2), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [ProductName], [ProductPicture], [ProductPrice], [Quantity]) VALUES (1, 1, 3, N'deneme ürünü', N'/img/ProductPicture/resimler-hazirlaniyor-1000x780.jpg', CAST(11.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [ProductName], [ProductPicture], [ProductPrice], [Quantity]) VALUES (2, 2, 3, N'deneme ürünü', N'/img/ProductPicture/resimler-hazirlaniyor-1000x780.jpg', CAST(11.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [ProductName], [ProductPicture], [ProductPrice], [Quantity]) VALUES (3, 3, 3, N'deneme ürünü', N'/img/ProductPicture/resimler-hazirlaniyor-1000x780.jpg', CAST(11.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [ProductName], [ProductPicture], [ProductPrice], [Quantity]) VALUES (4, 4, 3, N'deneme ürünü', N'/img/ProductPicture/resimler-hazirlaniyor-1000x780.jpg', CAST(11.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [ProductName], [ProductPicture], [ProductPrice], [Quantity]) VALUES (5, 5, 2, N'i5 işlemci', N'/img/ProductPicture/ih-hs2.jpg', CAST(12.00 AS Decimal(18, 2)), 6)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Price], [Description], [DisplayIndex], [CategoryID], [BrandID], [Stock], [CargoDetail], [Detail]) VALUES (5, N'Lenovo Ideapad Gaming 3 82S9016NTX i5-12450H 16GB 512GB SSD 6GB RTX3060  15.6¨ Full HD Notebook', CAST(28849.00 AS Decimal(18, 2)), N'FIRSAT ÜRÜNÜ', 1, 12, 7, 150, N'<p>Kargo &Uuml;creti YOK !!</p>
', N'<h2>Lenovo Ideapad Gaming 3 15IAH7 82S9016NTX 15.6&Prime; Full HD Notebook &Ouml;zellikleri</h2>

<p>Ekran / Panel &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>Ekran</th>
			<td>Full HD</td>
		</tr>
		<tr>
			<th>Ekran &Ouml;zelliği</th>
			<td>15.6&quot;</td>
		</tr>
		<tr>
			<th>Ekran &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml;</th>
			<td>1920 x 1080</td>
		</tr>
	</tbody>
</table>

<p>Genel &Ouml;zellikler</p>

<table>
	<tbody>
		<tr>
			<th>Marka</th>
			<td>Lenovo</td>
		</tr>
		<tr>
			<th>Model Kodu</th>
			<td>82S9016NTX</td>
		</tr>
	</tbody>
</table>

<p>İşlemci &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>İşlemci</th>
			<td>INTEL Core İ5</td>
		</tr>
		<tr>
			<th>İşlemci Modeli</th>
			<td>İntel Core i5-12450H</td>
		</tr>
		<tr>
			<th>İşlemci Hızı</th>
			<td>4.40 Ghz</td>
		</tr>
		<tr>
			<th>&Ccedil;ekirdek Sayısı</th>
			<td>Sekiz &Ccedil;ekirdek İşlemci</td>
		</tr>
	</tbody>
</table>

<p>RAM &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>Sistem Belleği</th>
			<td>16 GB</td>
		</tr>
	</tbody>
</table>

<p>Ekran Kartı &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>Ekran Kartı</th>
			<td>Nvidia GeForce RTX 3060</td>
		</tr>
		<tr>
			<th>Ekran Kartı Bellek Tipi</th>
			<td>GDDR6</td>
		</tr>
		<tr>
			<th>Ekran Kartı Hafızası</th>
			<td>6 GB</td>
		</tr>
	</tbody>
</table>

<p>Depolama &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>SSD Aray&uuml;z&uuml;</th>
			<td>M.2 2280 PCIe 3.0x4 NVMe</td>
		</tr>
		<tr>
			<th>Kapasite</th>
			<td>512 GB SSD</td>
		</tr>
		<tr>
			<th>SSD</th>
			<td>512 GB</td>
		</tr>
	</tbody>
</table>

<p>Bağlantı &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>HDMI</th>
			<td>1x HDMI&reg; 2.0</td>
		</tr>
		<tr>
			<th>USB Port</th>
			<td>2xUSB 3.2 Gen 1, 1x USB-C&reg; 3.2 Gen 2 (veri aktarımını Power Delivery 3.0 ve DisplayPort&trade; 1.4&#39;&uuml; destekler)</td>
		</tr>
		<tr>
			<th>Bluetooth &Ouml;zelliği</th>
			<td>Bluetooth 5.1</td>
		</tr>
		<tr>
			<th>Ethernet (LAN)</th>
			<td>100/1000M (RJ-45)</td>
		</tr>
	</tbody>
</table>

<p>Teknik &Ouml;zellikler</p>

<table>
	<tbody>
		<tr>
			<th>Kablosuz Haberleşme</th>
			<td>Wi-Fi 6, 11ax 2x2 + BT5.1</td>
		</tr>
		<tr>
			<th>İşletim Sistemi</th>
			<td>FreeDOS</td>
		</tr>
		<tr>
			<th>Klavye</th>
			<td>T&uuml;rk&ccedil;e Q, Arka Aydınlatmalı</td>
		</tr>
		<tr>
			<th>Ağırlık</th>
			<td>2.315 kg, 2 315</td>
		</tr>
		<tr>
			<th>Garanti</th>
			<td>24 Ay Garantili</td>
		</tr>
	</tbody>
</table>
')
INSERT [dbo].[Product] ([ID], [Name], [Price], [Description], [DisplayIndex], [CategoryID], [BrandID], [Stock], [CargoDetail], [Detail]) VALUES (6, N'Asus VivoBook X1504VA-NJ104 i5-1335U 8 GB 512 GB SSD Iris Xe Graphics 15.6¨ Full HD FreeDos Notebook', CAST(16899.00 AS Decimal(18, 2)), N'Fırsat Ürünü !!!', 2, 12, 9, 50, N'<p>Kargoya 3 g&uuml;nde verilir.&nbsp;</p>

<p>&nbsp;</p>
', N'<h2>Asus VivoBook X1504VA-NJ104 15.6&Prime; Full HD Notebook &Ouml;zellikleri</h2>

<p>Ekran / Panel &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>Ekran</th>
			<td>Full HD</td>
		</tr>
		<tr>
			<th>Ekran &Ouml;zelliği</th>
			<td>15.6&quot;</td>
		</tr>
		<tr>
			<th>Ekran &Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml;</th>
			<td>1920 x 1080</td>
		</tr>
	</tbody>
</table>

<p>Genel &Ouml;zellikler</p>

<table>
	<tbody>
		<tr>
			<th>Marka</th>
			<td>Asus</td>
		</tr>
		<tr>
			<th>Model Kodu</th>
			<td>X1504VA-NJ104</td>
		</tr>
	</tbody>
</table>

<p>İşlemci &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>İşlemci</th>
			<td>Intel Core i5</td>
		</tr>
		<tr>
			<th>İşlemci Modeli</th>
			<td>Intel Core i5-1335U</td>
		</tr>
		<tr>
			<th>İşlemci Hızı</th>
			<td>1.00 GHz</td>
		</tr>
		<tr>
			<th>&Ccedil;ekirdek Sayısı</th>
			<td>On &Ccedil;ekirdek İşlemci</td>
		</tr>
	</tbody>
</table>

<p>RAM &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>Sistem Belleği</th>
			<td>8 GB</td>
		</tr>
	</tbody>
</table>

<p>Ekran Kartı &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>Ekran Kartı</th>
			<td>Intel Iris Xe Graphics</td>
		</tr>
		<tr>
			<th>Ekran Kartı Bellek Tipi</th>
			<td>DDR4</td>
		</tr>
		<tr>
			<th>Ekran Kartı Hafızası</th>
			<td>Paylaşımlı</td>
		</tr>
	</tbody>
</table>

<p>Depolama &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>SSD Aray&uuml;z&uuml;</th>
			<td>M.2</td>
		</tr>
		<tr>
			<th>Kapasite</th>
			<td>512 GB SSD</td>
		</tr>
		<tr>
			<th>SSD</th>
			<td>512 GB</td>
		</tr>
	</tbody>
</table>

<p>Bağlantı &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>HDMI</th>
			<td>Var</td>
		</tr>
		<tr>
			<th>USB Port</th>
			<td>2x USB 3.2 Nesil 1, 1x USB-C 3.2 Nesil 1, 1x HDMI 1.4, 1x USB 2.0</td>
		</tr>
		<tr>
			<th>VGA</th>
			<td>Yok</td>
		</tr>
		<tr>
			<th>Bluetooth &Ouml;zelliği</th>
			<td>Var</td>
		</tr>
		<tr>
			<th>Ethernet (LAN)</th>
			<td>Yok</td>
		</tr>
	</tbody>
</table>

<p>Teknik &Ouml;zellikler</p>

<table>
	<tbody>
		<tr>
			<th>Kablosuz Haberleşme</th>
			<td>Var</td>
		</tr>
		<tr>
			<th>İşletim Sistemi</th>
			<td>FreeDOS</td>
		</tr>
		<tr>
			<th>Optik S&uuml;r&uuml;c&uuml;</th>
			<td>Yok</td>
		</tr>
		<tr>
			<th>Klavye</th>
			<td>T&uuml;rk&ccedil;e Q</td>
		</tr>
		<tr>
			<th>Ağırlık</th>
			<td>2.00 kg</td>
		</tr>
		<tr>
			<th>Garanti</th>
			<td>24 Ay Asus T&uuml;rkiye Garantili</td>
		</tr>
	</tbody>
</table>
')
INSERT [dbo].[Product] ([ID], [Name], [Price], [Description], [DisplayIndex], [CategoryID], [BrandID], [Stock], [CargoDetail], [Detail]) VALUES (7, N'MSI MAG Codex X5 12TF-1075MYS I9-12900KF 32GB 1TB SSD 2TB HDD GeForce RTX 3080ti  Masaüstü Bilgisaya', CAST(115549.00 AS Decimal(18, 2)), N'FIRSAT ÜRÜNÜ', 1, 13, 8, 8, N'<p>3 iş g&uuml;n&uuml;nde kargolanır</p>
', N'<h2>MSI MAG Codex X5 12TF-1075MYS Gaming Masa&uuml;st&uuml; Bilgisayar &Ouml;zellikleri</h2>

<p>Genel &Ouml;zellikler</p>

<table>
	<tbody>
		<tr>
			<th>Ekran Kartı</th>
			<td>Nvidia GeForce RTX 3080Ti</td>
		</tr>
		<tr>
			<th>Ekran</th>
			<td>Yok</td>
		</tr>
		<tr>
			<th>G&uuml;&ccedil; Kaynağı</th>
			<td>850w 80 Plus Gold (ATX)</td>
		</tr>
		<tr>
			<th>İşletim Sistemi</th>
			<td>Windows 11 Home</td>
		</tr>
		<tr>
			<th>Ekran Kartı Hafızası</th>
			<td>12 GB</td>
		</tr>
	</tbody>
</table>

<p>İşlemci</p>

<table>
	<tbody>
		<tr>
			<th>İşlemci Modeli</th>
			<td>Intel Core i9-12900KF</td>
		</tr>
		<tr>
			<th>İşlemci Hızı</th>
			<td>3.20 Ghz</td>
		</tr>
		<tr>
			<th>İşlemci</th>
			<td>Intel</td>
		</tr>
	</tbody>
</table>

<p>Bellek</p>

<table>
	<tbody>
		<tr>
			<th>Ram Tipi</th>
			<td>DDR5 4800Mhz</td>
		</tr>
		<tr>
			<th>Arttırılabilir Bellek (Maks.)</th>
			<td>128 GB</td>
		</tr>
		<tr>
			<th>Sistem Belleği</th>
			<td>32GB (16GB*2)</td>
		</tr>
		<tr>
			<th>Bellek Yuvası</th>
			<td>2 Adet</td>
		</tr>
	</tbody>
</table>

<p>Tasarım</p>

<table>
	<tbody>
		<tr>
			<th>Boyut</th>
			<td>195mm x 514.8mm x 466mm</td>
		</tr>
		<tr>
			<th>Garanti</th>
			<td>24 Ay Garanti</td>
		</tr>
		<tr>
			<th>Ağırlık</th>
			<td>12.4 kg</td>
		</tr>
	</tbody>
</table>
')
INSERT [dbo].[Product] ([ID], [Name], [Price], [Description], [DisplayIndex], [CategoryID], [BrandID], [Stock], [CargoDetail], [Detail]) VALUES (8, N'Asus TUF Gaming VG279Q1R 27¨ 1ms 144Hz FreeSync Premium IPS Full HD Gaming (Oyuncu) Monitör', CAST(5949.00 AS Decimal(18, 2)), N'FIRSAT ÜRÜNÜ', 4, 15, 9, 22, N'<p>3 G&Uuml;NE KARGOLANIR</p>
', N'<h2>Asus TUF Gaming VG279Q1R 27&Prime; IPS Full HD Gaming Monit&ouml;r &Ouml;zellikleri</h2>

<p>Ekran &Ouml;zellikleri</p>

<table>
	<tbody>
		<tr>
			<th>Ekran</th>
			<td>Full HD, IPS</td>
		</tr>
		<tr>
			<th>Ekran Boyutu</th>
			<td>27&quot;</td>
		</tr>
		<tr>
			<th>&Ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k</th>
			<td>1920 x 1080</td>
		</tr>
		<tr>
			<th>Yenileme Hızı</th>
			<td>144 Hz</td>
		</tr>
		<tr>
			<th>Tepki S&uuml;resi</th>
			<td>1 ms.</td>
		</tr>
		<tr>
			<th>Kontrast</th>
			<td>1.000:1</td>
		</tr>
		<tr>
			<th>Parlaklık</th>
			<td>250 cd/m2</td>
		</tr>
	</tbody>
</table>

<p>Diğer &Ouml;zellikler</p>

<table>
	<tbody>
		<tr>
			<th>Bağlantı &Ouml;zellikleri</th>
			<td>DisplayPort, HDMI</td>
		</tr>
		<tr>
			<th>Kamera</th>
			<td>Yok</td>
		</tr>
		<tr>
			<th>Diğer &Ouml;zellikler</th>
			<td>FreeSync Premium / ELMB / Flicker-Free / VESA: 75x75 mm</td>
		</tr>
		<tr>
			<th>Multimedya</th>
			<td>3.5mm Mini-Jack</td>
		</tr>
		<tr>
			<th>Gaming</th>
			<td>Evet</td>
		</tr>
		<tr>
			<th>Garanti</th>
			<td>36 Ay Distrib&uuml;t&ouml;r Garantili</td>
		</tr>
	</tbody>
</table>

<p>Boyut ve Ağırlık</p>

<table>
	<tbody>
		<tr>
			<th>Boyut</th>
			<td>Stant Dahil: 612.6 x 431 x 213 mm / Stant Hari&ccedil;: 612.6 x 362.5 x 37.7 mm</td>
		</tr>
		<tr>
			<th>Ağırlık</th>
			<td>3.9 kg</td>
		</tr>
	</tbody>
</table>
')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPicture] ON 

INSERT [dbo].[ProductPicture] ([ID], [Name], [Picture], [DisplayIndex], [ProductID]) VALUES (4, N'1', N'/img/ProductPicture/LENOVO NOTEBOOK 1.jpg', 1, 5)
INSERT [dbo].[ProductPicture] ([ID], [Name], [Picture], [DisplayIndex], [ProductID]) VALUES (5, N'2', N'/img/ProductPicture/LENOVO NOTEBOOK 2.jpg', 2, 5)
INSERT [dbo].[ProductPicture] ([ID], [Name], [Picture], [DisplayIndex], [ProductID]) VALUES (6, N'3', N'/img/ProductPicture/3.jpg', 3, 5)
INSERT [dbo].[ProductPicture] ([ID], [Name], [Picture], [DisplayIndex], [ProductID]) VALUES (7, N'AsusNotebook1', N'/img/ProductPicture/1.jpg', 1, 6)
INSERT [dbo].[ProductPicture] ([ID], [Name], [Picture], [DisplayIndex], [ProductID]) VALUES (8, N'AsusNotebook2', N'/img/ProductPicture/2.jpg', 2, 6)
INSERT [dbo].[ProductPicture] ([ID], [Name], [Picture], [DisplayIndex], [ProductID]) VALUES (9, N'1', N'/img/ProductPicture/MSI 1 MASAÜSTÜ 1.webp', 1, 7)
INSERT [dbo].[ProductPicture] ([ID], [Name], [Picture], [DisplayIndex], [ProductID]) VALUES (10, N'2', N'/img/ProductPicture/MSI 1 MASAÜSTÜ 2.webp', 2, 7)
INSERT [dbo].[ProductPicture] ([ID], [Name], [Picture], [DisplayIndex], [ProductID]) VALUES (13, N'4', N'/img/ProductPicture/ASUS MONİTÖR 1.jpg', 4, 8)
SET IDENTITY_INSERT [dbo].[ProductPicture] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([ID], [Slogan], [Title], [Description], [Picture], [Price], [Link], [DisplayIndex]) VALUES (8, N'Yeni Slide', N'Deneme', N'Deneme', N'/img/slide/Slide1.jpg', CAST(1.00 AS Decimal(18, 2)), NULL, 1)
INSERT [dbo].[Slide] ([ID], [Slogan], [Title], [Description], [Picture], [Price], [Link], [DisplayIndex]) VALUES (9, N'Yeni slide 2 ', N'deneme 2 ', N'Deneme 2', N'/img/slide/Slide2.jpg', CAST(10.00 AS Decimal(18, 2)), NULL, 2)
INSERT [dbo].[Slide] ([ID], [Slogan], [Title], [Description], [Picture], [Price], [Link], [DisplayIndex]) VALUES (10, N'yeni slide 3', N'deneme 3 ', N' deneme 3 ', N'/img/slide/Slide3.jpg', CAST(11.00 AS Decimal(18, 2)), NULL, 3)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Category_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Category_ParentID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order_OrderID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand_BrandID] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand_BrandID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryID]
GO
ALTER TABLE [dbo].[ProductPicture]  WITH CHECK ADD  CONSTRAINT [FK_ProductPicture_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductPicture] CHECK CONSTRAINT [FK_ProductPicture_Product_ProductID]
GO
