USE [EmployeeDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 29/12/2021 04:39:46 ******/
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
/****** Object:  Table [dbo].[Employees]    Script Date: 29/12/2021 04:39:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211229012846_InitialMigration', N'5.0.0')
GO
INSERT [dbo].[Employees] ([id], [Name]) VALUES (N'b141a889-312e-430e-ae5b-20dd717c02e8', N'Oren')
INSERT [dbo].[Employees] ([id], [Name]) VALUES (N'1100fe33-2345-4963-9405-3a41c102a503', N'Daniel')
INSERT [dbo].[Employees] ([id], [Name]) VALUES (N'8e7c4be6-c89a-4788-b974-7e7846a6a55d', N'Natia')
INSERT [dbo].[Employees] ([id], [Name]) VALUES (N'24991094-6191-4590-9eda-dbf2ff0c51d7', N'Mariam')
GO
