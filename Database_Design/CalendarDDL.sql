CREATE TABLE [dbo].[CalendarDim](
	[DayID] [int] NULL,
	[DateValue] [date] NOT NULL,
	[Year] [int] NULL,
	[Quarter] [int] NULL,
	[Month] [int] NULL,
	[MonthName] [varchar](10) NULL,
	[MonthShort] [varchar](3) NULL,
	[Week] [int] NULL,
	[Day] [int] NULL,
	[DayName] [varchar](10) NULL,
	[DayShort] [varchar](3) NULL,
	[IsWeekday] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateValue] ASC
)
)

