USE [db1]
GO
/****** Object:  Table [dbo].[AddProductManagement]    Script Date: 2023/3/26 下午 10:02:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddProductManagement](
	[ap_id] [int] IDENTITY(1,1) NOT NULL,
	[s_id] [int] NULL,
	[AddPname] [nvarchar](50) NULL,
	[AddPrice] [int] NULL,
 CONSTRAINT [PK_AddProductManagement] PRIMARY KEY CLUSTERED 
(
	[ap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerComment]    Script Date: 2023/3/26 下午 10:02:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerComment](
	[cc_id] [int] IDENTITY(1,1) NOT NULL,
	[c_id] [int] NULL,
	[Comment] [nvarchar](1000) NULL,
 CONSTRAINT [PK_CustomerComment] PRIMARY KEY CLUSTERED 
(
	[cc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerLogin]    Script Date: 2023/3/26 下午 10:02:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerLogin](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[user] [nvarchar](50) NULL,
	[Account] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustomerLogin] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderlist]    Script Date: 2023/3/26 下午 10:02:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderlist](
	[o_id] [int] IDENTITY(1,1) NOT NULL,
	[c_id] [int] NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Pname] [nvarchar](50) NULL,
	[Price] [int] NULL,
	[Amount] [int] NULL,
	[TotalPrice] [int] NULL,
	[AddPname] [nvarchar](50) NULL,
	[AddPrice] [int] NULL,
	[date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductManagement]    Script Date: 2023/3/26 下午 10:02:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductManagement](
	[pm_id] [int] IDENTITY(1,1) NOT NULL,
	[s_id] [int] NULL,
	[pname] [nvarchar](50) NULL,
	[price] [int] NULL,
	[amount] [int] NULL,
	[pdesc] [nvarchar](50) NULL,
	[pimage] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductManagement] PRIMARY KEY CLUSTERED 
(
	[pm_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[revenue]    Script Date: 2023/3/26 下午 10:02:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[revenue](
	[r_id] [int] IDENTITY(1,1) NOT NULL,
	[c_id] [int] NULL,
	[discount] [int] NULL,
	[money] [int] NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_revenue1] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffLogin]    Script Date: 2023/3/26 下午 10:02:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffLogin](
	[s_id] [int] IDENTITY(1,1) NOT NULL,
	[user] [nvarchar](50) NULL,
	[Account] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_StaffLogin] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AddProductManagement] ON 

INSERT [dbo].[AddProductManagement] ([ap_id], [s_id], [AddPname], [AddPrice]) VALUES (1, 1, N'不加購', 0)
INSERT [dbo].[AddProductManagement] ([ap_id], [s_id], [AddPname], [AddPrice]) VALUES (2, 2, N'封膜', 120)
INSERT [dbo].[AddProductManagement] ([ap_id], [s_id], [AddPname], [AddPrice]) VALUES (3, 1, N'藥袋', 150)
INSERT [dbo].[AddProductManagement] ([ap_id], [s_id], [AddPname], [AddPrice]) VALUES (5, 12, N'紙盒', 140)
INSERT [dbo].[AddProductManagement] ([ap_id], [s_id], [AddPname], [AddPrice]) VALUES (1005, 12, N'藥盒', 130)
SET IDENTITY_INSERT [dbo].[AddProductManagement] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerComment] ON 

INSERT [dbo].[CustomerComment] ([cc_id], [c_id], [Comment]) VALUES (1004, 4, N'99')
INSERT [dbo].[CustomerComment] ([cc_id], [c_id], [Comment]) VALUES (1005, 4, N'00')
INSERT [dbo].[CustomerComment] ([cc_id], [c_id], [Comment]) VALUES (1006, 11, N'sandy3')
INSERT [dbo].[CustomerComment] ([cc_id], [c_id], [Comment]) VALUES (1007, 2, N'無')
INSERT [dbo].[CustomerComment] ([cc_id], [c_id], [Comment]) VALUES (1008, 15, N'andy3')
SET IDENTITY_INSERT [dbo].[CustomerComment] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerLogin] ON 

INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (1, N'sandy', N'123', N'123')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (2, N'王宇婕顧客', N'123456', N'G4/RgmBej5NFcvAr9qTMmg==')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (3, N'990', N'990990', N'/j2Uo43q/tGVh1Gn6nrDaA==')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (4, N'99', N'999999', N'VSHgPkvpqe0AIDywUvUfPA==')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (9, N'sandy', N'sandy', N'wn5Qw8x+H7yH8ybcMLGDLw==')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (10, N'sandy1', N'sandy1', N'2Q1f4I/TSfaOoETR8WIyBZIlS2vQZrVYuxdUQJ3f0Jk=')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (11, N'sandy3', N'sandy3', N'JK/JNcGwfitjqfX5rRyrAA==')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (12, N'sandy4', N'sandy4', N'6smYbAgyq6BcKSx+gfwBVw==')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (13, N'andy1', N'andy1', N'xkOt9pLa2AGA2Q1A03oMig==')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (14, N'andy2', N'andy2', N'LiUanMjfLwrZAgf1aK6E1g==')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (15, N'andy3', N'andy3', N'1Fri1BSH51KU3IyqCfSvEw==')
INSERT [dbo].[CustomerLogin] ([c_id], [user], [Account], [Password]) VALUES (16, N'andy4', N'andy4', N'uxZLcoN7wjBpQvrVm8uUSg==')
SET IDENTITY_INSERT [dbo].[CustomerLogin] OFF
GO
SET IDENTITY_INSERT [dbo].[Orderlist] ON 

INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (85, 4, N'9999', N'Plavix Film-Coated Tablets 75mg/tab', 1200, 1, 1320, N'封膜', 120, CAST(N'2023-02-22T21:49:51.387' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (86, 4, N'9999', N'衛生紙', 89, 2, 133, N'不加購', 0, CAST(N'2023-02-22T21:49:51.387' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (87, 4, N'9999', N'維他命C', 150, 3, 300, N'不加購', 0, CAST(N'2023-02-22T21:49:51.387' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (91, 11, N'sandy3', N'Plavix Film-Coated Tablets 75mg/tab', 1200, 1, 1320, N'封膜', 120, CAST(N'2023-02-23T22:01:49.713' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (92, 11, N'sandy3', N'衛生紙', 89, 2, 253, N'封膜', 120, CAST(N'2023-02-23T22:01:49.713' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (93, 11, N'sandy3', N'維他命C', 150, 3, 420, N'封膜', 120, CAST(N'2023-02-23T22:01:49.713' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (94, 11, N'sandy3', N'維他命C', 150, 3, 300, N'不加購', 0, CAST(N'2023-02-23T22:01:49.713' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (95, 2, N'123456', N'衛生紙', 89, 80, 5340, N'不加購', 0, CAST(N'2023-03-20T19:40:21.047' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (96, 15, N'andy3', N'Plavix Film-Coated Tablets 75mg/tab', 1200, 1, 1200, N'不加購', 0, CAST(N'2023-03-26T21:53:15.703' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (97, 15, N'andy3', N'Celebrex Capsule 200mg/cap', 1300, 1, 1420, N'封膜', 120, CAST(N'2023-03-26T21:53:15.703' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (88, 4, N'00', N'衛生紙', 89, 2, 133, N'不加購', 0, CAST(N'2023-02-23T21:11:02.200' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (89, 4, N'00', N'維他命C', 150, 3, 300, N'不加購', 0, CAST(N'2023-02-23T21:11:02.200' AS DateTime))
INSERT [dbo].[Orderlist] ([o_id], [c_id], [CustomerName], [Pname], [Price], [Amount], [TotalPrice], [AddPname], [AddPrice], [date]) VALUES (90, 4, N'00', N'Azilect Tablets 1mg/tab', 1600, 1, 1720, N'封膜', 120, CAST(N'2023-02-23T21:11:02.200' AS DateTime))
SET IDENTITY_INSERT [dbo].[Orderlist] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductManagement] ON 

INSERT [dbo].[ProductManagement] ([pm_id], [s_id], [pname], [price], [amount], [pdesc], [pimage]) VALUES (1, 1, N'Plavix Film-Coated Tablets 75mg/tab', 1200, 4940, N'保栓通錠', N'1.png')
INSERT [dbo].[ProductManagement] ([pm_id], [s_id], [pname], [price], [amount], [pdesc], [pimage]) VALUES (2, 1, N'Celebrex Capsule 200mg/cap', 1300, 910, N'希樂葆膠囊200公絲', N'2.png')
INSERT [dbo].[ProductManagement] ([pm_id], [s_id], [pname], [price], [amount], [pdesc], [pimage]) VALUES (3, 1, N'Klaricid Iv 500mg/vial', 1400, 4998, N'	開羅理黴素靜脈注射劑', N'3.png')
INSERT [dbo].[ProductManagement] ([pm_id], [s_id], [pname], [price], [amount], [pdesc], [pimage]) VALUES (4, 1, N'Clozaril Tablet 100mg/tab', 1500, 5000, N'可致律錠', N'4.png')
INSERT [dbo].[ProductManagement] ([pm_id], [s_id], [pname], [price], [amount], [pdesc], [pimage]) VALUES (5, 1, N'Azilect Tablets 1mg/tab', 1600, 4998, N'律莎錠', N'5.png')
INSERT [dbo].[ProductManagement] ([pm_id], [s_id], [pname], [price], [amount], [pdesc], [pimage]) VALUES (1002, 12, N'衛生紙', 89, 0, N'五月花衛生紙', N'6.png')
INSERT [dbo].[ProductManagement] ([pm_id], [s_id], [pname], [price], [amount], [pdesc], [pimage]) VALUES (1003, 1, N'維他命C', 150, 70, N'維他命C好吃', N'7.png')
SET IDENTITY_INSERT [dbo].[ProductManagement] OFF
GO
SET IDENTITY_INSERT [dbo].[revenue] ON 

INSERT [dbo].[revenue] ([r_id], [c_id], [discount], [money], [date]) VALUES (80, 4, 350, 1402, CAST(N'2023-02-22T21:49:51.387' AS DateTime))
INSERT [dbo].[revenue] ([r_id], [c_id], [discount], [money], [date]) VALUES (81, 4, 430, 1722, CAST(N'2023-02-23T21:11:02.200' AS DateTime))
INSERT [dbo].[revenue] ([r_id], [c_id], [discount], [money], [date]) VALUES (82, 11, 458, 1834, CAST(N'2023-02-23T22:01:49.713' AS DateTime))
INSERT [dbo].[revenue] ([r_id], [c_id], [discount], [money], [date]) VALUES (83, 2, 1068, 4272, CAST(N'2023-03-20T19:40:21.047' AS DateTime))
INSERT [dbo].[revenue] ([r_id], [c_id], [discount], [money], [date]) VALUES (84, 15, 524, 2096, CAST(N'2023-03-26T21:53:15.703' AS DateTime))
SET IDENTITY_INSERT [dbo].[revenue] OFF
GO
SET IDENTITY_INSERT [dbo].[StaffLogin] ON 

INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (1, N'王宇婕員工', N'123456', N'G4/RgmBej5NFcvAr9qTMmg==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (2, N'990', N'990990', N'/j2Uo43q/tGVh1Gn6nrDaA==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (3, N'99', N'999999', N'VSHgPkvpqe0AIDywUvUfPA==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (4, N'123', N'123456', N'G4/RgmBej5NFcvAr9qTMmg==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (5, N'1239', N'999999', N'VSHgPkvpqe0AIDywUvUfPA==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (9, N'sandy', N'sandy', N'wn5Qw8x+H7yH8ybcMLGDLw==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (10, N'sandy1', N'sandy1', N'ByF3j2LmiO1H9eEoR9IGYmyV9jjSpFleqVn1OiI5wS4=')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (11, N'sandy2', N'sandy2', N'cKlXuiF0HEOlzdMRNHV5Jw==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (12, N'sandy3', N'sandy3', N'JK/JNcGwfitjqfX5rRyrAA==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (13, N'sandy4', N'sandy4', N'6smYbAgyq6BcKSx+gfwBVw==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (14, N'andy1', N'andy1', N'xkOt9pLa2AGA2Q1A03oMig==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (15, N'andy2', N'andy2', N'LiUanMjfLwrZAgf1aK6E1g==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (18, N'andy3', N'andy3', N'1Fri1BSH51KU3IyqCfSvEw==')
INSERT [dbo].[StaffLogin] ([s_id], [user], [Account], [Password]) VALUES (19, N'andy4', N'andy4', N'uxZLcoN7wjBpQvrVm8uUSg==')
SET IDENTITY_INSERT [dbo].[StaffLogin] OFF
GO
ALTER TABLE [dbo].[AddProductManagement]  WITH CHECK ADD FOREIGN KEY([s_id])
REFERENCES [dbo].[StaffLogin] ([s_id])
GO
ALTER TABLE [dbo].[CustomerComment]  WITH CHECK ADD FOREIGN KEY([c_id])
REFERENCES [dbo].[CustomerLogin] ([c_id])
GO
ALTER TABLE [dbo].[Orderlist]  WITH CHECK ADD FOREIGN KEY([c_id])
REFERENCES [dbo].[CustomerLogin] ([c_id])
GO
ALTER TABLE [dbo].[ProductManagement]  WITH CHECK ADD FOREIGN KEY([s_id])
REFERENCES [dbo].[StaffLogin] ([s_id])
GO
ALTER TABLE [dbo].[revenue]  WITH CHECK ADD FOREIGN KEY([c_id])
REFERENCES [dbo].[CustomerLogin] ([c_id])
GO
