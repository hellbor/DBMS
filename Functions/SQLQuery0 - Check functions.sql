USE PV_319_Import;
--SET DATEFIRST 1;
GO

PRINT(dbo.GetGroupID(N'PV_319'));
PRINT(dbo.GetDisciplineID(N'Hardware%'));
--EXEC sp_PrintScheduleForGroup N'PV_319';
PRINT(dbo.CountSpentLessons(N'PV_319', N'Процедурное программирование%'));
PRINT(dbo.GetNewYearHolidaysStartDate(2023));
PRINT(dbo.GetSummerHolidaysStart(2023));
PRINT(dbo.GetHolidayDuration(N'Летние%'));

PRINT('---------------------------------------')
PRINT(dbo.GetHolidayStartDay(N'Летние%', 2025));