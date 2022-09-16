--Copyright (c) Microsoft Corporation.
--Licensed under the MIT License.

--SQL Statement to create Users Table
CREATE TABLE dbo.Users (
    UserID int,
    FirstName varchar(255),
    LastName varchar(255),
    Title varchar(255),
    Worklocation varchar(255),
    FormSentFrom varchar(255)
    );

--SQL Statement to create COVID Test Table
CREATE TABLE dbo.Tests (
	id varchar(255),
	UserID int,
    UserEmail varchar(255),
    FirstName varchar(255),
	LastName varchar(255),
	Worklocation varchar(255),
    Title varchar(255),
	TestDate date,
	TestLocationName varchar(255),
	TestAddress varchar(255),
    TestType varchar(255),
	Certify bit,
	Signature bit,
    SignedDate date,
	UserNotes varchar(255),
	CreatedDate date,
	FormSentFrom varchar(255)
	);


--SQL Statement to create COVID Vaccination Table
CREATE TABLE dbo.Vaccination (
	id varchar(255),
	UserEmail varchar(255),
	UserID int,
	LastName varchar(255),
	FirstName varchar(255),
	MiddleInitial varchar(255),
	DateOfBirth varchar(255),
	PatientNumber varchar(255),
	CDCLogoPresent bit,
	FirstDoseManufacturer varchar(255),
	FirstDoseLotNumber varchar(255),
	FirstDoseDate date,
	FirstDoseSite varchar(255),
	SecondDoseManufacturer varchar(255),
	SecondDoseLotNumber varchar(255),
	SecondDoseDate date,
	SecondDoseSite varchar(255),
	OtherDose1Manufacturer varchar(255),
	OtherDose1LotNumber varchar(255),
	OtherDose1Date date,
	OtherDose1Site varchar(255),
	OtherDose2Manufacturer varchar(255),
	OtherDose2LotNumber varchar(255),
	OtherDose2Date date,
	OtherDose2Site varchar(255),
	UserNotes varchar(255),
	CreatedDate date,
	FormSentFrom varchar(255)
);

--SQL Statement to create calendar Table
CREATE TABLE dbo.Calendar (
    id int,
    dt date,
    y int,
    m int,
    d int,
    ym int,
    dt_int int,
    m_name varchar(255),
    q int
);
