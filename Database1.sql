USE [TRIMMS]
GO
/****** Object:  Table [dbo].[Allocation]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Allocation](
	[Resource_ID] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Project_ID] [varchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Allocation%] [varchar](max) NOT NULL,
	[AllocationType_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Allocation] PRIMARY KEY CLUSTERED 
(
	[Resource_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AllocationType]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllocationType](
	[Alloc_ID] [varchar](50) NOT NULL,
	[Allocation_Type] [varchar](max) NOT NULL,
 CONSTRAINT [PK_AllocationType] PRIMARY KEY CLUSTERED 
(
	[Alloc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Client_ID] [varchar](50) NOT NULL,
	[ClientGroup_ID] [varchar](50) NOT NULL,
	[Client_Name] [varchar](max) NOT NULL,
	[Location_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientGroup]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientGroup](
	[ClientGroup_ID] [varchar](50) NOT NULL,
	[ClientGroup_Name] [varchar](max) NULL,
 CONSTRAINT [PK_ClinetGroup] PRIMARY KEY CLUSTERED 
(
	[ClientGroup_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Country_ID] [varchar](50) NOT NULL,
	[Country_Name] [varchar](max) NULL,
	[Region_ID] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[Currency_ID] [varchar](50) NOT NULL,
	[Currency_Symbol] [varchar](max) NOT NULL,
	[Country_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[Currency_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Emp_ID] [varchar](50) NOT NULL,
	[Emp_Name] [varchar](max) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Designation] [varchar](max) NULL,
	[Location] [varchar](50) NULL,
	[DOJ] [date] NULL,
	[Contact_Number] [bigint] NOT NULL,
	[LWD] [date] NULL,
	[Vertical_L2] [varchar](50) NULL,
	[Email_ID] [varchar](50) NOT NULL,
	[RM_Emp_ID] [varchar](50) NULL,
	[Band] [varchar](max) NULL,
	[Level] [varchar](max) NULL,
	[Role_ID] [varchar](50) NULL,
	[Address] [varchar](max) NOT NULL,
	[State_ID] [varchar](50) NOT NULL,
	[Country_ID] [varchar](50) NOT NULL,
	[PinCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Holiday]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holiday](
	[Holiday_ID] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Occasion] [varchar](max) NOT NULL,
	[Location_ID] [varchar](50) NOT NULL,
	[State_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED 
(
	[Holiday_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[L0_Table]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[L0_Table](
	[DivisonL0_ID] [varchar](50) NOT NULL,
	[DivisonL0_Title] [varchar](max) NOT NULL,
 CONSTRAINT [PK_L0_Table] PRIMARY KEY CLUSTERED 
(
	[DivisonL0_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[L1_Table]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[L1_Table](
	[DivisonL1_ID] [varchar](50) NOT NULL,
	[DivisonL1_Title] [varchar](max) NOT NULL,
	[DivisonL0_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_L1_Table] PRIMARY KEY CLUSTERED 
(
	[DivisonL1_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[L2_Table]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[L2_Table](
	[DivisonL2_ID] [varchar](50) NOT NULL,
	[DivisonL2_Title] [varchar](max) NOT NULL,
	[DivisonL1_ID] [varchar](50) NULL,
 CONSTRAINT [PK_L2_Table] PRIMARY KEY CLUSTERED 
(
	[DivisonL2_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Location_ID] [varchar](50) NOT NULL,
	[Location_Name] [varchar](max) NOT NULL,
	[State_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Location_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[Module_ID] [varchar](50) NOT NULL,
	[Project_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[Module_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Project_ID] [varchar](50) NOT NULL,
	[Project_Name] [varchar](max) NOT NULL,
	[Client_ID] [varchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[PO] [varchar](max) NOT NULL,
	[SOW] [varchar](max) NOT NULL,
	[MSA] [varchar](max) NOT NULL,
	[RefCode] [varchar](max) NOT NULL,
	[EngagementType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Project_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectType]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectType](
	[ProjectType_ID] [varchar](50) NOT NULL,
	[ProjectType] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ProjectType] PRIMARY KEY CLUSTERED 
(
	[ProjectType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Region_ID] [varchar](50) NOT NULL,
	[Region_Name] [varchar](max) NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Region_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_ID] [varchar](50) NOT NULL,
	[Project_ID] [varchar](50) NOT NULL,
	[Role_Title] [varchar](max) NOT NULL,
	[Currency_ID] [varchar](50) NOT NULL,
	[BillingType] [varchar](max) NOT NULL,
	[BillingRate] [nvarchar](max) NOT NULL,
	[OverTimeRate] [varchar](50) NOT NULL,
	[OverTimeUnit] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[State_ID] [varchar](50) NOT NULL,
	[State_Name] [varchar](max) NULL,
	[Country_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[State_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[Task_ID] [varchar](50) NOT NULL,
	[Task_Name] [varchar](max) NOT NULL,
	[Task_Assignment_Type] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Task_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timesheets]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheets](
	[TS_ID] [varchar](50) NOT NULL,
	[Emp_ID] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Module_ID] [varchar](50) NOT NULL,
	[Task_ID] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Billable?] [varchar](max) NOT NULL,
	[Status] [varchar](max) NOT NULL,
	[YYYY-MM-DD_Monday] [date] NOT NULL,
 CONSTRAINT [PK_Timesheets] PRIMARY KEY CLUSTERED 
(
	[TS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Allocation]  WITH CHECK ADD  CONSTRAINT [FK_Allocation_AllocationType] FOREIGN KEY([AllocationType_ID])
REFERENCES [dbo].[AllocationType] ([Alloc_ID])
GO
ALTER TABLE [dbo].[Allocation] CHECK CONSTRAINT [FK_Allocation_AllocationType]
GO
ALTER TABLE [dbo].[Allocation]  WITH CHECK ADD  CONSTRAINT [FK_Allocation_Project] FOREIGN KEY([Project_ID])
REFERENCES [dbo].[Project] ([Project_ID])
GO
ALTER TABLE [dbo].[Allocation] CHECK CONSTRAINT [FK_Allocation_Project]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_ClientGroup1] FOREIGN KEY([ClientGroup_ID])
REFERENCES [dbo].[ClientGroup] ([ClientGroup_ID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_ClientGroup1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Location] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[Location] ([Location_ID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Location]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Region] FOREIGN KEY([Region_ID])
REFERENCES [dbo].[Region] ([Region_ID])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Region]
GO
ALTER TABLE [dbo].[Currency]  WITH CHECK ADD  CONSTRAINT [FK_Currency_Country] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Country] ([Country_ID])
GO
ALTER TABLE [dbo].[Currency] CHECK CONSTRAINT [FK_Currency_Country]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_L2_Table] FOREIGN KEY([Vertical_L2])
REFERENCES [dbo].[L2_Table] ([DivisonL2_ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_L2_Table]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Location] FOREIGN KEY([Location])
REFERENCES [dbo].[Location] ([Location_ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Location]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Role] ([Role_ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Holiday]  WITH CHECK ADD  CONSTRAINT [FK_Holiday_Location] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[Location] ([Location_ID])
GO
ALTER TABLE [dbo].[Holiday] CHECK CONSTRAINT [FK_Holiday_Location]
GO
ALTER TABLE [dbo].[Holiday]  WITH CHECK ADD  CONSTRAINT [FK_Holiday_Location1] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[Location] ([Location_ID])
GO
ALTER TABLE [dbo].[Holiday] CHECK CONSTRAINT [FK_Holiday_Location1]
GO
ALTER TABLE [dbo].[Holiday]  WITH CHECK ADD  CONSTRAINT [FK_Holiday_State] FOREIGN KEY([State_ID])
REFERENCES [dbo].[State] ([State_ID])
GO
ALTER TABLE [dbo].[Holiday] CHECK CONSTRAINT [FK_Holiday_State]
GO
ALTER TABLE [dbo].[L1_Table]  WITH CHECK ADD  CONSTRAINT [FK_L1_Table_L0_Table] FOREIGN KEY([DivisonL0_ID])
REFERENCES [dbo].[L0_Table] ([DivisonL0_ID])
GO
ALTER TABLE [dbo].[L1_Table] CHECK CONSTRAINT [FK_L1_Table_L0_Table]
GO
ALTER TABLE [dbo].[L2_Table]  WITH CHECK ADD  CONSTRAINT [FK_L2_Table_L1_Table] FOREIGN KEY([DivisonL1_ID])
REFERENCES [dbo].[L1_Table] ([DivisonL1_ID])
GO
ALTER TABLE [dbo].[L2_Table] CHECK CONSTRAINT [FK_L2_Table_L1_Table]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_State] FOREIGN KEY([State_ID])
REFERENCES [dbo].[State] ([State_ID])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_State]
GO
ALTER TABLE [dbo].[Modules]  WITH CHECK ADD  CONSTRAINT [FK_Modules_Project] FOREIGN KEY([Project_ID])
REFERENCES [dbo].[Project] ([Project_ID])
GO
ALTER TABLE [dbo].[Modules] CHECK CONSTRAINT [FK_Modules_Project]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Client] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Client] ([Client_ID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Client]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_ProjectType] FOREIGN KEY([EngagementType])
REFERENCES [dbo].[ProjectType] ([ProjectType_ID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_ProjectType]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_Currency] FOREIGN KEY([Currency_ID])
REFERENCES [dbo].[Currency] ([Currency_ID])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_Currency]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_Project] FOREIGN KEY([Project_ID])
REFERENCES [dbo].[Project] ([Project_ID])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_Project]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Country] ([Country_ID])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
ALTER TABLE [dbo].[Timesheets]  WITH CHECK ADD  CONSTRAINT [FK_Timesheets_Modules] FOREIGN KEY([Module_ID])
REFERENCES [dbo].[Modules] ([Module_ID])
GO
ALTER TABLE [dbo].[Timesheets] CHECK CONSTRAINT [FK_Timesheets_Modules]
GO
ALTER TABLE [dbo].[Timesheets]  WITH CHECK ADD  CONSTRAINT [FK_Timesheets_Task] FOREIGN KEY([Task_ID])
REFERENCES [dbo].[Task] ([Task_ID])
GO
ALTER TABLE [dbo].[Timesheets] CHECK CONSTRAINT [FK_Timesheets_Task]
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteUser]
(
@Id INT,
@ReturnCode NVARCHAR(20) OUTPUT
)
AS
BEGIN
	SET NOCOUNT ON;
	SET @ReturnCode = 'C200'
	IF NOT EXISTS (SELECT 1 FROM Users WHERE Id = @Id)
	BEGIN
		SET @ReturnCode ='C203'
		RETURN
	END
	ELSE
	BEGIN
		DELETE FROM Users WHERE Id = @Id
		SET @ReturnCode = 'C200'
		RETURN
	END
END


GO
/****** Object:  StoredProcedure [dbo].[GetdetByID]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetdetByID]
@Emp_ID varchar(50)

AS
BEGIN 
SELECT * FROM Employee
where Emp_ID= @Emp_ID
END

GO
/****** Object:  StoredProcedure [dbo].[GetEmp]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmp] 
	
	
AS
BEGIN
	Select * from dbo.Employee;
	SET NOCOUNT ON;

  
END
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- EXEC GetUsers
-- =============================================
CREATE PROCEDURE [dbo].[GetUsers]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM Users(NOLOCK) ORDER BY Id ASC
END


GO
/****** Object:  StoredProcedure [dbo].[POST]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[POST]
--ALTER PROCEDURE POST 
    -- Add the parameters for the stored procedure here  
(  
	 @Emp_ID Varchar(50),
     @Emp_Name Varchar(MAX)  
    ,@Designation Varchar(MAX)  
    ,@Location Varchar(50)  
    ,@DOJ  DATE,
	@LWD  DATE,
	@Vertical_L2 Varchar(50),
	@Email_ID Varchar(50),
	@RM_Emp_ID Varchar(50),
	@Band Varchar(MAX),
	@Level Varchar(MAX),
	@Role_ID Varchar(50)
)
AS  
BEGIN  
    ---- SET NOCOUNT ON added to prevent extra result sets from  
    SET  NOCOUNT ON;  
    
        -- Insert statements for procedure here  
        INSERT INTO [dbo].[Employee]
		([Emp_ID],[Emp_Name],[Designation],[Location],[DOJ],[LWD],[Vertical_L2],[Email_ID],[RM_Emp_ID],[Band],[Level],[Role_ID])  
        VALUES (@Emp_ID, @Emp_Name, @Designation, @Location, @DOJ,@LWD,@Vertical_L2,@Email_ID,@RM_Emp_ID,@Band,@Level,@Role_ID)  
        
END

GO
/****** Object:  StoredProcedure [dbo].[SaveUser]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SaveUser]
(
@Id INT,
@Name NVARCHAR(MAX),
@EmailId NVARCHAR(MAX),
@Mobile NVARCHAR(20),
@Address NVARCHAR(MAX),
@ReturnCode NVARCHAR(20) OUTPUT
)
AS
BEGIN
	SET @ReturnCode = 'C200'
	IF(@Id <> 0)
	BEGIN
		IF EXISTS (SELECT 1 FROM Users WHERE EmailId = @EmailId AND Id <> @Id)
		BEGIN
			SET @ReturnCode = 'C201'
			RETURN
		END
		IF EXISTS (SELECT 1 FROM Users WHERE Mobile = @Mobile AND Id <> @Id)
		BEGIN
			SET @ReturnCode = 'C202'
			RETURN
		END

		UPDATE Users SET
		Name = @Name,
		EmailId = @EmailId,
		Mobile = @Mobile,
		Address = @Address,
		IsActive = 1
		WHERE Id = @Id

		SET @ReturnCode = 'C200'
	END
	ELSE
	BEGIN
		IF EXISTS (SELECT 1 FROM Users WHERE EmailId = @EmailId)
		BEGIN
			SET @ReturnCode = 'C201'
			RETURN
		END
		IF EXISTS (SELECT 1 FROM Users WHERE Mobile = @Mobile)
		BEGIN
			SET @ReturnCode = 'C202'
			RETURN
		END

		INSERT INTO Users (Name,EmailId,Mobile,Address,IsActive)
		VALUES (@Name,@EmailId,@Mobile,@Address,1)

		SET @ReturnCode = 'C200'
	END
END


GO
/****** Object:  StoredProcedure [dbo].[Sp_Employee]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Sp_Employee]
@Emp_ID varchar(50),
@Emp_Name varchar(max),
@Designation varchar(max),
@Location varchar(50),
@DOJ date,
@LWD date,
@Vertical_L2 varchar(50),
@Email_ID varchar(50),
@RM_Emp_ID varchar(50),
@Band varchar(max),
@Level varchar(max),
@Role_ID varchar(50),
@type nvarchar(50)
AS
BEGIN
IF(@type='insert')
BEGIN
INSERT INTO dbo.Employee(
 Emp_ID,
 Emp_Name,
 Designation,
 Location,
 DOJ,
 LWD,
 Vertical_L2,
 Email_ID,
 RM_Emp_ID,
 Band,
 Level,
 Role_ID

  )
VALUES
  (
 @Emp_ID,
 @Emp_Name,
 @Designation,
 @Location,
 @DOJ,
 @LWD,
 @Vertical_L2,
 @Email_ID,
 @RM_Emp_ID,
 @Band,
 @Level,
 @Role_ID
  
  )
  end
  ELSE IF (@type= 'get')
BEGIN

Select * FROM dbo.Employee ORDER BY Emp_ID desc
END
ELSE IF (@type='getid')
BEGIN
SELECT *  FROM dbo.Employee WHERE Emp_ID = @Emp_ID
END
ELSE IF (@type ='update')
BEGIN
UPDATE dbo.Employee SET

  Emp_ID= @Emp_ID,
 Emp_Name = @Emp_Name,
 Designation=@Designation,
 Location=@Location,
 DOJ=@DOJ,
 LWD=@LWD,
 Vertical_L2=@Vertical_L2,
 Email_ID=@Email_ID,
 RM_Emp_ID=@RM_Emp_ID,
 Band=@Band,
 Level=@Level,
 Role_ID=@Role_ID


WHERE Emp_ID=@Emp_ID
END
ELSE IF (@type = 'delete')
BEGIN
DELETE FROM dbo.Employee WHERE Emp_ID=@Emp_ID 
END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERT_EMP]    Script Date: 28-03-2022 15:40:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_INSERT_EMP]
	
@Emp_Name varchar(max),
@Emp_ID varchar(50),
@DOB date,
@Gender varchar(50),
@Email_ID varchar(50),
@Address varchar(max),
@PinCode int,
@State_ID varchar(50),
@Country_ID varchar(50),
@Contact_Number varchar(max)

AS
BEGIN
SET NOCOUNT ON;
select E.Emp_Name,E.Emp_ID,E.DOB,E.Email_ID,E.Gender,E.Contact_Number,E.Address,S.State_ID,C.Country_ID,E.PinCode
From Employee E inner join State S 
on E.State_ID = S.State_ID 
inner join Country C on E.Country_ID = C.Country_ID
	
	
	INSERT INTO [dbo].[Employee]
		([Emp_Name],[Emp_ID],[DOB],[Gender],[Email_ID],[Address],[PinCode],[State_ID],[Country_ID],[Contact_Number])  
        VALUES (@Emp_Name,@Emp_ID,@DOB,@Gender, @Email_ID,@Address,@PinCode,@State_ID,@Country_ID,@Contact_Number) 
    
	
END
GO
