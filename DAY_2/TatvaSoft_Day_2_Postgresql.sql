
CREATE TABLE Country (
    Id SERIAL PRIMARY KEY,
    CountryName VARCHAR(200)
);

INSERT INTO Country (CountryName)
VALUES
('United States'),
('Canada'),
('United Kingdom'),
('Australia'),
('Germany');

SELECT * FROM Country;


CREATE TABLE City (
    Id SERIAL PRIMARY KEY,
    CountryId INT,
    CityName VARCHAR(200)
    -- FOREIGN KEY (CountryId) REFERENCES Country(Id)
);

INSERT INTO City (CountryId, CityName)
VALUES
(1, 'New York'),
(1, 'Los Angeles'),
(2, 'Toronto'),
(3, 'London'),
(4, 'Sydney'),
(5, 'Berlin');


SELECT * FROM City;

DELETE FROM City  WHERE  CountryId =11 ;
ALTER TABLE City RENAME 


CREATE TABLE MissionApplication (
    Id SERIAL PRIMARY KEY,
    MissionId INT,
    UserId INT,
    AppliedDate TIMESTAMP,
    Status BOOLEAN,
    Sheet INT
);

INSERT INTO MissionApplication (MissionId, UserId, AppliedDate, Status, Sheet)
VALUES
(1, 101, '2024-07-01 10:00:00', TRUE, 10),
(2, 102, '2024-07-02 11:30:00', FALSE, 20);

SELECT * FROM MissionApplication;


CREATE TABLE Missions (
  Id SERIAL PRIMARY KEY,
  MissionTitle varchar(255) NOT NULL,
  MissionDescription text,
  MissionOrganisationName varchar(200),
  MissionOrganisationDetail text,
  CountryId int , 
  CityId int ,
  StartDate date,
  EndDate date,
  MissionType varchar(200),
  TotalSheets int,
  RegistrationDeadline date,
  MissionThemeId varchar(200),
  MissionSkillId varchar(200),
  MissionImages varchar(200),
  MissionDocuments varchar(200),
  MissionAvailability varchar(200),
  MissionVideoUrl varchar(200)
);

INSERT INTO Missions (
  MissionTitle,
  MissionDescription,
  MissionOrganisationName,
  MissionOrganisationDetail,
  CountryId,
  CityId,
  StartDate,
  EndDate,
  MissionType,
  TotalSheets,
  RegistrationDeadline,
  MissionThemeId,
  MissionSkillId,
  MissionImages,
  MissionDocuments,
  MissionAvailability,
  MissionVideoUrl
)
VALUES (
  'Clean Water Initiative in Rural Africa',
  'To provide clean water access to remote villages.',
  'WaterAid',
  'A global organization focused on water access.',
  10, 
  25,
  '2024-10-01',
  '2024-11-30',
  3, 
  5,
  '2024-08-31',
  2, 
  1, 
  'images/clean_water_1.jpg,images/clean_water_2.png',
  'documents/clean_water_report.pdf',
  'Full-time, Part-time',
  'https://www.youtube.com/watch?v=clean_water_video'
);

SELECT * FROM Missions;


 CREATE TABLE MissionSkill(
	 id SERIAL PRIMARY KEY,
	 SkillName varchar(200) ,
	 Status varchar(200)
 );

INSERT INTO MissionSkill (SkillName)
VALUES ('Communication Skills'),
       ('Teamwork'),
       ('Problem-Solving Skills' );

SELECT * FROM MissionSkill;


CREATE TABLE MissionTheme(
  id SERIAL PRIMARY KEY,
  ThemeName varchar(200) ,
  Status varchar(200)
);

INSERT INTO MissionTheme (ThemeName, Status)
VALUES ('Education & Development', 'Active'),
       ('Animal Welfare', 'Active'),
       ('Cultural Exchange', 'Active'),
       ('Medical & Health Care', 'Active');

SELECT * FROM MissionTheme;


CREATE TABLE Users(
  Id SERIAL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  PhoneNumber varchar(20),
  EmailAddress varchar(20)  NOT NULL UNIQUE,
  USerType varchar(200),
  Password varchar(200) NOT NULL
);

INSERT INTO Users
	(FirstName,
	LastName,
	PhoneNumber, EmailAddress, UserType,Password)
VALUES ('John', 'Doe',
	'(555) 555-5555',
	'john.doe@example.com', 'Administrator','hello');

SELECT * FROM Users;



CREATE TABLE UserDetail(

Id SERIAL PRIMARY KEY,
UserId int ,
Name varchar(50) NOT NULL,
Surname varchar(50) NOT NULL,
EmployeeId varchar(200) NOT NULL,
Manager varchar(200) ,
Title varchar(200) NOT NULL,
Department varchar(200),
MyProfile varchar(200) , 
WhyIVolunteer varchar(200),
CountryId int,
CityId int,
Avilability varchar(200),
LinkdInUrl varchar(200),
MySkills varchar(200),
UserImage varchar(200),
Status boolean 
	);


INSERT INTO UserDetail
	(UserId, Name, Surname, EmployeeId,
	Manager, Title, Department, MyProfile,
	WhyIVolunteer, CountryId, CityId,
	Avilability, LinkdInUrl, MySkills,
	UserImage, Status)
VALUES (1, 'John', 'Doe', '123456', 
	'Jane Smith', 'Software Engineer',
	'Engineering',
	'https://www.example.com/profile/john.doe',
	'To give back to the community',
	1, 2, 'Full-time',
	'https://www.linkedin.com/in/john-doe-12345',
	'Programming, Communication, Teamwork',
	'/images/users/john.doe.jpg',
	'true');

SELECT * FROM UserDetail;


CREATE TABLE UserSkill(
  id SERIAL PRIMARY KEY,
  Skill varchar(200) ,
  UserId int
);

INSERT INTO UserSkill (Skill, UserId)
VALUES ('Communication Skills', 2),
       ('Teamwork', 3),
       ('Problem-Solving Skills', 2);

SELECT * FROM UserSkill;

