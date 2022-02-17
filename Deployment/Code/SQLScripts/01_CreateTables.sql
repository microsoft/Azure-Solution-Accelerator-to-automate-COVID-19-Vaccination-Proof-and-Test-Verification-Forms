/**

SQL Statement to create Users Table

**/

CREATE TABLE dbo.Users (
	UserID int,
	FirstName varchar(255),
	LastName varchar(255),
	Title varchar(255),
	Worklocation varchar(255)
	);

/**

SQL Statement to create COVID Test Table

**/

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

/**

SQL Statement to create COVID Test Table

**/

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


/**