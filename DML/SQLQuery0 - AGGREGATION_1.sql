USE PV_319_DDL;
GO

SELECT
			last_name + ' ' + first_name + ' ' + middle_name	AS N'�.�.�. �������������',
			COUNT(lesson_id)								AS N'������������ ����������'
FROM		Students, Groups
WHERE		[group]=group_id
GROUP BY	group_name
ORDER BY	N'���������� ���������'
;