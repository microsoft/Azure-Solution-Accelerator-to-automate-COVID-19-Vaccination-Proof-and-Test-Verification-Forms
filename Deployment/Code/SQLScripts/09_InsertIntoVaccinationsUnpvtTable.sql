-- SQL script to create new vaccination unpivoted table from unpivoting the vaccination table

CREATE TABLE dbo.VaccinationUnpvt (id varchar(255),UserEmail varchar(255),
	UserID int,
	LastName varchar(255),
	FirstName varchar(255),
	MiddleInitial varchar(255),
	DateOfBirth varchar(255),
	PatientNumber varchar(255),
    CDCLogoPresent bit,
	Dose varchar(255),
	Manufacturer varchar(255),
	LotNumber varchar(255),
	Date date,
	Site varchar(255),
    UserNotes varchar(255),
	CreatedDate date,
	FormSentFrom varchar(255)
	);

INSERT INTO dbo.VaccinationUnpvt
SELECT id, UserEmail, UserID, LastName, FirstName, MiddleInitial, DateOfBirth, PatientNumber, CDCLogoPresent, New1, Manufacturer, LotNumber, Date, Site, UserNotes, CreatedDate, FormSentFrom FROM
(SELECT * FROM   dbo.Vaccination) V1
	UNPIVOT (Manufacturer FOR New1 IN (FirstDoseManufacturer, SecondDoseManufacturer, OtherDose1Manufacturer, OtherDose2Manufacturer)) AS u1
	UNPIVOT (LotNumber FOR New2 IN (FirstDoseLotNumber, SecondDoseLotNumber, OtherDose1LotNumber, OtherDose2LotNumber)) AS u2
  	UNPIVOT (Date FOR New3 IN (FirstDoseDate, SecondDoseDate, OtherDose1Date, OtherDose2Date)) AS u3
  	UNPIVOT (Site FOR New4 IN (FirstDoseSite, SecondDoseSite, OtherDose1Site, OtherDose2Site)) AS u4;


Update dbo.VaccinationUnpvt
Set Dose = Replace(Dose , 'Manufacturer','')

SELECT *
FROM dbo.VaccinationUnpvt