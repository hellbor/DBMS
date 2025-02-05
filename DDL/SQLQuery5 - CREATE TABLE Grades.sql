USE PV_319_DDL;
GO

CREATE TABLE Grades
(
	student		INT,
	lesson		BIGINT,
	present		BIT			NULL,
	grade_1		TINYINT		NULL,
	grade_2		TINYINT		NULL,
	PRIMARY KEY(student,lesson),
	CONSTRAINT FK_G_student_2_Students	FOREIGN KEY(student)	REFERENCES Students(student_id),
	CONSTRAINT FK_G_lesson_2_Schedule	FOREIGN KEY(lesson)		REFERENCES Schedule(lesson_id)
);