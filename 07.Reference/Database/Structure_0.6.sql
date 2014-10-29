USE [MS]
GO
/****** Object:  ForeignKey [FK_Customer_Account]    Script Date: 10/29/2014 10:18:50 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_Account]
GO
/****** Object:  ForeignKey [FK_MaidRepresentation_Account]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaidRepresentation_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaidMediator]'))
ALTER TABLE [dbo].[MaidMediator] DROP CONSTRAINT [FK_MaidRepresentation_Account]
GO
/****** Object:  ForeignKey [FK_SkillInstance_SkillCategory]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillInstance_SkillCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillInstance]'))
ALTER TABLE [dbo].[SkillInstance] DROP CONSTRAINT [FK_SkillInstance_SkillCategory]
GO
/****** Object:  ForeignKey [FK_Staff_Account]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Staff_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Staff]'))
ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Account]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance1]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance1]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance1]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance10]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance10]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance10]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance11]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance11]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance11]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance12]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance12]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance12]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance13]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance13]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance13]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance14]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance14]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance14]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance15]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance15]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance15]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance16]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance16]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance16]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance17]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance17]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance17]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance18]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance18]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance18]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance19]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance19]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance19]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance2]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance2]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance20]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance20]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance20]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance3]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance3]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance3]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance4]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance4]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance4]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance5]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance5]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance5]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance6]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance6]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance6]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance7]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance7]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance7]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance8]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance8]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance8]
GO
/****** Object:  ForeignKey [FK_SkillReference_SkillInstance9]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillReference_SkillInstance9]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillReference]'))
ALTER TABLE [dbo].[SkillReference] DROP CONSTRAINT [FK_SkillReference_SkillInstance9]
GO
/****** Object:  ForeignKey [FK_Maid_MaidMediator1]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] DROP CONSTRAINT [FK_Maid_MaidMediator1]
GO
/****** Object:  ForeignKey [FK_Maid_Staff]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] DROP CONSTRAINT [FK_Maid_Staff]
GO
/****** Object:  ForeignKey [FK_JobRequest_Maid]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Maid]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_Maid]
GO
/****** Object:  ForeignKey [FK_JobRequest_MaidMediator1]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_MaidMediator1]
GO
/****** Object:  ForeignKey [FK_JobRequest_SkillReference]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_SkillReference]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_SkillReference]
GO
/****** Object:  ForeignKey [FK_JobRequest_Staff]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JobRequest_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[JobRequest]'))
ALTER TABLE [dbo].[JobRequest] DROP CONSTRAINT [FK_JobRequest_Staff]
GO
/****** Object:  ForeignKey [FK_Recruitment_Customer]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] DROP CONSTRAINT [FK_Recruitment_Customer]
GO
/****** Object:  ForeignKey [FK_Recruitment_SkillReference1]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_SkillReference1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] DROP CONSTRAINT [FK_Recruitment_SkillReference1]
GO
/****** Object:  ForeignKey [FK_Rating_Customer]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [FK_Rating_Customer]
GO
/****** Object:  ForeignKey [FK_Rating_JobRequest]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [FK_Rating_JobRequest]
GO
/****** Object:  ForeignKey [FK_Comment_Customer]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_Customer]
GO
/****** Object:  ForeignKey [FK_Comment_JobRequest]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_JobRequest]
GO
/****** Object:  ForeignKey [FK_Apply_JobRequest]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] DROP CONSTRAINT [FK_Apply_JobRequest]
GO
/****** Object:  ForeignKey [FK_Apply_Recruitment]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_Recruitment]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] DROP CONSTRAINT [FK_Apply_Recruitment]
GO
/****** Object:  Table [dbo].[Apply]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] DROP CONSTRAINT [FK_Apply_JobRequest]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Apply_Recruitment]') AND parent_object_id = OBJECT_ID(N'[dbo].[Apply]'))
ALTER TABLE [dbo].[Apply] DROP CONSTRAINT [FK_Apply_Recruitment]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Apply]') AND type in (N'U'))
DROP TABLE [dbo].[Apply]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_Customer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Comment_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comment]'))
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_JobRequest]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comment]') AND type in (N'U'))
DROP TABLE [dbo].[Comment]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [FK_Rating_Customer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rating_JobRequest]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rating]'))
ALTER TABLE [dbo].[Rating] DROP CONSTRAINT [FK_Rating_JobRequest]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rating]') AND type in (N'U'))
DROP TABLE [dbo].[Rating]
GO
/****** Object:  Table [dbo].[Recruitment]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] DROP CONSTRAINT [FK_Recruitment_Customer]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Recruitment_SkillReference1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Recruitment]'))
ALTER TABLE [dbo].[Recruitment] DROP CONSTRAINT [FK_Recruitment_SkillReference1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recruitment]') AND type in (N'U'))
DROP TABLE [dbo].[Recruitment]
GO
/****** Object:  Table [dbo].[JobRequest]    Script Date: 10/29/2014 10:18:51 ******/
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
/****** Object:  Table [dbo].[Maid]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_MaidMediator1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] DROP CONSTRAINT [FK_Maid_MaidMediator1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Maid_Staff]') AND parent_object_id = OBJECT_ID(N'[dbo].[Maid]'))
ALTER TABLE [dbo].[Maid] DROP CONSTRAINT [FK_Maid_Staff]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Maid]') AND type in (N'U'))
DROP TABLE [dbo].[Maid]
GO
/****** Object:  Table [dbo].[SkillReference]    Script Date: 10/29/2014 10:18:51 ******/
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
/****** Object:  Table [dbo].[Staff]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Staff_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Staff]'))
ALTER TABLE [dbo].[Staff] DROP CONSTRAINT [FK_Staff_Account]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Staff]') AND type in (N'U'))
DROP TABLE [dbo].[Staff]
GO
/****** Object:  Table [dbo].[SkillInstance]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SkillInstance_SkillCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[SkillInstance]'))
ALTER TABLE [dbo].[SkillInstance] DROP CONSTRAINT [FK_SkillInstance_SkillCategory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SkillInstance]') AND type in (N'U'))
DROP TABLE [dbo].[SkillInstance]
GO
/****** Object:  Table [dbo].[MaidMediator]    Script Date: 10/29/2014 10:18:51 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MaidRepresentation_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[MaidMediator]'))
ALTER TABLE [dbo].[MaidMediator] DROP CONSTRAINT [FK_MaidRepresentation_Account]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MaidMediator]') AND type in (N'U'))
DROP TABLE [dbo].[MaidMediator]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10/29/2014 10:18:50 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Customer_Account]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customer]'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [FK_Customer_Account]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/29/2014 10:18:50 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Account_isActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [DF_Account_isActive]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[SkillCategory]    Script Date: 10/29/2014 10:18:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SkillCategory]') AND type in (N'U'))
DROP TABLE [dbo].[SkillCategory]
GO
