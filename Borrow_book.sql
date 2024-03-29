USE [Test]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 14.02.2024 9:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[book_id] [int] NOT NULL,
	[book_name] [varchar](100) NULL,
	[student_id] [int] NULL,
	[borrowed_date] [date] NULL,
	[returned_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 14.02.2024 9:41:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[student_id] [int] NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Books] ([book_id], [book_name], [student_id], [borrowed_date], [returned_date]) VALUES (1, N'Детские сказки', 1, CAST(N'2023-01-15' AS Date), CAST(N'2023-02-10' AS Date))
INSERT [dbo].[Books] ([book_id], [book_name], [student_id], [borrowed_date], [returned_date]) VALUES (2, N'Мы (Замятин)', 3, CAST(N'2023-02-20' AS Date), NULL)
INSERT [dbo].[Books] ([book_id], [book_name], [student_id], [borrowed_date], [returned_date]) VALUES (3, N'1984', 3, CAST(N'2023-03-10' AS Date), CAST(N'2023-04-05' AS Date))
INSERT [dbo].[Books] ([book_id], [book_name], [student_id], [borrowed_date], [returned_date]) VALUES (4, N'451 градус по Фаренгейту', 2, CAST(N'2023-04-15' AS Date), NULL)
GO
INSERT [dbo].[Students] ([student_id], [first_name], [last_name]) VALUES (1, N'Иван', N'Золо')
INSERT [dbo].[Students] ([student_id], [first_name], [last_name]) VALUES (2, N'Олег', N'Добрый')
INSERT [dbo].[Students] ([student_id], [first_name], [last_name]) VALUES (3, N'Лэйн', N'Ивакура')
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([student_id])
GO
