USE [DEPLcontrol]
GO
/****** Object:  Table [dbo].[control_ahp]    Script Date: 10/4/2013 11:02:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[control_ahp](
	[ca_id] [int] IDENTITY(1,1) NOT NULL,
	[Request_id] [int] NOT NULL,
	[ProjectName] [sysname] NOT NULL,
	[ProjectNum] [sysname] NOT NULL,
	[status] [sysname] NOT NULL,
	[Process] [sysname] NOT NULL,
	[ProcessType] [sysname] NULL,
	[ProcessDetail] [sysname] NULL,
	[TargetSQLname] [sysname] NULL,
	[DBname] [sysname] NULL,
	[APPLname] [sysname] NULL,
	[BASEfolder] [sysname] NULL,
	[CreateDate] [datetime] NULL,
	[ModDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_clust_control_ahp]    Script Date: 10/4/2013 11:02:05 AM ******/
CREATE NONCLUSTERED INDEX [IX_clust_control_ahp] ON [dbo].[control_ahp]
(
	[Request_id] ASC,
	[Process] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
