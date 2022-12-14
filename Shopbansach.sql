USE [master]
GO
/****** Object:  Database [Shopbansach]    Script Date: 25/10/2022 9:48:13 AM ******/
CREATE DATABASE [Shopbansach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shopbansach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HNTEXPRESS\MSSQL\DATA\Shopbansach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shopbansach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.HNTEXPRESS\MSSQL\DATA\Shopbansach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Shopbansach] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shopbansach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shopbansach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shopbansach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shopbansach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shopbansach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shopbansach] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shopbansach] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Shopbansach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shopbansach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shopbansach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shopbansach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shopbansach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shopbansach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shopbansach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shopbansach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shopbansach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Shopbansach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shopbansach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shopbansach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shopbansach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shopbansach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shopbansach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shopbansach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shopbansach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shopbansach] SET  MULTI_USER 
GO
ALTER DATABASE [Shopbansach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shopbansach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shopbansach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shopbansach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shopbansach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shopbansach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Shopbansach] SET QUERY_STORE = OFF
GO
USE [Shopbansach]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](20) NOT NULL,
	[Lastname] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [varchar](13) NOT NULL,
	[Provincial] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](50) NULL,
	[StartDay] [date] NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufactures]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufactures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Information] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
	[Color_Id] [int] NULL,
	[Size_Id] [int] NULL,
	[Quality] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Method] [bit] NOT NULL,
	[Name] [varchar](6) NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Cate]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Cate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Cate_Id] [int] NULL,
	[Product_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_types]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_types](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[disDelete] [bit] NULL,
	[slug] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Price] [int] NOT NULL,
	[Origin] [nvarchar](100) NOT NULL,
	[Material] [nvarchar](100) NOT NULL,
	[Status] [bit] NULL,
	[Describe] [nvarchar](max) NOT NULL,
	[Review] [nvarchar](max) NULL,
	[Manu_Id] [int] NOT NULL,
	[Views] [int] NULL,
	[ManuDay] [date] NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unit_types]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit_types](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[disDelete] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25/10/2022 9:48:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](36) NOT NULL,
	[Password] [varchar](125) NOT NULL,
	[Fullname] [nvarchar](125) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [Firstname], [Lastname], [Email], [Phone], [Provincial], [Address], [User_Id]) VALUES (1, N'Nguyễn', N'Tấn Khang', N'khangtan123@gmail.com', N'0922223321', N'Hồ Chí Minh', N'320/11 Xa lộ Hà Nội, Phường Nguyễn Thi Phương, Quận 12, Tp.HCM', 9)
INSERT [dbo].[Address] ([Id], [Firstname], [Lastname], [Email], [Phone], [Provincial], [Address], [User_Id]) VALUES (2, N'Khoa', N'Pham', N'khoahoanghh@gmail.com', N'+84832977767', N'Ho Chi Minh', N'Thu Duc, Tp. HCM', 12)
INSERT [dbo].[Address] ([Id], [Firstname], [Lastname], [Email], [Phone], [Provincial], [Address], [User_Id]) VALUES (3, N'Phạm', N'Hoàng Khoa', N'khoaphps12540@fpt.edu.vn', N'0122223332', N'Bình Phước', N'520/3/1 quốc lộ 13, phường Hiệp Bình Phước, Thủ Đức, Tp.HCM', 11)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (1, N'Sách Văn Học', N'vanhoc2.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (2, N'Sách Giáo Khoa', N'sachgiaokhoa5.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (4, N'Sách Kinh Tế', N'sachkinhte1.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (5, N'Sách Kỹ Năng Sống', N'kynangsong2.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (6, N'Sách Thiếu Nhi', N'sachthieunhi1.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (7, N'Sách Văn Hóa Du Lịch', N'vanhoadulich1.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (8, N'Sách Tâm Linh', N'sachtamlinh1.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (9, N'Truyện Manga/Comic', N'mangacomics1.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (10, N'Sách Ngoại Ngữ', N'sachngoaingu1.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (1, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 9)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (2, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 12)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (4, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 15)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (5, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 18)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (6, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 20)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (2, 9, 3, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (11, 9, 4, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (12, 11, 3, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (13, 11, 8, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (9, 9, 8, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (14, 11, 7, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (15, 9, 18, CAST(N'2021-06-16' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufactures] ON 

INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (1, N'Chanel', N'864678.jpg', N'Chanel là tên thông dụng của một hãng thời trang Pháp, đóng tại thủ đô Paris được Coco Chanel sáng lập. Theo Forbes, công ty Chanel thuộc sở hữu của Alain Wertheimer và Gerard Wertheimer, cả hai là cháu của đối tác ban đầu của Chanel Pierre Wertheimer.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (2, N'Louis Vuitton', N'louis-vuitton-logo.jpg', N'Công ty Louis Vuitton là một công ty và nhãn hiệu thời trang xa xỉ của Pháp, có trụ sở tại Paris, Pháp. Đây là một ban của công ty cổ phần Pháp LVMH Louis Vuitton Moët Hennessy S.A.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (3, N'Givenchy', N'givenchy.png', N'Givenchy là một nhãn hiệu thời trang, dầu thơm và mỹ phẩm ở Pháp. Givenchy được thành lập năm 1952 do Hubert de Givenchy và là một thành viên của Chambre Syndicale de la Haute Couture et du Pret-a-Porter. Nó trực thuộc tiệm LVMH và trong năm 1993 có mộ thương số là $176 triệu.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (4, N'Hermes Paris', N'hermes.jpg', N'Hermès là một công ty thời trang xa xỉ có trụ sở ở Paris, Pháp. Công ty được sáng lập bởi Thierry Hermès vào năm 1837, ngày nay chuyên sản xuất hàng da, phụ kiện thời trang, nước hoa, hàng xa xỉ, và quần áo may sẵn. Logo của công ty từ những năm 1950, là một chiếc xe ngựa. ')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (5, N'Versace', N'Versace.png', N'Được thành lập vào năm 1978 bởi ngôi sao nhạc rock Gianni Versace, Versace ngày nay là một trong các đầu tàu của xu hướng thời trang cao cấp và đồng thời là một trong những thương hiệu có tầm ảnh hưởng nhất quốc tế.
')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (6, N'Nike', N'nike.jpg', N'Nike, Inc. là một tập đoàn đa quốc gia của Mỹ hoạt động trong lĩnh vực thiết kế, phát triển, sản xuất, quảng bá cũng như kinh doanh các mặt hàng giày dép, quần áo, phụ kiện, trang thiết bị và dịch vụ liên quan đến thể thao. Trụ sở của công ty được đặt gần Beaverton, Oregon, tại khu vực đô thị Portland.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (7, N'Dolce & Gabbana', N'3204827.jpg', N'Thương hiệu Dolce & Gabbana được 2 nhà thiết kế thời trang người Ý là Domenico Dolce và Stefano Gabbana thành lập vào năm 1985. Đây là thương hiệu thời trang cao cấp được nhiều ngôi sao Hollywood tin dùng như Madona, Gisele Bundchen, Monica Bellucci, Isabella Rossellini, v.v…')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (8, N'Gucci', N'gucci.png', N'The House of Gucci, hay được biết đến ngắn gọn là Gucci, là một biểu tượng thời trang sở hữu bởi Ý và Pháp, một nhãn hiệu đồ da nổi tiếng. Gucci được thành lập vào năm 1921 bởi Guccio Gucci tại Florence, Tuscany năm 1921.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (9, N'Prada', N'915770.jpg', N'Prada là một nhãn hiệu thời trang của Ý chuyên về các sản phẩm cao cấp cho nam và nữ, nhãn hiệu Prada được thành lập bởi Mario Prada năm 1913. Prada được xem là một trong những nhà thiết kế có ảnh hưởng nhất trong ngành công nghiệp thời trang.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (10, N'Armani', N'2946220.jpg', N'Giorgio Armani là nhà thiết kế thời trang Ý được thành lập năm 1975. Armani là một trong những thương hiệu thời trang cao cấp quyền lực nhất trên thế giới, và có rất nhiều công ty chi nhánh trực thuộc Armani như Emporio Armani, Armani Jeans, Armani Exchange, Armani Collezioni và Casa để có thể đáp ứng được mọi nhu cầu khác nhau của các phân khúc thị trường thời trang.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (11, N'Adidas', N'387714.jpg', N'Adidas Limited AG là một thương hiệu chuyên sản xuất các sản phẩm thời trang, thiết bị, dụng cụ thể thao đến từ Đức, một thành viên của tập đoàn adidas Group, bao gồm cả công ty dụng cụ thể thao Reebok, công ty golf Taylormade, công ty sản xuất bóng golf Maxfli và adidas Golf. adidas là nhà sản xuất sản phẩm thể thao ...')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (12, N'Lacoste', N'5598158.jpg', N'Lacoste là một công ty quần áo may sẵn Pháp được thành lập vào năm 1933 chuyên bán các loại quần áo cao cấp, giày dép, nước hoa, đồ da, đồng hồ, kính mát và nổi tiếng nhất với các loại áo thun thể thao. Trong những năm gần đây, Lacoste đã sản xuất các dòng sản phẩm như khăn trải giường và khăn tắm.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (13, N'Converse', N'1176598.jpg', N'Converse là một công ty giày của Mỹ chuyên sản xuất giày trượt ván, giày dép thường ngày và quần áo. Được thành lập vào năm 1908, đến này Converse đã trở thành một công ty con của Nike, Inc. kể từ năm')
SET IDENTITY_INSERT [dbo].[Manufactures] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (23, 4, 2, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 1, N'130961', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (24, 6, 2, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 1, N'130961', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (26, 3, 3, NULL, NULL, 3, CAST(N'2021-06-16' AS Date), 0, N'938025', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (27, 7, 3, NULL, NULL, 2, CAST(N'2021-06-16' AS Date), 0, N'938025', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (28, 8, 3, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 0, N'938025', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (31, 3, 1, 2, 13, 1, CAST(N'2021-06-16' AS Date), 0, N'237926', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (30, 20, 1, 11, 13, 1, CAST(N'2021-06-16' AS Date), 1, N'153733', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (32, 5, 1, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 0, N'237926', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (33, 6, 1, 2, 15, 1, CAST(N'2021-06-16' AS Date), 0, N'237926', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (34, 9, 1, 18, 14, 2, CAST(N'2021-06-16' AS Date), 0, N'237926', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (35, 6, 1, 2, 15, 1, CAST(N'2021-06-16' AS Date), 0, N'600736', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (36, 8, 1, 6, 5, 1, CAST(N'2021-06-16' AS Date), 0, N'600736', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (37, 11, 1, 10, 15, 1, CAST(N'2021-06-16' AS Date), 0, N'600736', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (38, 3, 1, 2, 13, 1, CAST(N'2021-06-16' AS Date), 1, N'494828', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (25, 7, 2, NULL, NULL, 2, CAST(N'2021-06-16' AS Date), 1, N'130961', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (39, 3, 1, 2, 13, 2, CAST(N'2021-06-16' AS Date), 0, N'447161', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (40, 5, 1, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 0, N'447161', 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (1, N'Bí mật tư duy triệu phú', N'kinhte2.jpg', 100000, N'Việt Nam', N'Cotton', 1, N'Tác Giả: T. Harv Eker', N'', 1, 0, CAST(N'2021-06-08' AS Date), 4)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (3, N'Người bán hàng vĩ đại nhất thế giới', N'kinhte3.jpg', 90000, N'Việt Nam', N'Cotton', 1, N'Tác Giả: Og Mandino', N'', 9, 0, CAST(N'2021-06-09' AS Date), 4)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (4, N'30 chủ đề từ vựng tiếng Anh', N'sachngoaingu1.jpg', 70000, N'Việt Nam', N'Kaki', 1, N'Tác Giả: NXB Giáo Dục', N'', 1, 0, CAST(N'2021-06-09' AS Date), 10)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (5, N'Giải thích ngữ pháp tiếng Anh', N'sachngoaingu2.jpg', 85000, N'Việt Nam', N'98% Cotton, 2% spandex', 1, N'Tác Giả: NXB Giáo Dục', N'', 5, 0, CAST(N'2021-06-09' AS Date), 10)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (6, N'Hacker Ielts-Writing', N'sachngoaingu5.jpg', 50000, N'Việt Nam', N'Kaki', 1, N'Tác Giả: NXB Giáo Dục', N'', 1, 0, CAST(N'2021-06-09' AS Date), 10)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (7, N'Nhà giả kim', N'vanhoc2.jpg', 30000, N'Việt Nam', N'Kaki', 1, N'Tác Giả: Paulo Coelho', N'', 1, 0, CAST(N'2021-06-09' AS Date), 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (8, N'Cây cam ngọt của tôi', N'vanhoc3.jpg', 40000, N'Việt Nam', N'Vải tổng hợp', 1, N'Tác Giả: José Mauro de Vasconcelos', N'', 1, 0, CAST(N'2021-06-09' AS Date), 1)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (9, N'Đọc vị bất kì ai', N'sachtamly2.jpg', 50000, N'Việt Nam', N'Polo', 1, N'Tác Giả: David J. Lieberman', N'', 1, 0, CAST(N'2021-06-09' AS Date), 5)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (10, N'Hiểu về trái tim', N'sachtamly5.jpg', 40000, N'Việt Nam', N'Cotton', 1, N'Tác Giả: Minh Niệm', N'', 1, 0, CAST(N'2021-06-09' AS Date), 5)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (11, N'Dám Nghĩ lớn', N'kynang1.jpg', 65000, N'Việt Nam', N'Kaki', 1, N'Tác Giả: David J. Schwartz', N'Quần Jogger Nam Kaki Thời Trang 4 Màu Phong Cách Thể Thao VICERO
CHÍNH SÁCH
Là khách hàng của VICERO, bạn sẽ được:
Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh.
Hoàn tiền nếu sản phẩm không giống với mô tả.
HƯỚNG DẪN CÁCH ĐẶT HÀNG
Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE
Mã sản phẩm đã có trong ảnh
Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 size khác nhau
- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng
- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán”
Shop luôn sẵn sàng trả lời inbox để tư vấn
THÔNG TIN CHI TIẾT
Tên Sản phẩm: Quần Jogger Nam Kaki Thời Trang 4 Màu Phong Cách Thể Thao VICERO
Chất liệu: vải kaki
Màu sắc: Đen, xanh than, xanh bộ đội, vàng be

Thương hiệu: VICERO
Xuất xứ: Việt Nam

------------------------------------

Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính
Đường may tinh tế, chỉn chu, khéo léo
Màu sắc đa dạng, trẻ trung
Chất lượng sản phẩm tốt
Bảng Size:
Size M-29:cao 1m6-1m65,nặng 50-57kg
Size L-30:Cao 1m66-1m70,nặng 57-61kg
Size XL-31:Cao 1m70-1m74,nặng 62-69kg
Size XXL-32:Cao 1m74-1m77,nặng 70-75kg

', 2, 0, CAST(N'2021-06-09' AS Date), 5)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (12, N'Ai Cập huyền bí', N'tamlinh2.jpg', 95000, N'Việt Nam', N'Thun', 1, N'Tác Giả: NXB Kim Đồng', N'', 2, 0, CAST(N'2021-06-04' AS Date), 8)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (13, N'Tiền kiếp hậu kiếp', N'tamlinh3.jpg', 90000, N'Việt Nam', N'Thun', 1, N'Tác Giả: NXB Kim Đồng', N'', 5, 0, CAST(N'2021-06-10' AS Date), 8)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (14, N'Biểu tượng tâm linh', N'tamlinh1.jpg', 90000, N'Việt Nam', N'Tơ Xước', 1, N'Tác Giả: NXB Kim Đồng', N'', 2, 0, CAST(N'2021-06-11' AS Date), 8)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (15, N'Naruto', N'manga2.jpg', 50000, N'Việt Nam', N'Lụa Ý', 1, N'Tác Giả: Kishimoto Masashi', N'', 8, 0, CAST(N'2021-06-10' AS Date), 9)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (16, N'One Piece', N'manga1.jpg', 45000, N'Việt Nam', N'Vật liệu khác', 1, N'Tác Giả: Oda Eiichiro', N'', 5, 0, CAST(N'2021-06-10' AS Date), 9)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (17, N'Áo Khoác Cadigan Bomber ', N'aocadigan.PNG', 108000, N'Việt Nam', N'Nỉ', 1, N'Áo khoác bomber được thiết kế tinh tế với màu sắc khác nhau, tùy theo sở thích mà bạn lựa chọn. Đường may áo rất tỉ mỉ, chất liệu cotton mềm mịn đẹp, không xù, form dáng khỏe khoắn tạo cảm giác thoải mái và phong cách trẻ trung, lịch lãm cho người mặc.', N'', 3, 0, CAST(N'2021-06-09' AS Date), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (18, N'Quần Áo Thời Trang Hume', N'aohume.PNG', 225000, N'Việt Nam', N'Cotton', 1, N'Với thiết kế độc đáo, sang trọng mẫu set ngắn này chắc chắn không làm khách yêu thất vọng, sự kết hợp hài hòa của áo sát nách cùng áo 2 dây phối quần short có túi, đồng thời xòe ở điểm eo không những che đi khuyết điểm mà còn tôn trọn dáng người mặc, chất liệu không co giãn nhưng vẫn tạo được cảm giác thoải mái.

Set rất dễ mặc và tôn dáng, bộ được thiết kế trẻ trung và năng động

Chất liệu vải vừa phải không mỏng cũng không dày nên phù hợp với thời tiết của Việt Nam', N'', 3, 0, CAST(N'2021-06-11' AS Date), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (19, N'Áo Thun Nữ GUMAC ATB461', N'aothunnugumac.PNG', 135000, N'Hàn Quốc', N'Cotton 2 Chiều', 1, N'Màu sắc tươi sáng, nổi bật lôi cuốn đầy mê hoặc cho nàng thêm xinh xắn rạng ngời mỗi khi diện sản phẩm.
Áo thun chắc chắn là một món đồ không thể thiếu trong tủ đồ của các bạn gái, bởi áo thun mang đến cho người mặc cảm giác thoải mái, dễ chịu trẻ trung đặc biệt áo thun không bao giờ lỗi mốt, bạn có thể kết hợp được với nhiều đồ như quần bò, chân váy short, giày hay dép cao gót tạo nên hình ảnh Đơn giản nhưng vẫn cuốn hút, vô cùng "chất" khiến người đối diện không thể nào rời mắt.', N'', 3, 0, CAST(N'2021-06-12' AS Date), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (20, N'Áo Thun Nữ Sọc Cổ Tim GUMAC', N'aothuntraitim.PNG', 80000, N'Hàn Quốc', N'Thun Poly Cotton', 1, N'Áo thun chắc chắn là một món đồ không thể thiếu trong tủ đồ của các bạn gái, bởi áo thun mang đến cho người mặc cảm giác thoải mái, dễ chịu trẻ trung đặc biệt áo thun không bao giờ lỗi mốt, bạn có thể kết hợp được với nhiều đồ như quần bò, chân váy short, giày hay dép cao gót tạo nên hình ảnh Đơn giản nhưng vẫn cuốn hút, vô cùng "chất" khiến người đối diện không thể nào rời mắt.', N'', 3, 0, CAST(N'2021-06-11' AS Date), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (21, N'Quần Tây Nữ Công Sở', N'quantaynu.PNG', 159000, N'Hàn Quốc', N'Tuyết Mưa', 1, N'Đối với những tín đồ yêu thích sự sang trọng thì không nên bỏ qua mẫu quần suông ống rộng. Với kiểu dáng thoải mái cùng vải mềm mại nên rất phù hợp trong môi trường công sở. Hơn nữa, dáng quần này sẽ khéo léo che được các khuyết điểm trên cơ thể của bạn.Bên cạnh đó, chiếc quần này phù hợp với khá nhiều mẫu áo. Cho dù là kiểu áo nào cũng sẽ thể hiện được sang trọng và thanh lịch cho quý cô.
Quần tây thanh lịch và tinh tế phái nữ thêm nhẹ nhàng và cá tính', N'', 1, 0, CAST(N'2021-06-12' AS Date), NULL)
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay], [CategoryId]) VALUES (22, N'sdfsdfsfdfs', N'ackhoac.PNG', 20000, N'Việt Nam', N'Kaki', 1, N'sfsdfsfsfds', N'', 3, 0, CAST(N'2021-06-11' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'ROLE_ADMIN')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'ROLE_USER')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Role] ON 

INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (3, 11, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (4, 12, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (5, 9, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (8, 14, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (9, 15, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (10, 16, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (11, 17, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (12, 18, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (13, 19, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (14, 20, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (15, 21, 2)
SET IDENTITY_INSERT [dbo].[User_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (9, N'khoahoangyahoo@gmail.com', N'$2a$10$VChUwTT4/.4CBlb6hpoBGer4wRSTBuzhQ1YpSzcsYxwZMLF9QC6QO', N'Khoa Phạm')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (11, N'khoaphps12540@fpt.edu.vn', N'$2a$10$/pSOMXPoZysoe42dJSfXZ.DLY93Hj0mno4FVsfEKPNVphHdONqAKW', N'Khoa Pham')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (12, N'khoahoanghh@gmail.com', N'$2a$10$ZIBEKiTgopozCsLWnunvKuOiodzOc0ypSEi/5E9fnmVSnc6MDNm.q', N'Khoa Pham')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (14, N'thino@gmail.com', N'$2a$10$.jDerbRNDw06NHE6EI2iROc6vGbHTl/d4ScNqYfqYMXwPlO4IMycW', N'Thị Nở')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (15, N'chipheo123@gmail.com', N'$2a$10$VoULVIKUz/Y3UdqQvQ2rNeABSbUqEom6CbWOCPCX1VJs6u./IDvCK', N'Chí Phèo')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (16, N'thientxps12536@fpt.edu.vn', N'$2a$10$vh/ojb8cW2qJSTDpsC1Wv.DF6L05k0xPO9rHA3YSQw8DBEo9Gm5Za', N'Trần Xuân Thiện')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (17, N'tuanpmps12253@fpt.edu.vn', N'$2a$10$hZSPCmS1TuZp/hKqjxG8NO9qoVT/n2lfNdZDV5yp8HKyIRFdTPBIG', N'Phạm Minh Tuấn')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (18, N'cuonglvps15433@gmail.com', N'$2a$10$.kl4MdX/04ip8g1DY2.E0OJZKjpxRoPJFaHKQI1rXjyogLmtRTw6W', N'Lê Văn Cường')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (19, N'sangnguyen123@gmail.com', N'$2a$10$ENENh61.X1Y/g4WmiOfuVeuqjEIInVGii3brJFiDo/45rxi8clpXK', N'Nguyễn Quang Sáng')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (20, N'trucntps12554@gmail.com', N'$2a$10$ndBkXv3WS.PRf3oSFImyb.uawe/eRFmhcv/sLYW76uDvzyRIwwslq', N'Nguyễn Thanh Trúc')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (21, N'hoanttps124002@fpt.edu.vn', N'$2a$10$k3zsOFEPHRvOklKg4Uj76OQVrU6kVgZiDQmGh74X75W9qN1aWxlwa', N'Trần Hồ Hoàn')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKgnfv1k6flrriv6a9jh5cja03x]    Script Date: 25/10/2022 9:48:14 AM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UKgnfv1k6flrriv6a9jh5cja03x] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D10534534064F3]    Script Date: 25/10/2022 9:48:14 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [Position]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [StartDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [Review]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Views]  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FKi4g05r1xw084ono4cr10ycnd5] FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FKi4g05r1xw084ono4cr10ycnd5]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FKjs10qivwfdu4qi96fh1xv0d0r] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FKjs10qivwfdu4qi96fh1xv0d0r]
GO
ALTER TABLE [dbo].[Product_Cate]  WITH CHECK ADD  CONSTRAINT [FK5nspf169s7bd1ua8b0h5xmeih] FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Product_Cate] CHECK CONSTRAINT [FK5nspf169s7bd1ua8b0h5xmeih]
GO
ALTER TABLE [dbo].[Product_Cate]  WITH CHECK ADD  CONSTRAINT [FKq8jrjmhe349w1e8sstdk14bwt] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Product_Cate] CHECK CONSTRAINT [FKq8jrjmhe349w1e8sstdk14bwt]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Manu_Id])
REFERENCES [dbo].[Manufactures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK5cj2ocslasvwqwbf31hgn5cdt] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK5cj2ocslasvwqwbf31hgn5cdt]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK95g9h74wakpp78x6v8dv5x7t6] FOREIGN KEY([Manu_Id])
REFERENCES [dbo].[Manufactures] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK95g9h74wakpp78x6v8dv5x7t6]
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [Shopbansach] SET  READ_WRITE 
GO
