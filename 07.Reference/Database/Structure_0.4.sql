USE [master]
GO
/****** Object:  Database [MS]    Script Date: 10/15/2014 09:28:00 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'MS')
BEGIN
CREATE DATABASE [MS] ON  PRIMARY 
( NAME = N'MS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\MS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\MS_log.ldf' , SIZE = 3072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
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
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_MaidRepresentation_Account]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaidRepresentation_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaidMediator]'))
ALTER TABLE [dbo].[MaidMediator] DROP CONSTRAINT [FK_MaidRepresentation_Account]
GO
/****** Object:  ForeignKey [FK_SkillInstance_SkillCategory]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillInstance_SkillCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillInstance]'))
ALTER TABLE [dbo].[SkillInstance] DROP CONSTRAINT [FK_SkillInstance_SkillCategory]
GO
/****** Object:  ForeignKey [FK_Staff_Account]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Staff_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Staff]'))
ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Account]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance1]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance1]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance1]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance10]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance10]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance10]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance11]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance11]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance11]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance12]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance12]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance12]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance13]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance13]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance13]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance14]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance14]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance14]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance15]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance15]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance15]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance16]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance16]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance16]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance17]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance17]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance17]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance18]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance18]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance18]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance19]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance19]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance19]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance2]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance2]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance20]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance20]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance20]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance3]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance3]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance3]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance4]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance4]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance4]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance5]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance5]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance5]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance6]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance6]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance7]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance7]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance8]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance8]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance8]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance9]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance9]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance9]
GO
/****** Object:  ForeignKey [FK_Maid_MaidMediator1]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] DROP CONSTRAINT [FK_Maid_MaidMediator1]
GO
/****** Object:  ForeignKey [FK_Maid_Staff]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] DROP CONSTRAINT [FK_Maid_Staff]
GO
/****** Object:  ForeignKey [FK_JobRequest_Maid]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Maid]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_Maid]
GO
/****** Object:  ForeignKey [FK_JobRequest_MaidMediator1]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_MaidMediator1]
GO
/****** Object:  ForeignKey [FK_JobRequest_SkillReference]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_SkillReference]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_SkillReference]
GO
/****** Object:  ForeignKey [FK_JobRequest_Staff]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_Staff]
GO
/****** Object:  ForeignKey [FK_Recruitment_Customer]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] DROP CONSTRAINT [FK_Recruitment_Customer]
GO
/****** Object:  ForeignKey [FK_Recruitment_SkillReference1]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_SkillReference1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] DROP CONSTRAINT [FK_Recruitment_SkillReference1]
GO
/****** Object:  ForeignKey [FK_Rating_Customer]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [FK_Rating_Customer]
GO
/****** Object:  ForeignKey [FK_Rating_JobRequest]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [FK_Rating_JobRequest]
GO
/****** Object:  ForeignKey [FK_Comment_Customer]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_Customer]
GO
/****** Object:  ForeignKey [FK_Comment_JobRequest]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_JobRequest]
GO
/****** Object:  ForeignKey [FK_Apply_JobRequest]    Script Date: 10/15/2014 09:28:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] DROP CONSTRAINT [FK_Apply_JobRequest]
GO
/****** Object:  ForeignKey [FK_Apply_Recruitment]    Script Date: 10/15/2014 09:28:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_Recruitment]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] DROP CONSTRAINT [FK_Apply_Recruitment]
GO
/****** Object:  Table [dbo].[Apply]    Script Date: 10/15/2014 09:28:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] DROP CONSTRAINT [FK_Apply_JobRequest]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_Recruitment]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] DROP CONSTRAINT [FK_Apply_Recruitment]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Apply]') AND type in (N'U'))
DROP TABLE [dbo].[Apply]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_Customer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_JobRequest]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
DROP TABLE [dbo].[Comment]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [FK_Rating_Customer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [FK_Rating_JobRequest]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rating]') AND type in (N'U'))
DROP TABLE [dbo].[Rating]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] DROP CONSTRAINT [FK_Recruitment_Customer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_SkillReference1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] DROP CONSTRAINT [FK_Recruitment_SkillReference1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recruitment]') AND type in (N'U'))
DROP TABLE [dbo].[Recruitment]
GO
/****** Object:  Table [dbo].[JobRequest]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Maid]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_Maid]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_MaidMediator1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_SkillReference]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_SkillReference]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_Staff]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JobRequest]') AND type in (N'U'))
DROP TABLE [dbo].[JobRequest]
GO
/****** Object:  Table [dbo].[Maid]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] DROP CONSTRAINT [FK_Maid_MaidMediator1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] DROP CONSTRAINT [FK_Maid_Staff]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Maid]') AND type in (N'U'))
DROP TABLE [dbo].[Maid]
GO
/****** Object:  Table [dbo].[SkillReference]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance1]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance10]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance10]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance11]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance11]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance12]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance12]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance13]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance13]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance14]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance14]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance15]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance15]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance16]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance16]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance17]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance17]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance18]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance18]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance19]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance19]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance20]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance20]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance3]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance4]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance4]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance5]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance5]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance6]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance7]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance8]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance8]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance9]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SkillReference]') AND type in (N'U'))
DROP TABLE [dbo].[SkillReference]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Staff_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Staff]'))
ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Account]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Staff]') AND type in (N'U'))
DROP TABLE [dbo].[Staff]
GO
/****** Object:  Table [dbo].[SkillInstance]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillInstance_SkillCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillInstance]'))
ALTER TABLE [dbo].[SkillInstance] DROP CONSTRAINT [FK_SkillInstance_SkillCategory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SkillInstance]') AND type in (N'U'))
DROP TABLE [dbo].[SkillInstance]
GO
/****** Object:  Table [dbo].[MaidMediator]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaidRepresentation_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaidMediator]'))
ALTER TABLE [dbo].[MaidMediator] DROP CONSTRAINT [FK_MaidRepresentation_Account]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MaidMediator]') AND type in (N'U'))
DROP TABLE [dbo].[MaidMediator]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/15/2014 09:28:04 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_Account]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/15/2014 09:28:03 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Account_isActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [DF_Account_isActive]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[SkillCategory]    Script Date: 10/15/2014 09:28:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SkillCategory]') AND type in (N'U'))
DROP TABLE [dbo].[SkillCategory]
GO
/****** Object:  Table [dbo].[SkillCategory]    Script Date: 10/15/2014 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SkillCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SkillCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SkillCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/15/2014 09:28:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Account_isActive]  DEFAULT ((0)),
	[JoinDate] [date] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[IsWebmaster] [bit] NOT NULL,
	[Avatar] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[AccountId] [int] NOT NULL,
	[Payment] [float] NOT NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MaidMediator]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MaidMediator]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MaidMediator](
	[AccountId] [int] NOT NULL,
	[Payment] [float] NOT NULL,
 CONSTRAINT [PK_MaidRepresentation] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SkillInstance]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SkillInstance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SkillInstance](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SkillName] [nvarchar](50) NOT NULL,
	[SkillString] [nvarchar](50) NULL,
	[SkillNormallized] [int] NOT NULL,
	[SkillStringValue] [float] NOT NULL,
	[SkillNameVietnam] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Staff]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Staff](
	[AccountId] [int] NOT NULL,
 CONSTRAINT [PK_Staff_1] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SkillReference]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SkillReference]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SkillReference](
	[SkillRefId] [int] IDENTITY(1,1) NOT NULL,
	[Gender] [int] NULL,
	[Age] [int] NULL,
	[LanguageEnglish] [int] NULL,
	[LanguageChinese] [int] NULL,
	[LanguageJapanese] [int] NULL,
	[LanguageKorean] [int] NULL,
	[Experience] [int] NULL,
	[Hometown] [int] NULL,
	[Address] [int] NULL,
	[Married] [int] NULL,
	[Stay] [int] NULL,
	[Salary] [int] NULL,
	[Work] [int] NULL,
	[SickCare] [int] NULL,
	[OldCare] [int] NULL,
	[BabySister] [int] NULL,
	[DisabilityCare] [int] NULL,
	[BonsaiCare] [int] NULL,
	[Cooking] [int] NULL,
	[Washing] [int] NULL,
	[CleanHouse] [int] NULL,
	[Type] [int] NOT NULL,
	[Group] [int] NULL,
 CONSTRAINT [PK_Skill_1] PRIMARY KEY CLUSTERED 
(
	[SkillRefId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Maid]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Maid]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Maid](
	[MaidId] [int] IDENTITY(1,1) NOT NULL,
	[MaidName] [nvarchar](50) NOT NULL,
	[MaidMediatorId] [int] NULL,
	[StaffId] [int] NULL,
	[PersonalImage] [nvarchar](100) NULL,
	[Experience] [float] NULL,
	[Description] [nvarchar](500) NULL,
	[RateAvg] [float] NULL,
	[Phone] [nvarchar](20) NULL,
	[Gender] [bit] NULL,
	[BirthDate] [date] NULL,
	[English] [bit] NULL,
	[Korean] [bit] NULL,
	[Japanese] [bit] NULL,
	[Chinese] [bit] NULL,
	[Hometown] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Married] [bit] NULL,
 CONSTRAINT [PK_Maid_1] PRIMARY KEY CLUSTERED 
(
	[MaidId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JobRequest]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JobRequest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JobRequest](
	[JobRequestId] [int] IDENTITY(1,1) NOT NULL,
	[SkillRefId] [int] NOT NULL,
	[MaidMediatorId] [int] NULL,
	[StaffId] [int] NULL,
	[Status] [nvarchar](50) NOT NULL,
	[PostTime] [datetime] NOT NULL,
	[ExpiredTime] [datetime] NOT NULL,
	[ApplyTimes] [datetime] NULL,
	[MaidId] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_JobRequest_1] PRIMARY KEY CLUSTERED 
(
	[JobRequestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_JobRequest] UNIQUE NONCLUSTERED 
(
	[SkillRefId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_JobRequest_1] UNIQUE NONCLUSTERED 
(
	[JobRequestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recruitment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Recruitment](
	[RecruitmentId] [int] IDENTITY(1,1) NOT NULL,
	[SkillRefId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[PostTime] [datetime] NOT NULL,
	[ExpiredTime] [datetime] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Recruitment] PRIMARY KEY CLUSTERED 
(
	[RecruitmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Recruitment] UNIQUE NONCLUSTERED 
(
	[SkillRefId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rating]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/15/2014 09:28:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[JobRequestId] [int] NOT NULL,
	[PostTime] [datetime] NOT NULL,
	[CommentContent] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Apply]    Script Date: 10/15/2014 09:28:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Apply]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Apply](
	[RecruitmentId] [int] NOT NULL,
	[JobRequestId] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Apply_1] PRIMARY KEY CLUSTERED 
(
	[RecruitmentId] ASC,
	[JobRequestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_Apply] UNIQUE NONCLUSTERED 
(
	[JobRequestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_MaidRepresentation_Account]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaidRepresentation_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaidMediator]'))
ALTER TABLE [dbo].[MaidMediator]  WITH CHECK ADD  CONSTRAINT [FK_MaidRepresentation_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaidRepresentation_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaidMediator]'))
ALTER TABLE [dbo].[MaidMediator] CHECK CONSTRAINT [FK_MaidRepresentation_Account]
GO
/****** Object:  ForeignKey [FK_SkillInstance_SkillCategory]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillInstance_SkillCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillInstance]'))
ALTER TABLE [dbo].[SkillInstance]  WITH CHECK ADD  CONSTRAINT [FK_SkillInstance_SkillCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[SkillCategory] ([CategoryId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillInstance_SkillCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillInstance]'))
ALTER TABLE [dbo].[SkillInstance] CHECK CONSTRAINT [FK_SkillInstance_SkillCategory]
GO
/****** Object:  ForeignKey [FK_Staff_Account]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Staff_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Staff]'))
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Staff_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Staff]'))
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Account]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance] FOREIGN KEY([Gender])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance1]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance1]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance1] FOREIGN KEY([Age])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance1]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance1]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance10]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance10]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance10] FOREIGN KEY([Stay])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance10]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance10]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance11]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance11]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance11] FOREIGN KEY([Salary])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance11]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance11]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance12]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance12]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance12] FOREIGN KEY([Work])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance12]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance12]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance13]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance13]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance13] FOREIGN KEY([SickCare])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance13]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance13]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance14]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance14]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance14] FOREIGN KEY([OldCare])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance14]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance14]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance15]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance15]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance15] FOREIGN KEY([BabySister])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance15]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance15]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance16]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance16]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance16] FOREIGN KEY([DisabilityCare])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance16]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance16]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance17]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance17]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance17] FOREIGN KEY([BonsaiCare])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance17]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance17]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance18]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance18]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance18] FOREIGN KEY([Cooking])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance18]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance18]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance19]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance19]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance19] FOREIGN KEY([Washing])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance19]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance19]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance2]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance2] FOREIGN KEY([LanguageEnglish])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance2]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance20]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance20]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance20] FOREIGN KEY([CleanHouse])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance20]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance20]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance3]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance3]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance3] FOREIGN KEY([LanguageChinese])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance3]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance3]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance4]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance4]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance4] FOREIGN KEY([LanguageJapanese])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance4]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance4]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance5]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance5]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance5] FOREIGN KEY([LanguageKorean])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance5]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance5]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance6]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance6] FOREIGN KEY([Experience])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance6]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance7]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance7] FOREIGN KEY([Hometown])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance7]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance8]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance8]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance8] FOREIGN KEY([Address])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance8]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance8]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance9]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance9]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference]  WITH CHECK ADD  CONSTRAINT [FK_SkillReference_SkillInstance9] FOREIGN KEY([Married])
REFERENCES [dbo].[SkillInstance] ([SkillId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance9]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] CHECK CONSTRAINT [FK_SkillReference_SkillInstance9]
GO
/****** Object:  ForeignKey [FK_Maid_MaidMediator1]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid]  WITH CHECK ADD  CONSTRAINT [FK_Maid_MaidMediator1] FOREIGN KEY([MaidMediatorId])
REFERENCES [dbo].[MaidMediator] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] CHECK CONSTRAINT [FK_Maid_MaidMediator1]
GO
/****** Object:  ForeignKey [FK_Maid_Staff]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid]  WITH CHECK ADD  CONSTRAINT [FK_Maid_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] CHECK CONSTRAINT [FK_Maid_Staff]
GO
/****** Object:  ForeignKey [FK_JobRequest_Maid]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Maid]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest]  WITH CHECK ADD  CONSTRAINT [FK_JobRequest_Maid] FOREIGN KEY([MaidId])
REFERENCES [dbo].[Maid] ([MaidId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Maid]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] CHECK CONSTRAINT [FK_JobRequest_Maid]
GO
/****** Object:  ForeignKey [FK_JobRequest_MaidMediator1]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest]  WITH CHECK ADD  CONSTRAINT [FK_JobRequest_MaidMediator1] FOREIGN KEY([MaidMediatorId])
REFERENCES [dbo].[MaidMediator] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] CHECK CONSTRAINT [FK_JobRequest_MaidMediator1]
GO
/****** Object:  ForeignKey [FK_JobRequest_SkillReference]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_SkillReference]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest]  WITH CHECK ADD  CONSTRAINT [FK_JobRequest_SkillReference] FOREIGN KEY([SkillRefId])
REFERENCES [dbo].[SkillReference] ([SkillRefId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_SkillReference]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] CHECK CONSTRAINT [FK_JobRequest_SkillReference]
GO
/****** Object:  ForeignKey [FK_JobRequest_Staff]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest]  WITH CHECK ADD  CONSTRAINT [FK_JobRequest_Staff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] CHECK CONSTRAINT [FK_JobRequest_Staff]
GO
/****** Object:  ForeignKey [FK_Recruitment_Customer]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_Customer]
GO
/****** Object:  ForeignKey [FK_Recruitment_SkillReference1]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_SkillReference1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment]  WITH CHECK ADD  CONSTRAINT [FK_Recruitment_SkillReference1] FOREIGN KEY([SkillRefId])
REFERENCES [dbo].[SkillReference] ([SkillRefId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_SkillReference1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] CHECK CONSTRAINT [FK_Recruitment_SkillReference1]
GO
/****** Object:  ForeignKey [FK_Rating_Customer]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Customer]
GO
/****** Object:  ForeignKey [FK_Rating_JobRequest]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_JobRequest] FOREIGN KEY([JobRequestId])
REFERENCES [dbo].[JobRequest] ([JobRequestId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_JobRequest]
GO
/****** Object:  ForeignKey [FK_Comment_Customer]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([AccountId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Customer]
GO
/****** Object:  ForeignKey [FK_Comment_JobRequest]    Script Date: 10/15/2014 09:28:04 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_JobRequest] FOREIGN KEY([JobRequestId])
REFERENCES [dbo].[JobRequest] ([JobRequestId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_JobRequest]
GO
/****** Object:  ForeignKey [FK_Apply_JobRequest]    Script Date: 10/15/2014 09:28:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply]  WITH CHECK ADD  CONSTRAINT [FK_Apply_JobRequest] FOREIGN KEY([JobRequestId])
REFERENCES [dbo].[JobRequest] ([JobRequestId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] CHECK CONSTRAINT [FK_Apply_JobRequest]
GO
/****** Object:  ForeignKey [FK_Apply_Recruitment]    Script Date: 10/15/2014 09:28:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_Recruitment]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply]  WITH CHECK ADD  CONSTRAINT [FK_Apply_Recruitment] FOREIGN KEY([RecruitmentId])
REFERENCES [dbo].[Recruitment] ([RecruitmentId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_Recruitment]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] CHECK CONSTRAINT [FK_Apply_Recruitment]
GO
