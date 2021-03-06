USE [Customers]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/4/2022 3:37:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customers] ([Id], [Name], [Age], [Address]) VALUES (1, N'Tony', 30, N'Paris')
INSERT [dbo].[Customers] ([Id], [Name], [Age], [Address]) VALUES (2, N'Linda', 22, N'London')
GO
