USE PV_319_DDL;
GO

SELECT
			last_name + ' ' + first_name + ' ' + middle_name	AS N'Ф.И.О. преподавателя',
			COUNT(lesson_id)								AS N'Наименование дисциплины'
FROM		Students, Groups
WHERE		[group]=group_id
GROUP BY	group_name
ORDER BY	N'Количество студентов'
;