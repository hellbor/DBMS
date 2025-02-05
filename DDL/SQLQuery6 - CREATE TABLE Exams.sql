GO

CREATE TABLE Exams
(
	student		INT,
	lesson		BIGINT,
	grade		TINYINT,
	PRIMARY KEY(student,lesson),
	CONSTRAINT FK_E_Students FOREIGN KEY(student) REFERENCES Students(student_id),
	CONSTRAINT FK_E_Schedule FOREIGN KEY(lesson)  REFERENCES Schedule(lesson_id)
);