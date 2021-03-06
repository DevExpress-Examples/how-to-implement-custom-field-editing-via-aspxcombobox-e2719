USE [master]
GO
/****** Object:  Database [CarsXtraScheduling]    Script Date: 03/05/2012 19:34:41 ******/
CREATE DATABASE [CarsXtraScheduling] ON  PRIMARY 
( NAME = N'CarsXtraScheduling', FILENAME = N'C:\DATABASE\CarsXtraScheduling.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CarsXtraScheduling_log', FILENAME = N'C:\DATABASE\CarsXtraScheduling_log.LDF' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CarsXtraScheduling] SET COMPATIBILITY_LEVEL = 80
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarsXtraScheduling].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarsXtraScheduling] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET ARITHABORT OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET AUTO_CLOSE ON
GO
ALTER DATABASE [CarsXtraScheduling] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CarsXtraScheduling] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CarsXtraScheduling] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CarsXtraScheduling] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET  DISABLE_BROKER
GO
ALTER DATABASE [CarsXtraScheduling] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CarsXtraScheduling] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CarsXtraScheduling] SET  READ_WRITE
GO
ALTER DATABASE [CarsXtraScheduling] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CarsXtraScheduling] SET  MULTI_USER
GO
ALTER DATABASE [CarsXtraScheduling] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CarsXtraScheduling] SET DB_CHAINING OFF
GO
USE [CarsXtraScheduling]
GO
/****** Object:  Table [dbo].[CarScheduling]    Script Date: 03/05/2012 19:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarScheduling](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CarId] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[Status] [int] NULL,
	[Subject] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Label] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Location] [nvarchar](50) NULL,
	[AllDay] [bit] NOT NULL,
	[EventType] [int] NULL,
	[RecurrenceInfo] [nvarchar](max) NULL,
	[ReminderInfo] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_CarScheduling] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CarScheduling] ON
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (2, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="5" />
</ResourceIds>', NULL, 3, N'Mr.Brown', N'Rent this car ', 2, CAST(0x00009A5D00B54640 AS DateTime), CAST(0x00009A5D00EEF3E0 AS DateTime), N'city', 0, 0, NULL, N'', 0)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (3, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="1" />
</ResourceIds>', NULL, 0, N'Repair', N'Scheduled repair of this car', 4, CAST(0x00009A5F00000000 AS DateTime), CAST(0x00009A6100000000 AS DateTime), N'Service Center', 1, 0, NULL, N'', 0)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (4, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="12" />
</ResourceIds>', NULL, 3, N'Mr.White', N'Rent this car', 3, CAST(0x00009A5E00A4CB80 AS DateTime), CAST(0x00009A5E011826C0 AS DateTime), N'city', 0, 0, NULL, N'', 0)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (5, N'1', NULL, 4, N'Check up', N'Inspection', 0, CAST(0x00009A5B00C5C100 AS DateTime), CAST(0x00009A5B0128A180 AS DateTime), N'Garage', 0, 3, N'<?xml version="1.0" encoding="us-ascii"?>
<RecurrenceInfo Id="b563d782-9520-4f29-a081-6d7c49307a73" Index="0" />', NULL, 0)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (6, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="9" />
<ResourceId Type="System.Int32" Value="3" />
<ResourceId Type="System.Int32" Value="5" />
</ResourceIds>', NULL, 2, N'Wash', N'Wash this car in the garage', 2, CAST(0x00009A56010FE960 AS DateTime), CAST(0x00009A560128A180 AS DateTime), N'Garage', 0, 1, N'<RecurrenceInfo Start="03/05/2008 16:30:00" End="04/01/2008 00:00:00" WeekDays="62" Id="975889a8-ea37-4625-a1ec-0fb2806199e2" OccurrenceCount="20" Range="2" Type="1" />', NULL, 5)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (11, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="1" />
</ResourceIds>', NULL, 4, N'Check up', N'Check up after maintenance', 5, CAST(0x00009A60014159A0 AS DateTime), CAST(0x00009A600172C9E0 AS DateTime), N'Service Center', 0, 0, NULL, N'', 0)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (13, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="7" />
</ResourceIds>', NULL, 3, N'Mr.Green', N'Rent this car for the all day', 3, CAST(0x00009A5C00000000 AS DateTime), CAST(0x00009A5D00000000 AS DateTime), N'city', 1, 0, NULL, N'', 0)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (14, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="1" />
<ResourceId Type="System.Int32" Value="4" />
<ResourceId Type="System.Int32" Value="9" />
<ResourceId Type="System.Int32" Value="14" />
</ResourceIds>', NULL, 1, N'Wash', N'Wash this car in the garage', 2, CAST(0x00009A5C00735B40 AS DateTime), CAST(0x00009A5C009450C0 AS DateTime), N'Garage', 0, 1, N'<RecurrenceInfo Start="03/11/2008 07:00:00" End="03/24/2008 01:00:00" WeekDays="42" Id="51c81018-53fa-4d10-925f-2ed7f8408c75" Month="12" Range="2" Type="1" />', N'', 0)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (15, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="4" />
</ResourceIds>', NULL, 4, N'Mrs.Black', N'Rent this car', 3, CAST(0x00009A5C00A4CB80 AS DateTime), CAST(0x00009A5C00BD83A0 AS DateTime), N'out-of-town', 0, 0, NULL, N'', 0)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (16, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="6" />
</ResourceIds>', NULL, 4, N'Mrs.Black', N'Rent this car', 3, CAST(0x00009A5D00D63BC0 AS DateTime), CAST(0x00009A5D00EEF3E0 AS DateTime), N'out-of-town', 0, 0, NULL, N'', 0)
INSERT [dbo].[CarScheduling] ([ID], [CarId], [UserId], [Status], [Subject], [Description], [Label], [StartTime], [EndTime], [Location], [AllDay], [EventType], [RecurrenceInfo], [ReminderInfo], [Price]) VALUES (17, N'<ResourceIds>
<ResourceId Type="System.Int32" Value="2" />
</ResourceIds>', NULL, 4, N'Mrs.Black', N'Rent this car', 3, CAST(0x00009A5E00FF6EA0 AS DateTime), CAST(0x00009A5F00E6B680 AS DateTime), N'out-of-town', 0, 0, NULL, N'', 0)
SET IDENTITY_INSERT [dbo].[CarScheduling] OFF
/****** Object:  Table [dbo].[Cars]    Script Date: 03/05/2012 19:34:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[ID] [int] NOT NULL,
	[Trademark] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[HP] [smallint] NULL,
	[Liter] [float] NULL,
	[Cyl] [tinyint] NULL,
	[TransmissSpeedCount] [tinyint] NULL,
	[TransmissAutomatic] [nvarchar](3) NULL,
	[MPG_City] [tinyint] NULL,
	[MPG_Highway] [tinyint] NULL,
	[Category] [nvarchar](7) NULL,
	[Hyperlink] [nvarchar](50) NULL,
	[Price] [money] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (1, N'Mercedes-Benz', N'SL500 Roadster', 302, 4.966, 8, 5, N'Yes', 16, 23, N'SPORTS', N'http://www.mercedes.com', 83800.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (2, N'Mercedes-Benz', N'CLK55 AMG Cabriolet', 342, 5.439, 8, 5, N'Yes', 17, 24, N'SPORTS', N'http://www.mercedes.com', 79645.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (4, N'BMW', N'530i', 225, 3, 6, 5, N'No', 21, 30, N'SALOON', N'http://www.bmw.com', 39450.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (7, N'Cadillac ', N'Seville', 275, 4.6, 8, 4, N'Yes', 18, 27, N'SALOON', N'http://www.cadillac.com', 49600.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (8, N'Cadillac ', N'DeVille', 275, 4.6, 8, 4, N'Yes', 18, 27, N'SALOON', N'http://www.cadillac.com', 47780.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (9, N'Lexus', N'LS430', 290, 4.3, 8, 5, N'Yes', 18, 25, N'SALOON', N'http://www.lexus.com', 54900.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (3, N'Mercedes-Benz', N'C230 Kompressor Sport Coupe', 189, 1.796, 4, 5, N'Yes', 21, 28, N'SPORTS', N'http://www.mercedes.com', 25600.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (10, N'Lexus', N'GS 430', 300, 4.3, 8, 5, N'Yes', 18, 23, N'SALOON', N'http://www.lexus.com', 41242.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (11, N'Ford', N'Ranger FX-4', 135, 2.3, 4, 5, N'Yes', 21, 25, N'TRUCK', N'http://www.ford.com', 12565.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (12, N'Dodge', N'Ram 1500', 215, 3.7, 6, 4, N'Yes', 15, 19, N'TRUCK', N'http://www.dodge.com', 17315.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (13, N'GMC', N'Siera Quadrasteer', 200, 4.3, 6, 4, N'Yes', 15, 20, N'TRUCK', N'http://www.gmc.com', 17748.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (5, N'Rolls-Royce', N'Corniche', 325, 6.75, 8, 4, N'Yes', 11, 16, N'SALOON', N'http://www.rollsroyce.com', 370485.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (6, N'Jaguar', N'S-Type 3.0', 235, 3, 6, 5, N'No', 18, 25, N'SALOON', N'http://www.jaguar.com', 44320.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (14, N'Nissan', N'Crew Cab SE', 143, 2.4, 4, 4, N'Yes', 20, 23, N'TRUCK', N'http://www.NissanDriven.com', 12800.0000)
INSERT [dbo].[Cars] ([ID], [Trademark], [Model], [HP], [Liter], [Cyl], [TransmissSpeedCount], [TransmissAutomatic], [MPG_City], [MPG_Highway], [Category], [Hyperlink], [Price]) VALUES (15, N'Toyota', N'Tacoma S-Runner', 190, 3.4, 6, 5, N'No', 18, 22, N'TRUCK', N'http://www.toyota.com', 20000.0000)
/****** Object:  Default [DF_CarScheduling_Price]    Script Date: 03/05/2012 19:34:41 ******/
ALTER TABLE [dbo].[CarScheduling] ADD  CONSTRAINT [DF_CarScheduling_Price]  DEFAULT ((0.0)) FOR [Price]
GO
