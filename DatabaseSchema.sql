CREATE TABLE Building(
    BuildingID varchar(),
    Name varchar(20),
    CampusName varchar(),
    PRIMARY KEY(BuildingID));

CREATE TABLE Technician(
    TechnicianID numeric(5),
    Name varchar(20),
    OfficeNumber Varchar(),
    PhoneNumber varchar(),
    Email varchar(),
    PRIMARY KEY(TechnicianID));

CREATE TABLE Classroom(
    RoomID Varchar(), 
    BuidlingID varchar(),
    RoomType char(1),
    Capacity numeric(2),
    NumPCs numeric(2),
    NumProjectors int(2),
    TechnicianID numeric(1),
    PRIMARY KEY(RoomID),
    FOREIGN KEY(BuildingID) references Building,
    FOREIGN KEY(TechnicianID) references Technician);

CREATE TABLE Instructor(
    InstructorID varchar(),
    Name varchar(),
    OfficeNumber varchar(),
    Email varchar(),
    PRIMARY KEY(InstructorID));

CREATE TABLE Course(
    CourseID varchar(),
    Year numeric(),
    Semester varchar(),
    Section varchar()
    PRIMARY KEY(CourseID));
