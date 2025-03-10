﻿USE PV_319_Import;
GO

SET DATEFIRST 1;

--DELETE FROM Schedule;
--SELECT * FROM Schedule;

SELECT
		[Группа]		=	group_name,
		[Дисциплина]	=	discipline_name,
		[Преподаватель] =	FORMATMESSAGE(N'%s %s %s', last_name, first_name, middle_name),
		[День]			=	DATENAME(WEEKDAY, [date]),
		[Дата]			=	[date],
		[Время]			=	[time],
		[Статус]		=	IIF(spent=1, N'Проведено', 'Запланировано')
FROM	Schedule, Groups, Disciplines, Teachers
WHERE	[group]			=	group_id
AND		discipline		=	discipline_id
AND		teacher			=	teacher_id
;