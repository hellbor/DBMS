USE PV_319_Import;
SET DATEFIRST 1;
GO

--PRINT(dbo.GetGroupID(N'PV_319'));
--PRINT(dbo.GetDisciplineID(N'Hardware%'));
----EXEC sp_PrintScheduleForGroup N'PV_319';
--PRINT(dbo.CountSpentLessons(N'PV_319', N'Процедурное программирование%'));
--PRINT(dbo.GetNewYearHolidaysStartDate(2023));
--PRINT(dbo.GetSummerHolidaysStart(2023));
--PRINT(dbo.GetHolidayDuration(N'Летние%'));

--PRINT('---------------------------------------')
--DECLARE @holiday AS NVARCHAR(150) = N'Пас%';
--EXEC sp_GetHolidaysStartDate 2025;
--PRINT(dbo.GetHolidaysStartDate(N'Пас%', 2025));
--PRINT(dbo.GetEasterDate(2025));
--SELECT holiday_name FROM Holidays WHERE holiday_name LIKE @holiday;
PRINT(dbo.GetEasterDate(2025));
PRINT(dbo.GetLastDateForGroup(N'PV_319'));
--DECLARE @date AS DATE = (SELECT MAX([date]) FROM Schedule WHERE [group] = dbo.GetGroupID(N'PV_319'));
--PRINT(@date);
--PRINT(dbo.GetMaxLearningDayFor(N'PV_319'));
--EXEC sp_GetMaxLearningDayFor N'PV_319';
PRINT(dbo.GetNextLearningDayFor(N'PV_319'));
EXEC sp_PrintScheduleForGroup N'PV_319'