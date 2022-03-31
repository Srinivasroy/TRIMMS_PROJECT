USE [master]
GO
/****** Object:  Database [TRIMMS]    Script Date: 31-03-2022 16:12:25 ******/
CREATE DATABASE [TRIMMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TRIMMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TRIMMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TRIMMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TRIMMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TRIMMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TRIMMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TRIMMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TRIMMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TRIMMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TRIMMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TRIMMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [TRIMMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TRIMMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TRIMMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TRIMMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TRIMMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TRIMMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TRIMMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TRIMMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TRIMMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TRIMMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TRIMMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TRIMMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TRIMMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TRIMMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TRIMMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TRIMMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TRIMMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TRIMMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TRIMMS] SET  MULTI_USER 
GO
ALTER DATABASE [TRIMMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TRIMMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TRIMMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TRIMMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TRIMMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TRIMMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TRIMMS] SET QUERY_STORE = OFF
GO
USE [TRIMMS]
GO
/****** Object:  Table [dbo].[Allocation]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[AllocationType]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Client]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[ClientGroup]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Country]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Currency]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Employee]    Script Date: 31-03-2022 16:12:26 ******/
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
	[Contact_Number] [varchar](50) NOT NULL,
	[LWD] [date] NULL,
	[Vertical_L2] [varchar](50) NULL,
	[Email_ID] [varchar](50) NOT NULL,
	[RM_Emp_ID] [varchar](50) NULL,
	[Band] [varchar](max) NULL,
	[Level] [varchar](max) NULL,
	[Role_ID] [varchar](50) NULL,
	[Address] [varchar](max) NOT NULL,
	[State_Name] [varchar](max) NULL,
	[Country_ID] [varchar](50) NULL,
	[PinCode] [varchar](50) NOT NULL,
	[Emp_Type] [varchar](50) NULL,
	[Department] [varchar](max) NULL,
	[Reporting_Manager] [varchar](max) NULL,
	[WorkEXPDOJ] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Holiday]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[L0_Table]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[L1_Table]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[L2_Table]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Location]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Modules]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Project]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[ProjectType]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Region]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[State]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Task]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  Table [dbo].[Timesheets]    Script Date: 31-03-2022 16:12:26 ******/
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
INSERT [dbo].[AllocationType] ([Alloc_ID], [Allocation_Type]) VALUES (N'AID01', N'AT_1')
GO
INSERT [dbo].[AllocationType] ([Alloc_ID], [Allocation_Type]) VALUES (N'AID02', N'AT_2')
GO
INSERT [dbo].[Client] ([Client_ID], [ClientGroup_ID], [Client_Name], [Location_ID]) VALUES (N'CID01', N'CG01', N'Convey Health Solutions', N'104')
GO
INSERT [dbo].[Client] ([Client_ID], [ClientGroup_ID], [Client_Name], [Location_ID]) VALUES (N'CID02', N'CG02', N'Test Client', N'103')
GO
INSERT [dbo].[ClientGroup] ([ClientGroup_ID], [ClientGroup_Name]) VALUES (N'CG01', N'CHS')
GO
INSERT [dbo].[ClientGroup] ([ClientGroup_ID], [ClientGroup_Name]) VALUES (N'CG02', N'TC')
GO
INSERT [dbo].[Country] ([Country_ID], [Country_Name], [Region_ID]) VALUES (N'IN-1', N'India', N'IN_TN')
GO
INSERT [dbo].[Country] ([Country_ID], [Country_Name], [Region_ID]) VALUES (N'IN-2', N'India', N'IN_KA')
GO
INSERT [dbo].[Country] ([Country_ID], [Country_Name], [Region_ID]) VALUES (N'IN-3', N'India', N'IN_AR')
GO
INSERT [dbo].[Country] ([Country_ID], [Country_Name], [Region_ID]) VALUES (N'US-1', N'United States', N'US_CU')
GO
INSERT [dbo].[Currency] ([Currency_ID], [Currency_Symbol], [Country_ID]) VALUES (N'CURR01', N'Rs.', N'IN-1')
GO
INSERT [dbo].[Currency] ([Currency_ID], [Currency_Symbol], [Country_ID]) VALUES (N'CURR02', N'Rs.', N'IN-2')
GO
INSERT [dbo].[Currency] ([Currency_ID], [Currency_Symbol], [Country_ID]) VALUES (N'CURR03', N'$', N'US-1')
GO
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [DOB], [Gender], [Designation], [Location], [DOJ], [Contact_Number], [LWD], [Vertical_L2], [Email_ID], [RM_Emp_ID], [Band], [Level], [Role_ID], [Address], [State_Name], [Country_ID], [PinCode], [Emp_Type], [Department], [Reporting_Manager], [WorkEXPDOJ]) VALUES (N'IS001', N'Srini', CAST(N'2021-12-02' AS Date), N'M', N'Developer', N'101', CAST(N'2021-12-02' AS Date), N'89876543210', CAST(N'2022-03-16' AS Date), N'21', N'srini@gmail.com', N'RM01', N'band2', N'Trainee', N'2001', N'ukraine', N'AR', N'IN-1', N'534350', N'Intern', N'DEV', N'JAY', N'0')
GO
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [DOB], [Gender], [Designation], [Location], [DOJ], [Contact_Number], [LWD], [Vertical_L2], [Email_ID], [RM_Emp_ID], [Band], [Level], [Role_ID], [Address], [State_Name], [Country_ID], [PinCode], [Emp_Type], [Department], [Reporting_Manager], [WorkEXPDOJ]) VALUES (N'IS002', N'Chandru', CAST(N'2020-12-05' AS Date), N'M', N'Developer', N'103', CAST(N'2021-12-03' AS Date), N'98746625725', CAST(N'2022-03-15' AS Date), N'21', N'chandru@gmail.com', N'RM01', N'band3', N'Trainee', N'2001', N'russia', N'KA', N'IN-2', N'100021', N'Intern', N'DEV', N'JAY', N'0')
GO
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [DOB], [Gender], [Designation], [Location], [DOJ], [Contact_Number], [LWD], [Vertical_L2], [Email_ID], [RM_Emp_ID], [Band], [Level], [Role_ID], [Address], [State_Name], [Country_ID], [PinCode], [Emp_Type], [Department], [Reporting_Manager], [WorkEXPDOJ]) VALUES (N'IS003', N'Sharon', CAST(N'2019-10-05' AS Date), N'F', N'Developer', N'104', CAST(N'2021-12-04' AS Date), N'5522556556', CAST(N'2022-03-12' AS Date), N'21', N'sharon@gmail.com', N'RM01', N'band4', N'Trainee', N'2001', N'japan', N'KA', N'IN-2', N'789645', N'Intern', N'DEV', N'JAY', N'0')
GO
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [DOB], [Gender], [Designation], [Location], [DOJ], [Contact_Number], [LWD], [Vertical_L2], [Email_ID], [RM_Emp_ID], [Band], [Level], [Role_ID], [Address], [State_Name], [Country_ID], [PinCode], [Emp_Type], [Department], [Reporting_Manager], [WorkEXPDOJ]) VALUES (N'IS004', N'Renu', CAST(N'2018-06-05' AS Date), N'F', N'Developer', N'102', CAST(N'2021-12-05' AS Date), N'8555555666', CAST(N'2022-03-11' AS Date), N'21', N'renu@gmail.com', N'RM01', N'band5', N'Trainee', N'2001', N'usa', N'CU', N'US-1', N'564012', N'Intern', N'DEV', N'JAY', N'0')
GO
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [DOB], [Gender], [Designation], [Location], [DOJ], [Contact_Number], [LWD], [Vertical_L2], [Email_ID], [RM_Emp_ID], [Band], [Level], [Role_ID], [Address], [State_Name], [Country_ID], [PinCode], [Emp_Type], [Department], [Reporting_Manager], [WorkEXPDOJ]) VALUES (N'IS005', N'Shwetha', CAST(N'2017-05-06' AS Date), N'F', N'Development', N'102', CAST(N'2021-12-01' AS Date), N'63332225665', CAST(N'2022-03-15' AS Date), N'21', N'shwetha@gmail.com', N'RM01', N'Band1', N'Trainee', N'2001', N'uk', N'KA', N'IN-3', N'987465', N'Intern', N'DEV', N'JAY', N'0')
GO
INSERT [dbo].[Employee] ([Emp_ID], [Emp_Name], [DOB], [Gender], [Designation], [Location], [DOJ], [Contact_Number], [LWD], [Vertical_L2], [Email_ID], [RM_Emp_ID], [Band], [Level], [Role_ID], [Address], [State_Name], [Country_ID], [PinCode], [Emp_Type], [Department], [Reporting_Manager], [WorkEXPDOJ]) VALUES (N'IS006', N'Nandha', CAST(N'2016-05-09' AS Date), N'M', N'Developer', N'101', CAST(N'2021-12-06' AS Date), N'85522556651', CAST(N'2022-03-14' AS Date), N'21', N'nandha@gmail.com', N'RM01', N'band6', N'Trainee', N'2001', N'pakistan', N'TN', N'US-1', N'855564', N'Intern', N'DEV', N'JAY', N'0')
GO
INSERT [dbo].[Holiday] ([Holiday_ID], [Date], [Occasion], [Location_ID], [State_ID]) VALUES (N'1001', CAST(N'2022-01-01' AS Date), N'New Year', N'102', N'KA')
GO
INSERT [dbo].[Holiday] ([Holiday_ID], [Date], [Occasion], [Location_ID], [State_ID]) VALUES (N'1002', CAST(N'2022-01-14' AS Date), N'Pongal', N'101', N'TN')
GO
INSERT [dbo].[Holiday] ([Holiday_ID], [Date], [Occasion], [Location_ID], [State_ID]) VALUES (N'1003', CAST(N'2022-01-26' AS Date), N'Republic Day', N'103', N'AR')
GO
INSERT [dbo].[L0_Table] ([DivisonL0_ID], [DivisonL0_Title]) VALUES (N'1', N'QA')
GO
INSERT [dbo].[L0_Table] ([DivisonL0_ID], [DivisonL0_Title]) VALUES (N'2', N'Digital')
GO
INSERT [dbo].[L1_Table] ([DivisonL1_ID], [DivisonL1_Title], [DivisonL0_ID]) VALUES (N'11', N'Quality Assurance', N'1')
GO
INSERT [dbo].[L1_Table] ([DivisonL1_ID], [DivisonL1_Title], [DivisonL0_ID]) VALUES (N'12', N'Digital', N'2')
GO
INSERT [dbo].[L2_Table] ([DivisonL2_ID], [DivisonL2_Title], [DivisonL1_ID]) VALUES (N'21', N'QA1', N'11')
GO
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [State_ID]) VALUES (N'101', N'Chennai', N'TN')
GO
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [State_ID]) VALUES (N'102', N'Banglore', N'KA')
GO
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [State_ID]) VALUES (N'103', N'Hyderabad', N'AR')
GO
INSERT [dbo].[Location] ([Location_ID], [Location_Name], [State_ID]) VALUES (N'104', N'Cupertino', N'CU')
GO
INSERT [dbo].[Modules] ([Module_ID], [Project_ID]) VALUES (N'MOD_001', N'Proj_001')
GO
INSERT [dbo].[Project] ([Project_ID], [Project_Name], [Client_ID], [StartDate], [EndDate], [PO], [SOW], [MSA], [RefCode], [EngagementType]) VALUES (N'Proj_001', N'Test Project', N'CID02', CAST(N'2021-01-02' AS Date), CAST(N'2022-02-28' AS Date), N'Test Client', N'Development', N'NIL', N'IS_REF01', N'Proj_T01')
GO
INSERT [dbo].[ProjectType] ([ProjectType_ID], [ProjectType]) VALUES (N'Proj_T01', N'App Development')
GO
INSERT [dbo].[ProjectType] ([ProjectType_ID], [ProjectType]) VALUES (N'Proj_T02', N'Mobile application Designing')
GO
INSERT [dbo].[Region] ([Region_ID], [Region_Name]) VALUES (N'IN_AR', N'India-AndhraPradesh')
GO
INSERT [dbo].[Region] ([Region_ID], [Region_Name]) VALUES (N'IN_KA', N'India-Karnataka')
GO
INSERT [dbo].[Region] ([Region_ID], [Region_Name]) VALUES (N'IN_TN', N'India-Tamilnadu')
GO
INSERT [dbo].[Region] ([Region_ID], [Region_Name]) VALUES (N'US_CU', N'United States-Cupertino')
GO
INSERT [dbo].[Role] ([Role_ID], [Project_ID], [Role_Title], [Currency_ID], [BillingType], [BillingRate], [OverTimeRate], [OverTimeUnit]) VALUES (N'2001', N'Proj_001', N'Developer', N'CURR01', N'Daily', N'5000', N'500', N'hourly')
GO
INSERT [dbo].[State] ([State_ID], [State_Name], [Country_ID]) VALUES (N'AP', NULL, N'IN-1')
GO
INSERT [dbo].[State] ([State_ID], [State_Name], [Country_ID]) VALUES (N'AR', N'AndhraPradesh', N'IN-3')
GO
INSERT [dbo].[State] ([State_ID], [State_Name], [Country_ID]) VALUES (N'CU', N'Cupertino', N'US-1')
GO
INSERT [dbo].[State] ([State_ID], [State_Name], [Country_ID]) VALUES (N'KA', N'Karnataka', N'IN-2')
GO
INSERT [dbo].[State] ([State_ID], [State_Name], [Country_ID]) VALUES (N'TN', N'TamilNadu', N'IN-1')
GO
INSERT [dbo].[State] ([State_ID], [State_Name], [Country_ID]) VALUES (N'TS', NULL, N'IN-1')
GO
INSERT [dbo].[Task] ([Task_ID], [Task_Name], [Task_Assignment_Type]) VALUES (N'TASK01', N'Coding', N'Project')
GO
INSERT [dbo].[Task] ([Task_ID], [Task_Name], [Task_Assignment_Type]) VALUES (N'TASK02', N'Project meeting', N'Deployement')
GO
INSERT [dbo].[Timesheets] ([TS_ID], [Emp_ID], [Date], [Module_ID], [Task_ID], [Description], [Billable?], [Status], [YYYY-MM-DD_Monday]) VALUES (N'TS001', N'IS005', CAST(N'2022-03-10' AS Date), N'MOD_001', N'TASK01', N'Project is under development', N'Yes', N'Pending', CAST(N'2022-03-22' AS Date))
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
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  StoredProcedure [dbo].[GetdetByID]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  StoredProcedure [dbo].[GetEmp]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  StoredProcedure [dbo].[POST]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  StoredProcedure [dbo].[SaveUser]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  StoredProcedure [dbo].[Sp_Employee]    Script Date: 31-03-2022 16:12:26 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERT_EMP]    Script Date: 31-03-2022 16:12:26 ******/
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
@State_Name varchar(max),
@Country_ID varchar(50),
@Contact_Number varchar(max),
@Emp_Type varchar(50),
@Department varchar(max),
@Reporting_Manager varchar(max),
@WorkEXPDOJ varchar(50),
@Designation varchar(max),
@DOJ date,
@Location varchar(50),
@Band varchar(max),
@level varchar(max)


AS
BEGIN
SET NOCOUNT ON;


   --select E.Emp_Name,E.Emp_ID,E.DOB,E.Email_ID,E.Gender,E.Contact_Number,E.Address,S.State_ID,C.Country_ID,E.PinCode
   --From Employee E inner join State S 
   --on E.State_Name = S.State_Name
   --inner join Country C on E.Country_ID = C.Country_ID
	
	
	INSERT INTO [dbo].[Employee]
		([Emp_Name],[Emp_ID],[DOB],[Gender],[Email_ID],[Address],[PinCode],[State_Name],[Country_ID],[Contact_Number],
		[Emp_Type],[Department],[Designation],[DOJ],[Level],[Band],[Reporting_Manager],[Location],[WorkEXPDOJ])  
        VALUES (@Emp_Name,@Emp_ID,@DOB,@Gender, @Email_ID,@Address,@PinCode,@State_Name,@Country_ID,@Contact_Number,@Emp_Type,@Department,
		@Designation,@DOJ,@level,@Band,@Reporting_Manager,@Location,@WorkEXPDOJ) 
    
	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_INSERT_EMP1]    Script Date: 31-03-2022 16:12:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_INSERT_EMP1]
	
@Emp_Name varchar(max),
@Emp_ID varchar(50),
@DOB date,
@Email_ID varchar(50),
@Gender varchar(50),
@Contact_Number varchar(max),
@Address varchar(max),
@PinCode varchar(50),
@State_ID varchar(50),
@Country_ID varchar(50)



AS
BEGIN
SET NOCOUNT ON;

   insert into Employee(Emp_Name,Emp_ID,DOB,Email_ID,Gender,Contact_Number,Address,PinCode)
   values(@Emp_Name,@Emp_ID,@DOB,@Email_ID,@Gender,@Contact_Number,@Address,@PinCode)
      insert into State(State_ID,Country_ID)values(@State_ID,@Country_ID)                                          
                      




	
	
	
END
GO
USE [master]
GO
ALTER DATABASE [TRIMMS] SET  READ_WRITE 
GO
