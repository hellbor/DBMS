USE PV_319_Import;
SET DATEFIRST 1;
GO

CREATE FUNCTION GetHolidaysDuration (@name AS NVARCHAR(150))RETURNS TINYINT
BEGIN
	RETURN (SELECT duration FROM Holidays WHERE holiday_name LIKE @name);
END