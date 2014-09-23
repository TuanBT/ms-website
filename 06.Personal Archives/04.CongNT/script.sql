USE [master]
GO
/****** Object:  Database [MS]    Script Date: 09/23/2014 08:46:45 ******/
CREATE DATABASE [MS] ON  PRIMARY 
( NAME = N'MS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.CONGNTSE60920\MSSQL\DATA\MS.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.CONGNTSE60920\MSSQL\DATA\MS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MS] SET ARITHABORT OFF
GO
ALTER DATABASE [MS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MS] SET  DISABLE_BROKER
GO
ALTER DATABASE [MS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MS] SET  READ_WRITE
GO
ALTER DATABASE [MS] SET RECOVERY FULL
GO
ALTER DATABASE [MS] SET  MULTI_USER
GO
ALTER DATABASE [MS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MS] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'MS', N'ON'
GO
USE [MS]
GO
/****** Object:  Table [dbo].[SkillReference]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillReference](
	[SkillRefId] [int] IDENTITY(1,1) NOT NULL,
	[SkillGroup] [nvarchar](50) NOT NULL,
	[SkillValue] [nvarchar](50) NOT NULL,
	[SkillRange] [float] NOT NULL,
 CONSTRAINT [PK_SkillReference] PRIMARY KEY CLUSTERED 
(
	[SkillRefId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[JoinDate] [date] NOT NULL,
	[Avatar] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [int] NOT NULL,
	[Cooking] [int] NOT NULL,
	[Babysister] [int] NOT NULL,
	[SkillRefId] [int] NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Webmaster]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Webmaster](
	[AccountId] [int] NOT NULL,
	[FullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Webmaster_1] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[AccountId] [int] NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Staff_1] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[AccountId] [int] NOT NULL,
	[Payment] [float] NOT NULL,
	[SkillId] [int] NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaidRepresentation]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaidRepresentation](
	[AccountId] [int] NOT NULL,
	[PersonalImage] [nvarchar](50) NOT NULL,
	[Experience] [float] NULL,
	[Description] [nvarchar](500) NULL,
	[ApplyTimes] [int] NULL,
	[SkillId] [int] NOT NULL,
	[Payment] [float] NOT NULL,
 CONSTRAINT [PK_MaidRepresentation] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitment](
	[SkillId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[RequestedDate] [date] NOT NULL,
	[Payment] [float] NOT NULL,
	[ExpiredDate] [datetime] NOT NULL,
	[Gender] [int] NULL,
	[Age] [int] NULL,
	[Experience] [float] NULL,
	[Time] [datetime] NOT NULL,
 CONSTRAINT [PK_Recruitment_1] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[CustomerId] [int] NOT NULL,
	[MaidId] [int] NOT NULL,
	[Rate] [float] NOT NULL,
 CONSTRAINT [PK_Rating_1] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[MaidId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobRequest]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobRequest](
	[JobRequestId] [int] NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[AccountId] [int] NOT NULL,
	[SkillId] [int] NULL,
	[ExpiredDate] [datetime] NOT NULL,
	[StartDate] [datetime] NOT NULL,
 CONSTRAINT [PK_JobRequest] PRIMARY KEY CLUSTERED 
(
	[JobRequestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 09/23/2014 08:46:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CustomerId] [int] NOT NULL,
	[MaidId] [int] NOT NULL,
	[PostDate] [datetime] NOT NULL,
	[CommentContent] [nvarchar](500) NULL,
 CONSTRAINT [PK_Comment_1] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC,
	[MaidId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Account_isActive]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_isActive]  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  ForeignKey [FK_Account_Roles]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Roles]
GO
/****** Object:  ForeignKey [FK_Skill_SkillReference]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Skill]  WITH CHECK ADD  CONSTRAINT [FK_Skill_SkillReference] FOREIGN KEY([SkillRefId])
REFERENCES [dbo].[SkillReference] ([SkillRefId])
GO
ALTER TABLE [dbo].[Skill] CHECK CONSTRAINT [FK_Skill_SkillReference]
GO
/****** Object:  ForeignKey [FK_Webmaster_Account]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Webmaster]  WITH CHECK ADD  CONSTRAINT [FK_Webmaster_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[Webmaster] CHECK CONSTRAINT [FK_Webmaster_Account]
GO
/****** Object:  ForeignKey [FK_Staff_Account]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Account]
GO
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_MaidRepresentation_Account]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[MaidRepresentation]  WITH CHECK ADD  CONSTRAINT [FK_MaidRepresentation_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[MaidRepresentation] CHECK CONSTRAINT [FK_MaidRepresentation_Account]
GO
/****** Object:  ForeignKey [FK_Recruitment_Customer]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([AccountId])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_Customer]
GO
/****** Object:  ForeignKey [FK_Recruitment_Skill]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_Skill] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skill] ([SkillId])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_Skill]
GO
/****** Object:  ForeignKey [FK_Rating_Customer]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([AccountId])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Customer]
GO
/****** Object:  ForeignKey [FK_JobRequest_MaidRepresentation]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[JobRequest]  WITH CHECK ADD  CONSTRAINT [FK_JobRequest_MaidRepresentation] FOREIGN KEY([AccountId])
REFERENCES [dbo].[MaidRepresentation] ([AccountId])
GO
ALTER TABLE [dbo].[JobRequest] CHECK CONSTRAINT [FK_JobRequest_MaidRepresentation]
GO
/****** Object:  ForeignKey [FK_Comment_Customer]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([AccountId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Customer]
GO
/****** Object:  ForeignKey [FK_Comment_MaidRepresentation]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_MaidRepresentation] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[MaidRepresentation] ([AccountId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_MaidRepresentation]
GO
/****** Object:  ForeignKey [FK_Comment_MaidRepresentation1]    Script Date: 09/23/2014 08:46:46 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_MaidRepresentation1] FOREIGN KEY([MaidId])
REFERENCES [dbo].[MaidRepresentation] ([AccountId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_MaidRepresentation1]
GO
