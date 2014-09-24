USE [master]
GO
/****** Object:  Database [MS]    Script Date: 09/24/2014 10:12:25 ******/
CREATE DATABASE [MS] ON  PRIMARY 
( NAME = N'MS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\MS.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\MS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[SkillCategory]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SkillCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[JoinDate] [date] NOT NULL,
	[Role] [nchar](10) NULL,
	[IsWebmaster] [nchar](10) NOT NULL,
	[Avatar] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Status] [nchar](10) NULL,
	[Phone] [nchar](20) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[AccountId] [int] NOT NULL,
	[Payment] [float] NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[RatingId] [int] NULL,
	[CommentId] [int] NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaidMediator]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaidMediator](
	[AccountId] [int] NOT NULL,
	[ApplyTimes] [int] NULL,
	[Payment] [float] NOT NULL,
	[MaidId] [int] NOT NULL,
	[FullName] [nvarchar](20) NULL,
 CONSTRAINT [PK_MaidRepresentation] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillType] [nvarchar](50) NOT NULL,
	[SkillValue] [nvarchar](50) NOT NULL,
	[SkillRange] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[AccountId] [int] NOT NULL,
	[FullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Staff_1] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillReference]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillReference](
	[SkillRefId] [int] NOT NULL,
	[Gender] [int] NOT NULL,
	[Cooking] [int] NOT NULL,
	[Babysister] [int] NOT NULL,
 CONSTRAINT [PK_Skill_1] PRIMARY KEY CLUSTERED 
(
	[SkillRefId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maid]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maid](
	[AccountId] [int] NOT NULL,
	[MaidId] [int] IDENTITY(1,1) NOT NULL,
	[MaidName] [nvarchar](50) NOT NULL,
	[MaidMediatorId] [int] NULL,
	[PersonalImage] [nchar](100) NULL,
	[Experience] [float] NULL,
	[Description] [nvarchar](500) NULL,
	[FullName] [nvarchar](20) NULL,
 CONSTRAINT [PK_Maid_1] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobRequest]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobRequest](
	[JobRequestId] [int] IDENTITY(1,1) NOT NULL,
	[SkillRefId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[RecruitmentId] [int] NULL,
	[Status] [int] NOT NULL,
	[PostTime] [datetime] NOT NULL,
	[ExpiredTime] [datetime] NOT NULL,
 CONSTRAINT [PK_JobRequest_1] PRIMARY KEY CLUSTERED 
(
	[JobRequestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobRequest] ON [dbo].[JobRequest] 
(
	[JobRequestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruitment](
	[RecruitmentId] [int] IDENTITY(1,1) NOT NULL,
	[SkillRefId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[JobRequestId] [int] NULL,
	[PostRequestedTime] [datetime] NOT NULL,
	[ExpiredTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Recruitment] PRIMARY KEY CLUSTERED 
(
	[RecruitmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[JobRequestId] [int] NOT NULL,
	[Rate] [float] NOT NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 09/24/2014 10:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[JobRequestId] [int] NOT NULL,
	[PostDate] [datetime] NOT NULL,
	[CommentContent] [nvarchar](500) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Account_isActive]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_isActive]  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_MaidRepresentation_Account]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[MaidMediator]  WITH CHECK ADD  CONSTRAINT [FK_MaidRepresentation_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[MaidMediator] CHECK CONSTRAINT [FK_MaidRepresentation_Account]
GO
/****** Object:  ForeignKey [FK_Skill_SkillCategory]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Skill]  WITH CHECK ADD  CONSTRAINT [FK_Skill_SkillCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[SkillCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[Skill] CHECK CONSTRAINT [FK_Skill_SkillCategory]
GO
/****** Object:  ForeignKey [FK_Staff_Account]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Account]
GO
/****** Object:  ForeignKey [FK_SkillReference_Skill]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_Skill] FOREIGN KEY([Gender])
REFERENCES [dbo].[Skill] ([SkillId])
GO
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_Skill]
GO
/****** Object:  ForeignKey [FK_SkillReference_Skill1]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_Skill1] FOREIGN KEY([Cooking])
REFERENCES [dbo].[Skill] ([SkillId])
GO
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_Skill1]
GO
/****** Object:  ForeignKey [FK_SkillReference_Skill2]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_Skill2] FOREIGN KEY([Babysister])
REFERENCES [dbo].[Skill] ([SkillId])
GO
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_Skill2]
GO
/****** Object:  ForeignKey [FK_Maid_Account]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Maid]  WITH CHECK ADD  CONSTRAINT [FK_Maid_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
ALTER TABLE [dbo].[Maid] CHECK CONSTRAINT [FK_Maid_Account]
GO
/****** Object:  ForeignKey [FK_Maid_MaidMediator]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Maid]  WITH CHECK ADD  CONSTRAINT [FK_Maid_MaidMediator] FOREIGN KEY([MaidMediatorId])
REFERENCES [dbo].[MaidMediator] ([AccountId])
GO
ALTER TABLE [dbo].[Maid] CHECK CONSTRAINT [FK_Maid_MaidMediator]
GO
/****** Object:  ForeignKey [FK_JobRequest_Maid]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[JobRequest]  WITH CHECK ADD  CONSTRAINT [FK_JobRequest_Maid] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Maid] ([AccountId])
GO
ALTER TABLE [dbo].[JobRequest] CHECK CONSTRAINT [FK_JobRequest_Maid]
GO
/****** Object:  ForeignKey [FK_JobRequest_MaidRepresentation]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[JobRequest]  WITH CHECK ADD  CONSTRAINT [FK_JobRequest_MaidRepresentation] FOREIGN KEY([AccountId])
REFERENCES [dbo].[MaidMediator] ([AccountId])
GO
ALTER TABLE [dbo].[JobRequest] CHECK CONSTRAINT [FK_JobRequest_MaidRepresentation]
GO
/****** Object:  ForeignKey [FK_JobRequest_Staff]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[JobRequest]  WITH CHECK ADD  CONSTRAINT [FK_JobRequest_Staff] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Staff] ([AccountId])
GO
ALTER TABLE [dbo].[JobRequest] CHECK CONSTRAINT [FK_JobRequest_Staff]
GO
/****** Object:  ForeignKey [FK_Recruitment_Customer]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([AccountId])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_Customer]
GO
/****** Object:  ForeignKey [FK_Recruitment_JobRequest]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_JobRequest] FOREIGN KEY([JobRequestId])
REFERENCES [dbo].[JobRequest] ([JobRequestId])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_JobRequest]
GO
/****** Object:  ForeignKey [FK_Recruitment_SkillReference]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_SkillReference] FOREIGN KEY([SkillRefId])
REFERENCES [dbo].[SkillReference] ([SkillRefId])
GO
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_SkillReference]
GO
/****** Object:  ForeignKey [FK_Rating_Customer]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([AccountId])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Customer]
GO
/****** Object:  ForeignKey [FK_Rating_JobRequest]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_JobRequest] FOREIGN KEY([JobRequestId])
REFERENCES [dbo].[JobRequest] ([JobRequestId])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_JobRequest]
GO
/****** Object:  ForeignKey [FK_Comment_Customer]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([AccountId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Customer]
GO
/****** Object:  ForeignKey [FK_Comment_JobRequest]    Script Date: 09/24/2014 10:12:27 ******/
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_JobRequest] FOREIGN KEY([JobRequestId])
REFERENCES [dbo].[JobRequest] ([JobRequestId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_JobRequest]
GO
