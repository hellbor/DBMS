USE PV_319_Import;
GO

EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'%UML%', N'Ковтун', N'2024-08-10', N'18:30';

EXEC sp_PrintScheduleForGroup N'PV_319';
EXEC sp_PrintScheduleForGroupPeriod N'PV_319', '2024-06-01', '2024-09-01';
--SELECT * FROM Schedule;