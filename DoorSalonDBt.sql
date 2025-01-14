USE [DoorSalon5]
GO
/****** Object:  Table [dbo].[Door]    Script Date: 19.06.2024 9:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Door](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[QuantityInStock] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[DoorTypeId] [int] NOT NULL,
	[ManufacturerId] [int] NOT NULL,
	[Dimensions] [nvarchar](25) NOT NULL,
	[DoorStyleId] [int] NOT NULL,
	[Weight] [float] NOT NULL,
	[MaterialId] [int] NOT NULL,
	[Photo] [nvarchar](110) NULL,
 CONSTRAINT [PK_Door] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoorStyle]    Script Date: 19.06.2024 9:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoorStyle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoorStyle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoorType]    Script Date: 19.06.2024 9:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoorType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoorType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 19.06.2024 9:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[PhoneNumber] [varchar](11) NOT NULL,
	[Email] [varchar](50) NULL,
	[Website] [nvarchar](100) NULL,
	[Photo] [nvarchar](100) NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 19.06.2024 9:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supply]    Script Date: 19.06.2024 9:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supply](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerId] [int] NOT NULL,
	[OrderDate] [smalldatetime] NOT NULL,
	[DeliveryDate] [smalldatetime] NULL,
	[OrderStatusId] [int] NOT NULL,
	[DoorId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Supply] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplyStatus]    Script Date: 19.06.2024 9:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplyStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19.06.2024 9:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](15) NOT NULL,
	[Password] [nvarchar](25) NOT NULL,
	[UserRoleId] [int] NOT NULL,
	[Phone] [varchar](16) NOT NULL,
	[Email] [varchar](25) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 19.06.2024 9:50:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Door] ON 

INSERT [dbo].[Door] ([Id], [Title], [Description], [QuantityInStock], [Price], [DoorTypeId], [ManufacturerId], [Dimensions], [DoorStyleId], [Weight], [MaterialId], [Photo]) VALUES (4, N'Модерн Дг-500 ива светлая глухая', N'Изготовлен по принципу «сэндвича» из высококачественного переклеенного массива сосны и MDF. Покрываются экошпоном немецкой фирмы.', 5, 9999, 1, 1, N'600х1900', 1, 25, 1, NULL)
INSERT [dbo].[Door] ([Id], [Title], [Description], [QuantityInStock], [Price], [DoorTypeId], [ManufacturerId], [Dimensions], [DoorStyleId], [Weight], [MaterialId], [Photo]) VALUES (5, N'Топ за свои деньги', N'Высококачественное изделие изготовленное на технологичном и современном заводе Lego, кароче топ за свои деньги', 3, 50, 2, 2, N'60x190', 1, 1, 1, NULL)
INSERT [dbo].[Door] ([Id], [Title], [Description], [QuantityInStock], [Price], [DoorTypeId], [ManufacturerId], [Dimensions], [DoorStyleId], [Weight], [MaterialId], [Photo]) VALUES (1006, N'333', N'333', 3, 3, 2, 2, N'3', 1, 3, 1, NULL)
SET IDENTITY_INSERT [dbo].[Door] OFF
GO
SET IDENTITY_INSERT [dbo].[DoorStyle] ON 

INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (1, N'Классика')
INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (2, N'Лофт')
INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (3, N'Модерн')
INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (4, N'Хай-тек')
INSERT [dbo].[DoorStyle] ([Id], [Title]) VALUES (5, N'1')
SET IDENTITY_INSERT [dbo].[DoorStyle] OFF
GO
SET IDENTITY_INSERT [dbo].[DoorType] ON 

INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (1, N'Массив дерева')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (2, N'Шпон')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (3, N'ПВХ пленка')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (4, N'Ламинированные')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (5, N'Складные')
INSERT [dbo].[DoorType] ([Id], [Title]) VALUES (7, N'3')
SET IDENTITY_INSERT [dbo].[DoorType] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([Id], [Title], [Address], [PhoneNumber], [Email], [Website], [Photo]) VALUES (1, N'Zetdoors', N'Чувашская респ., Новочебоксарск, Промышленная 73 Р', N'89662497472', N'zetdoors@mail.ru', N'zetdoors.ru', NULL)
INSERT [dbo].[Manufacturer] ([Id], [Title], [Address], [PhoneNumber], [Email], [Website], [Photo]) VALUES (2, N'Фабрика дверей «ТЭМП»', N'Марий Эл респ., Йошкар-Ола, Медведево, Чехова 8Б', N'89379372909', N'dveri@temp-doors.ru', N'temp-doors.ru', NULL)
INSERT [dbo].[Manufacturer] ([Id], [Title], [Address], [PhoneNumber], [Email], [Website], [Photo]) VALUES (3, N'ООО ТК «Руспрофиль»', N'Челябинская область, Челябинск, улица Корабельная 15 к4', N'89222301333', N'info@dveri.ru.com', N'dveri.ru.com', NULL)
INSERT [dbo].[Manufacturer] ([Id], [Title], [Address], [PhoneNumber], [Email], [Website], [Photo]) VALUES (4, N'Фабрика дверей «Двери ВиД»', N'Свердловская область, Арамиль, Чапаева, 6', N'89638519193', N'dveri.vid@mail.ru', N'www.dveri-aramil.ru', N'11670591-dvieri-vid-aramil-540x480.jpg')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([Id], [Title]) VALUES (1, N'Дуб')
INSERT [dbo].[Material] ([Id], [Title]) VALUES (4, N'Тамбурат')
INSERT [dbo].[Material] ([Id], [Title]) VALUES (9, N'52')
INSERT [dbo].[Material] ([Id], [Title]) VALUES (10, N'Тест52Тест52Тест')
INSERT [dbo].[Material] ([Id], [Title]) VALUES (12, N'фффффффф')
INSERT [dbo].[Material] ([Id], [Title]) VALUES (13, N'zzzzzzzz')
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[Supply] ON 

INSERT [dbo].[Supply] ([Id], [ManufacturerId], [OrderDate], [DeliveryDate], [OrderStatusId], [DoorId], [Quantity], [Price], [UserId]) VALUES (4, 1, CAST(N'2004-10-10T00:00:00' AS SmallDateTime), NULL, 1, 4, 35, 1000, 2)
SET IDENTITY_INSERT [dbo].[Supply] OFF
GO
SET IDENTITY_INSERT [dbo].[SupplyStatus] ON 

INSERT [dbo].[SupplyStatus] ([Id], [Title]) VALUES (1, N'Сборка')
INSERT [dbo].[SupplyStatus] ([Id], [Title]) VALUES (2, N'Доставка')
INSERT [dbo].[SupplyStatus] ([Id], [Title]) VALUES (3, N'Доставлен')
SET IDENTITY_INSERT [dbo].[SupplyStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [UserRoleId], [Phone], [Email], [FirstName], [LastName], [Surname], [Photo]) VALUES (1, N'1', N'1', 1, N'123456789', N'admin@Mail.ru', N'Admin', N'Admin', NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [UserRoleId], [Phone], [Email], [FirstName], [LastName], [Surname], [Photo]) VALUES (2, N'2', N'2', 1, N'8800953535', N'Anastasia@mail.ru', N'Анастасия', N'Мамонова', NULL, N'Photo1.png')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [Title]) VALUES (1, N'Администратор')
INSERT [dbo].[UserRole] ([Id], [Title]) VALUES (2, N'Пользователь')
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_DoorStyle] FOREIGN KEY([DoorStyleId])
REFERENCES [dbo].[DoorStyle] ([Id])
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_DoorStyle]
GO
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_DoorType] FOREIGN KEY([DoorTypeId])
REFERENCES [dbo].[DoorType] ([Id])
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_DoorType]
GO
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_Manufacturer] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([Id])
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_Manufacturer]
GO
ALTER TABLE [dbo].[Door]  WITH CHECK ADD  CONSTRAINT [FK_Door_Material] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[Door] CHECK CONSTRAINT [FK_Door_Material]
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD  CONSTRAINT [FK_Supply_Door] FOREIGN KEY([DoorId])
REFERENCES [dbo].[Door] ([Id])
GO
ALTER TABLE [dbo].[Supply] CHECK CONSTRAINT [FK_Supply_Door]
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD  CONSTRAINT [FK_Supply_Manufacturer] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturer] ([Id])
GO
ALTER TABLE [dbo].[Supply] CHECK CONSTRAINT [FK_Supply_Manufacturer]
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD  CONSTRAINT [FK_Supply_OrderStatus] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[SupplyStatus] ([Id])
GO
ALTER TABLE [dbo].[Supply] CHECK CONSTRAINT [FK_Supply_OrderStatus]
GO
ALTER TABLE [dbo].[Supply]  WITH CHECK ADD  CONSTRAINT [FK_Supply_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Supply] CHECK CONSTRAINT [FK_Supply_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[UserRole] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO
