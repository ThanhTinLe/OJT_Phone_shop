USE [OJT_Phone_Shop]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/11/2021 4:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[BuyDate] [varchar](20) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 6/11/2021 4:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[proID] [int] NOT NULL,
	[orderID] [int] NOT NULL,
	[numOfPro] [int] NOT NULL,
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[proID] ASC,
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/11/2021 4:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Unit_Price] [float] NOT NULL,
	[Unit_Stock] [float] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Manufacturer] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Condition] [varchar](50) NOT NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/11/2021 4:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [varchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Role] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (1, 1009, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (2, 2018, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (3, 2018, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (4, 2018, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (5, 2018, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (6, 2018, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (7, 1009, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (8, 1009, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (9, 1908, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (10, 1009, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (11, 899, N'user', N'2021-06-11')
INSERT [dbo].[Order] ([OrderID], [TotalPrice], [UserName], [BuyDate]) VALUES (12, 1009, N'user', N'2021-06-11')
SET IDENTITY_INSERT [dbo].[Order] OFF
INSERT [dbo].[Order_Detail] ([proID], [orderID], [numOfPro]) VALUES (1, 1, 1)
INSERT [dbo].[Order_Detail] ([proID], [orderID], [numOfPro]) VALUES (1, 9, 1)
INSERT [dbo].[Order_Detail] ([proID], [orderID], [numOfPro]) VALUES (1, 11, 1)
INSERT [dbo].[Order_Detail] ([proID], [orderID], [numOfPro]) VALUES (2, 8, 1)
INSERT [dbo].[Order_Detail] ([proID], [orderID], [numOfPro]) VALUES (2, 9, 1)
INSERT [dbo].[Order_Detail] ([proID], [orderID], [numOfPro]) VALUES (2, 10, 1)
INSERT [dbo].[Order_Detail] ([proID], [orderID], [numOfPro]) VALUES (2, 12, 1)
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Unit_Price], [Unit_Stock], [Description], [Manufacturer], [Category], [Condition], [image]) VALUES (1, N'P20 Pro 128GB Dual SIM Twilight', 899, 600, N'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis consequuntur in, quia laudantium explicabo architecto numquam dicta consectetur consequatur unde! Consequuntur nemo hic deserunt nisi? Id ea pariatur ut repellendus!', N'abc', N'abc', N'New', N'Huawei-P20-y-el-Huawei-P20-Pro-1.jpg')
INSERT [dbo].[Product] ([ID], [Name], [Unit_Price], [Unit_Stock], [Description], [Manufacturer], [Category], [Condition], [image]) VALUES (2, N'Iphone 8 Plus 64GB PRODUCT RED', 1009, 250, N'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis consequuntur in, quia laudantium explicabo architecto numquam dicta consectetur consequatur unde! Consequuntur nemo hic deserunt nisi? Id ea pariatur ut repellendus!', N'abc', N'abc', N'Refurbished', N'iphon8.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[User] ([UserName], [FullName], [Password], [Role]) VALUES (N'admin', N'admin', N'1', 0)
INSERT [dbo].[User] ([UserName], [FullName], [Password], [Role]) VALUES (N'user', N'user', N'1', 1)
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserName])
REFERENCES [dbo].[User] ([UserName])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Order] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Order]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_Detail_Product] FOREIGN KEY([proID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_Order_Detail_Product]
GO
