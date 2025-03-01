USE [master]
GO
/****** Object:  Database [Inventory_Manager_Pos]    Script Date: 1/3/2025 11:15:21 AM ******/
CREATE DATABASE [Inventory_Manager_Pos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inventory_Manager_Pos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\Inventory_Manager_Pos.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Inventory_Manager_Pos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\Inventory_Manager_Pos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Inventory_Manager_Pos] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inventory_Manager_Pos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inventory_Manager_Pos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET RECOVERY FULL 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET  MULTI_USER 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Inventory_Manager_Pos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Inventory_Manager_Pos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Inventory_Manager_Pos', N'ON'
GO
ALTER DATABASE [Inventory_Manager_Pos] SET QUERY_STORE = ON
GO
ALTER DATABASE [Inventory_Manager_Pos] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Inventory_Manager_Pos]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/3/2025 11:15:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[QuantityProducts] [int] NOT NULL,
 CONSTRAINT [PK__Category__3213E83FAC4BB904] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/3/2025 11:15:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](15) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 1/3/2025 11:15:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceDate] [date] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[SaleID] [int] NOT NULL,
	[TotalAmount] [decimal](15, 2) NOT NULL,
	[Notes] [varchar](255) NULL,
	[ProductNameList] [varchar](255) NOT NULL,
	[ProductQuantityList] [varchar](255) NOT NULL,
	[ProductPriceList] [varchar](255) NOT NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentMethod] [nvarchar](50) NOT NULL,
	[PaymentStatus] [nvarchar](50) NOT NULL,
	[QRCodeData] [nvarchar](max) NULL,
 CONSTRAINT [PK__Invoice__D796AAD55D820FA5] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/3/2025 11:15:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Barcode] [nvarchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CostPrice] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](5, 2) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](255) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK__Products__B40CC6ED7F6BC859] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 1/3/2025 11:15:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase](
	[PurchaseID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[PurchaseDate] [date] NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK__Purchase__6B0A6BDE2618BE19] PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 1/3/2025 11:15:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[SaleID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[SaleDate] [date] NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[ToTalCostPrice] [decimal](18, 2) NOT NULL,
	[ProductNameList] [nvarchar](max) NOT NULL,
	[ProductQuantityList] [nvarchar](max) NOT NULL,
	[ProductPriceList] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__Sale__1EE3C41FBC2B7726] PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppiler]    Script Date: 1/3/2025 11:15:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppiler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/3/2025 11:15:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](20) NULL,
	[Picture] [nvarchar](255) NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Employee__3214EC07B0B4494F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [Name], [QuantityProducts]) VALUES (1, N'Thức Ăn Chính', 7)
INSERT [dbo].[Category] ([id], [Name], [QuantityProducts]) VALUES (2, N'Thức Uống', 4)
INSERT [dbo].[Category] ([id], [Name], [QuantityProducts]) VALUES (3, N'Snack', 0)
INSERT [dbo].[Category] ([id], [Name], [QuantityProducts]) VALUES (4, N'Tiêu Dùng', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [name], [phone], [email]) VALUES (1, N'Như Thủy', N'0393928750', N'NhuThuy123@gmail.com')
INSERT [dbo].[Customer] ([CustomerID], [name], [phone], [email]) VALUES (2, N'Lê Gia Hân', N'0238492524', N'DaHan@gmail.com')
INSERT [dbo].[Customer] ([CustomerID], [name], [phone], [email]) VALUES (3, N'Trinh Ngoc Mai Chi', N'0402404243', N'Maichi@gmail.com')
INSERT [dbo].[Customer] ([CustomerID], [name], [phone], [email]) VALUES (4, N'Cao Phong', N'0224353344', N'PhongPham@gmail.com')
INSERT [dbo].[Customer] ([CustomerID], [name], [phone], [email]) VALUES (5, N'Thảo Như', N'0378099526', N'ThaoNhuu@gmail.com')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (1, CAST(N'2024-12-31' AS Date), 1, 1, CAST(1.90 AS Decimal(15, 2)), NULL, N'''Bánh Lay''s''', N'1', N'1.90', CAST(N'2025-01-01T21:42:32.337' AS DateTime), N'Unknown', N'Pending', N'N/A')
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (2, CAST(N'2024-12-31' AS Date), 1, 2, CAST(16.80 AS Decimal(15, 2)), NULL, N'''Gà quay'',''Nescafe'',''Bánh Lay''s''', N'1,1,1', N'10.00,4.80,2.00', CAST(N'2025-01-01T21:42:32.337' AS DateTime), N'Unknown', N'Pending', N'N/A')
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (3, CAST(N'2024-12-31' AS Date), 1, 3, CAST(14.80 AS Decimal(15, 2)), NULL, N'''Gà quay'',''Nescafe''', N'1,1', N'10.00,4.80', CAST(N'2025-01-01T21:42:32.337' AS DateTime), N'Unknown', N'Pending', N'N/A')
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (4, CAST(N'2024-12-31' AS Date), 1, 4, CAST(48.40 AS Decimal(15, 2)), NULL, N'''Bánh Lay''s'',''Nescafe'',''Gà quay''', N'2,3,3', N'2.00,4.80,10.00', CAST(N'2025-01-01T21:42:32.337' AS DateTime), N'Unknown', N'Pending', N'N/A')
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (5, CAST(N'2024-12-31' AS Date), 1, 5, CAST(16.80 AS Decimal(15, 2)), NULL, N'''Bánh Lay''s'',''Nescafe'',''Gà quay''', N'1,1,1', N'2.00,4.80,10.00', CAST(N'2025-01-01T21:42:32.337' AS DateTime), N'Unknown', N'Pending', N'N/A')
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (6, CAST(N'2024-12-31' AS Date), 1, 6, CAST(56.80 AS Decimal(15, 2)), NULL, N'''Bánh Lay''s'',''Nescafe'',''Gà quay''', N'1,1,5', N'2.00,4.80,10.00', CAST(N'2025-01-01T21:42:32.337' AS DateTime), N'Unknown', N'Pending', N'N/A')
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (12, CAST(N'2025-01-01' AS Date), 2, 12, CAST(10.00 AS Decimal(15, 2)), NULL, N'''Gà quay''', N'1', N'10.00', NULL, N'Cash', N'Pending', NULL)
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (13, CAST(N'2025-01-02' AS Date), 1, 13, CAST(30.00 AS Decimal(15, 2)), NULL, N'''Gà quay'',''Bánh Tacos''', N'1,2', N'10.00,10.00', NULL, N'Cash', N'Pending', NULL)
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (14, CAST(N'2025-01-02' AS Date), 1, 14, CAST(19.00 AS Decimal(15, 2)), NULL, N'''S?i M? Ý '',''CocaCola Zero'',''Fanta'',''Bánh Snack Cheetos'',''Bánh Tacos''', N'1,1,1,1,1', N'3.00,2.10,2.00,1.90,10.00', NULL, N'Cash', N'Pending', NULL)
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (15, CAST(N'2025-01-02' AS Date), 1, 15, CAST(15000.00 AS Decimal(15, 2)), NULL, N'''Nescafe'',''Bánh Lay''s''', N'2,1', N'5000.00,5000.00', NULL, N'Cash', N'Pending', NULL)
INSERT [dbo].[Invoice] ([InvoiceID], [InvoiceDate], [CustomerID], [SaleID], [TotalAmount], [Notes], [ProductNameList], [ProductQuantityList], [ProductPriceList], [PaymentDate], [PaymentMethod], [PaymentStatus], [QRCodeData]) VALUES (16, CAST(N'2025-01-02' AS Date), 1, 16, CAST(0.00 AS Decimal(15, 2)), NULL, N'', N'', N'', NULL, N'Cash', N'Pending', NULL)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (1, N'Bánh Lay''s', N'10', 3, 23, CAST(2000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Bánh Lay''s ngon ngon', N'C:\Users\Yoga\source\repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\74d6bf202a23661cd9b2519028fa1516b00802086531ba3664f2d873f7b73b2a.png', CAST(N'2024-12-31T00:19:52.767' AS DateTime), CAST(N'2025-01-02T18:23:31.680' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (2, N'Nescafe', N'11', 1, 13, CAST(5000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Cafe của Nescafe', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\8606a5122ee49303ed7a50f64173f50f3816471636452fb58b374abe778f04bf.png', CAST(N'2024-12-31T10:14:02.863' AS DateTime), CAST(N'2025-01-02T17:26:41.293' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (3, N'Gà quay', N'13', 1, 14, CAST(160000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Gà Quay', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\85a84d1ea500a1e6aeadcf29fe60d5c2c2eb01b74745b651dfe3e58a6f35caeb.png', CAST(N'2024-12-31T10:15:08.110' AS DateTime), CAST(N'2025-01-02T18:32:42.047' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (4, N'Bánh Tacos', N'12', 1, 16, CAST(80000.00 AS Decimal(18, 2)), CAST(70000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Bánh', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\5fc074a82cff0322c0a415431640e4bf108e568f35adad589ae5239f35e682c5.png', CAST(N'2025-01-01T22:17:21.403' AS DateTime), CAST(N'2025-01-02T18:32:55.703' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (5, N'CocaCola', N'15', 2, 12, CAST(8000.00 AS Decimal(18, 2)), CAST(12000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Nước Uống CocaCola', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\adebad1ac89572d9ca582aebae08fcdb393d840cb49fb47db4a5859a6a4e08ab.png', CAST(N'2025-01-02T16:17:21.273' AS DateTime), CAST(N'2025-01-02T19:35:03.003' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (6, N'CocaCola Zero', N'16', 1, 16, CAST(10000.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'CocaCola Zero', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\489c90f2410e18f85d2a6acc038382ede2e8eeeb8c6be62653e63e0034bdbb65.png', CAST(N'2025-01-02T16:18:14.687' AS DateTime), CAST(N'2025-01-02T18:33:25.920' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (7, N'Fanta', N'17', 2, 16, CAST(7500.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Nước Uống Fanta', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\d9964da3053a1945f35768f5cdfc27a9342659faf3daa404da2694d3645b3719.png', CAST(N'2025-01-02T16:18:58.030' AS DateTime), CAST(N'2025-01-02T19:35:09.553' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (8, N'Bánh Snack Cheetos', N'18', 1, 16, CAST(18000.00 AS Decimal(18, 2)), CAST(14000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Bánh Snack', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\736d8cd4d040de01fab4ac82e7fafc8c5f3b5d37652fee913faaa3567fc1de6a.png', CAST(N'2025-01-02T16:19:56.637' AS DateTime), CAST(N'2025-01-02T18:34:05.950' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (9, N'Dầu Gội Dove', N'19', 4, 12, CAST(90000.00 AS Decimal(18, 2)), CAST(120000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Dậu gội', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\b423c46ce669b506e75b2b360a70cad97340daf56da80230a63a34a6a7095832.png', CAST(N'2025-01-02T16:21:18.120' AS DateTime), CAST(N'2025-01-02T19:35:19.773' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (10, N'Nước Mắm Nhĩ', N'20', 4, 18, CAST(80000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Nước Mắm làm từ Cá', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\d407e0a50090a7e116c72553304e6a7e3497743900c1585cf6d25d3f3104350f.png', CAST(N'2025-01-02T16:22:26.737' AS DateTime), CAST(N'2025-01-02T19:35:32.393' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (11, N'Sợi Mỳ Ý', N'21', 1, 16, CAST(45000.00 AS Decimal(18, 2)), CAST(30000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Mỳ Ý', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\00a1ab638b2f0258151d91aefadf98c18a3560b68a874198fe710090ebb1675d.png', CAST(N'2025-01-02T16:23:12.000' AS DateTime), CAST(N'2025-01-02T18:34:55.927' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [Name], [Barcode], [CategoryID], [QuantityInStock], [Price], [CostPrice], [Discount], [SupplierID], [Description], [Image], [CreatedAt], [UpdatedAt]) VALUES (12, N'Pepsi', N'22', 2, 12, CAST(10000.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(5, 2)), 1, N'Nước Pepsi', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\Debug\ImagesUsers\3516eac606e8005ceb69029e1fd2fde2b28a7fbe9be1b4449e1f8a97d4cc6799.png', CAST(N'2025-01-02T19:36:10.347' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Purchase] ON 

INSERT [dbo].[Purchase] ([PurchaseID], [SupplierID], [PurchaseDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt]) VALUES (1, 1, CAST(N'0001-01-01' AS Date), CAST(45.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2024-12-31T10:15:45.6769312' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Purchase] ([PurchaseID], [SupplierID], [PurchaseDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt]) VALUES (2, 1, CAST(N'0001-01-01' AS Date), CAST(20.90 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2024-12-31T10:17:34.6127125' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Purchase] ([PurchaseID], [SupplierID], [PurchaseDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt]) VALUES (3, 1, CAST(N'0001-01-01' AS Date), CAST(103.30 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2024-12-31T14:38:56.3196721' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Purchase] ([PurchaseID], [SupplierID], [PurchaseDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt]) VALUES (4, 1, CAST(N'0001-01-01' AS Date), CAST(60.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-01T22:18:22.2216315' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Purchase] ([PurchaseID], [SupplierID], [PurchaseDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt]) VALUES (5, 1, CAST(N'0001-01-01' AS Date), CAST(60.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-01T22:18:37.1280168' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Purchase] ([PurchaseID], [SupplierID], [PurchaseDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt]) VALUES (6, 1, CAST(N'0001-01-01' AS Date), CAST(75.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-02T16:27:19.2136004' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Purchase] ([PurchaseID], [SupplierID], [PurchaseDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt]) VALUES (7, 1, CAST(N'0001-01-01' AS Date), CAST(1064000.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-02T20:45:46.6510123' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Purchase] ([PurchaseID], [SupplierID], [PurchaseDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt]) VALUES (8, 1, CAST(N'0001-01-01' AS Date), CAST(5394000.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-02T20:59:11.2768681' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Purchase] OFF
GO
SET IDENTITY_INSERT [dbo].[Sale] ON 

INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (1, 1, CAST(N'0001-01-01' AS Date), CAST(1.90 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2024-12-31T00:20:14.7475351' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(2.00 AS Decimal(18, 2)), N'''Bánh Lay''s''', N'1', N'1.90')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (2, 1, CAST(N'0001-01-01' AS Date), CAST(16.80 AS Decimal(18, 2)), N'Đang xử lý', N'Ducci1310', N'', CAST(N'2024-12-31T11:56:21.1075913' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(16.90 AS Decimal(18, 2)), N'''Gà quay'',''Nescafe'',''Bánh Lay''s''', N'1,1,1', N'10.00,4.80,2.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (3, 1, CAST(N'0001-01-01' AS Date), CAST(14.80 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2024-12-31T14:00:19.5525872' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(15.00 AS Decimal(18, 2)), N'''Gà quay'',''Nescafe''', N'1,1', N'10.00,4.80')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (4, 1, CAST(N'0001-01-01' AS Date), CAST(48.40 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2024-12-31T14:15:04.5107755' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(48.80 AS Decimal(18, 2)), N'''Bánh Lay''s'',''Nescafe'',''Gà quay''', N'2,3,3', N'2.00,4.80,10.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (5, 1, CAST(N'0001-01-01' AS Date), CAST(16.80 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2024-12-31T14:24:48.2617511' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(16.90 AS Decimal(18, 2)), N'''Bánh Lay''s'',''Nescafe'',''Gà quay''', N'1,1,1', N'2.00,4.80,10.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (6, 1, CAST(N'2024-12-31' AS Date), CAST(56.80 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2024-12-31T14:29:56.7412559' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(56.90 AS Decimal(18, 2)), N'''Bánh Lay''s'',''Nescafe'',''Gà quay''', N'1,1,5', N'2.00,4.80,10.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (7, 3, CAST(N'2025-01-01' AS Date), CAST(20.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-01T22:18:59.3260592' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(20.00 AS Decimal(18, 2)), N'''Gà quay'',''Bánh Tacos''', N'1,1', N'10.00,10.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (8, 1, CAST(N'2025-01-01' AS Date), CAST(10.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-01T22:25:50.7875943' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(10.00 AS Decimal(18, 2)), N'''Gà quay''', N'1', N'10.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (9, 1, CAST(N'2025-01-01' AS Date), CAST(10.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-01T22:27:46.0682237' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(10.00 AS Decimal(18, 2)), N'''Gà quay''', N'1', N'10.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (10, 1, CAST(N'2025-01-01' AS Date), CAST(4.80 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-01T22:28:50.4403523' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(5.00 AS Decimal(18, 2)), N'''Nescafe''', N'1', N'4.80')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (11, 1, CAST(N'2025-01-01' AS Date), CAST(4.80 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-01T22:32:28.7664451' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(5.00 AS Decimal(18, 2)), N'''Nescafe''', N'1', N'4.80')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (12, 2, CAST(N'2025-01-01' AS Date), CAST(10.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-01T22:34:38.9214454' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(10.00 AS Decimal(18, 2)), N'''Gà quay''', N'1', N'10.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (13, 1, CAST(N'2025-01-02' AS Date), CAST(30.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'Có Ghi Chú', CAST(N'2025-01-02T15:57:34.2131681' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(30.00 AS Decimal(18, 2)), N'''Gà quay'',''Bánh Tacos''', N'1,2', N'10.00,10.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (14, 1, CAST(N'2025-01-02' AS Date), CAST(19.00 AS Decimal(18, 2)), N'Đang xử lý', N'Ducci1310', N'', CAST(N'2025-01-02T16:27:39.6565938' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(19.00 AS Decimal(18, 2)), N'''Sợi Mỳ Ý '',''CocaCola Zero'',''Fanta'',''Bánh Snack Cheetos'',''Bánh Tacos''', N'1,1,1,1,1', N'3.00,2.10,2.00,1.90,10.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (15, 1, CAST(N'2025-01-02' AS Date), CAST(15000.00 AS Decimal(18, 2)), N'Hoàn thành', N'Ducci1310', N'', CAST(N'2025-01-02T18:17:15.2434759' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(10000.00 AS Decimal(18, 2)), N'''Nescafe'',''Bánh Lay''s''', N'2,1', N'5000.00,5000.00')
INSERT [dbo].[Sale] ([SaleID], [CustomerID], [SaleDate], [TotalAmount], [Status], [CreatedBy], [Notes], [CreatedAt], [UpdatedAt], [ToTalCostPrice], [ProductNameList], [ProductQuantityList], [ProductPriceList]) VALUES (16, 1, CAST(N'2025-01-02' AS Date), CAST(0.00 AS Decimal(18, 2)), N'Đang xử lý', N'Ducci1310', N'', CAST(N'2025-01-02T21:16:16.3246664' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Sale] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppiler] ON 

INSERT [dbo].[Suppiler] ([Id], [Name], [Phone], [Email], [Address]) VALUES (1, N'DanhCao''s', N'111111', N'2251@gmail.com', N'Bình Thạnh')
INSERT [dbo].[Suppiler] ([Id], [Name], [Phone], [Email], [Address]) VALUES (2, N'Công Ty Hàng Tiêu Dùng ', N'0222333354', N'Tieudung1432@gmail.com', N'Quận 7, TPHCM')
SET IDENTITY_INSERT [dbo].[Suppiler] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [UserName], [Password], [Phone], [Picture], [Role]) VALUES (3, N'TrongDuc', N'Ducci1310', N'Ducci12345', N'0347078222', N'C:\Users\Yoga\source\repos\Inventory_Manager_Pos\PL\bin\ImagesUsers\28c78256-340f-4810-968e-1d8d7d65e45b.jpg', N'Quản lý')
INSERT [dbo].[Users] ([Id], [Name], [UserName], [Password], [Phone], [Picture], [Role]) VALUES (4, N'TrongDuc', N'Ducci', N'Ducci123', N'0347078222', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\ImagesUsers\4aea7cae-50df-48d8-a28f-d3a5a11d36a5.jpg', N'Nhân viên')
INSERT [dbo].[Users] ([Id], [Name], [UserName], [Password], [Phone], [Picture], [Role]) VALUES (5, N'Cao Thành Danh', N'DanhThanh123', N'123Danh*', N'0393984568', N'C:\Users\Yoga\Source\Repos\Inventory_Manager_Pos\PL\bin\ImagesUsers\86bbecc9-8091-4200-a989-4e35b85c9863.jpg', N'Khách hàng')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Products__177800D326E0A7AB]    Script Date: 1/3/2025 11:15:21 AM ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [UQ__Products__177800D326E0A7AB] UNIQUE NONCLUSTERED 
(
	[Barcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Suppiler__A9D10534AC1E5044]    Script Date: 1/3/2025 11:15:21 AM ******/
ALTER TABLE [dbo].[Suppiler] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Invoice] ADD  DEFAULT ('Pending') FOR [PaymentStatus]
GO
ALTER TABLE [dbo].[Invoice] ADD  CONSTRAINT [DF_Invoice_QRCodeData]  DEFAULT ('N/A') FOR [QRCodeData]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Quanti__60A75C0F]  DEFAULT ((0)) FOR [QuantityInStock]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Discou__619B8048]  DEFAULT ((0.00)) FOR [Discount]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Create__628FA481]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Update__6383C8BA]  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Purchase] ADD  CONSTRAINT [DF__Purchase__Create__09A971A2]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK__Invoice__Custome__2DE6D218] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK__Invoice__Custome__2DE6D218]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK__Invoice__SaleID__2EDAF651] FOREIGN KEY([SaleID])
REFERENCES [dbo].[Sale] ([SaleID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK__Invoice__SaleID__2EDAF651]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_SupplierID_Product] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppiler] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_SupplierID_Product]
GO
ALTER TABLE [dbo].[Purchase]  WITH CHECK ADD  CONSTRAINT [FK_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppiler] ([Id])
GO
ALTER TABLE [dbo].[Purchase] CHECK CONSTRAINT [FK_Supplier]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Customerid] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Customerid]
GO
USE [master]
GO
ALTER DATABASE [Inventory_Manager_Pos] SET  READ_WRITE 
GO
