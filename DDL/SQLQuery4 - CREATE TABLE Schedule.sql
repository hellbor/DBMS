USE PV_319_DDL;
GO

CREATE TABLE Schedule
(
	lesson_id	BIGINT			PRIMARY KEY,
	date		DATE			NOT NULL,
	time		time(1)			NOT NULL,
	subject		NVARCHAR(256)		NULL,
	spent		BIT				NOT NULL,
	[group]		INT				NOT NULL,
	teacher		INT				NOT NULL,
	discipline	SMALLINT		NOT NULL,
	CONSTRAINT FK_S_lesson_2_Teachers			FOREIGN KEY(teacher)		REFERENCES Teachers(teacher_id),
	CONSTRAINT FK_S_lesson_2_Groups				FOREIGN KEY([group])		REFERENCES Groups(group_id),
	CONSTRAINT FK_S_lesson_2_Disciplines		FOREIGN KEY(discipline)		REFERENCES Disciplines(discipline_id)
);