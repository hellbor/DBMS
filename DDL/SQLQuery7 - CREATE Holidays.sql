USE PV_319_Import;
GO

DROP TABLE DaysOFF;
DROP TABLE Holidays;
GO

CREATE TABLE Holidays
(
	holiday_id		TINYINT		PRIMARY KEY,
	holiday_name	NVARCHAR(150) NOT NULL,
	duration		TINYINT,
	[month]			TINYINT,
	[day]			TINYINT
);
CREATE TABLE DaysOFF
(
	[date]	DATE	PRIMARY KEY,
	holiday	TINYINT CONSTRAINT	FK_DO_Holidays REFERENCES Holidays(holiday_id)
);
GO

INSERT Holidays
		(holiday_id, holiday_name, duration, [month],[day])
VALUES	
		(1,		N'Новогодние каникулы',		14,	NULL, NULL),
		(2,		N'23 февраля',				3,		2,	23),
		(3,		N'8 марта',					3,		3,	8),
		(4,		N'Пасха',					3,	NULL, NULL),
		(5,		N'Майские каникулы',		10,		5,	1),
		(6,		N'Летние каникулы',			14,	NULL,NULL),
		(7,		N'День народного единства',	4,	11,	4)
;

--ALTER TABLE Holidays
--ADD		duration	TINYINT;
--GO

--DELETE FROM Holidays WHERE holiday_id > 7

--UPDATE	Holidays	SET	duration = 14	WHERE	holiday_id = 1;
--UPDATE	Holidays	SET	duration =  3	WHERE	holiday_id = 2;
--UPDATE	Holidays	SET	duration =  3	WHERE	holiday_id = 3;
--UPDATE	Holidays	SET	duration =  3	WHERE	holiday_id = 4;
--UPDATE	Holidays	SET	duration = 10	WHERE	holiday_id = 5;
--UPDATE	Holidays	SET	duration = 14	WHERE	holiday_id = 6;
--UPDATE	Holidays	SET	duration =  4	WHERE	holiday_id = 7;
--;

SELECT * FROM Holidays;