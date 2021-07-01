-- Cleansing and selecting required columns from the DimData table......

SELECT [datekey],
       [fulldatealternatekey]      AS Date,
       --,[DayNumberOfWeek]
       [englishdaynameofweek]      AS Weekname,
       --,[SpanishDayNameOfWeek]
       --,[FrenchDayNameOfWeek]
       [daynumberofmonth]          AS Day,
       --,[DayNumberOfYear]
       [weeknumberofyear]          AS WeekNr,
       [englishmonthname]          AS Month,
       LEFT([englishmonthname], 3) AS MonthShort,
       --,[SpanishMonthName]
       --,[FrenchMonthName]
       [monthnumberofyear]         AS MonthNr,
       [calendarquarter]           AS Quarter,
       [calendaryear]              AS Year
--,[CalendarSemester]
--,[FiscalQuarter]
--,[FiscalYear]
--,[FiscalSemester]
FROM   [AdventureWorksDW2019].[dbo].[dimdate] 
WHERE CalendarYear>=2019
