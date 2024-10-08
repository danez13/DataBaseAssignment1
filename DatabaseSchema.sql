CREATE TABLE Building(
    BuildingID varchar,
    Name varchar,
    CampusName varchar,
    PRIMARY KEY(BuildingID));

CREATE TABLE Technician(
    TechnicianID numeric,
    Name varchar,
    OfficeNumber Varchar,
    PhoneNumber varchar,
    Email varchar,
    PRIMARY KEY(TechnicianID));

CREATE TABLE Classroom(
    RoomID Varchar, 
    BuildingID varchar,
    RoomType char,
    Capacity numeric,
    NumPCs numeric,
    NumProjectors int,
    TechnicianID numeric,
    PRIMARY KEY(RoomID),
    FOREIGN KEY(BuildingID) references Building(BuidlingID),
    FOREIGN KEY(TechnicianID) references Technician(TechnicianID));

CREATE TABLE Instructor(
    InstructorID varchar,
    Name varchar,
    OfficeNumber varchar,
    Email varchar,
    PRIMARY KEY(InstructorID));

CREATE TABLE Course(
    CourseID varchar,
    Year numeric,
    Semester varchar,
    Section varchar,
    PRIMARY KEY(CourseID));

CREATE TABLE InstructorCourse(
    InstructorID numeric,
    CourseID numeric,
    PRIMARY KEY(InstructorID,CourseID),
    FOREIGN KEY(InstructorID) references Instructor(InstructorID),
    FOREIGN KEY(CourseID) references Course(CourseID));

CREATE TABLE ClassroomSchedule(
    RoomID varchar,
    SlotDate date,
    SlotStart time,
    SlotEnd time,
    CourseID numeric,
    PRIMARY KEY(RoomID,SlotDate, SlotStart, SlotEnd));

CREATE TABLE Ticket(
    TicketID numeric,
    IncidentDate Date,
    IncidentTime time,
    RoomID varchar,
    SlotStart time,
    SlotEnd time,
    InstructorID numeric,
    TechnicianID numeric,
    IssueType varchar,
    Description text,
    Status varchar,
    ResolutionDate date,
    ResolutionTime time,
    Notes time,
    PRIMARY KEY(TicketID),
    FOREIGN KEY(RoomID) references Classroom(RoomID),
    FOREIGN KEY(InstructorID) references Instructor(InstructorID),
    FOREIGN KEY(TechnicianID) references Technician(TechnicianID));