CREATE TABLE Building(
    BuildingID varchar(),
    Name varchar(),
    CampusName varchar(),
    PRIMARY KEY(BuildingID));

CREATE TABLE Technician(
    TechnicianID numeric(),
    Name varchar(),
    OfficeNumber Varchar(),
    PhoneNumber varchar(),
    Email varchar(),
    PRIMARY KEY(TechnicianID));

CREATE TABLE Classroom(
    RoomID Varchar(), 
    BuidlingID varchar(),
    RoomType char(),
    Capacity numeric(),
    NumPCs numeric(),
    NumProjectors int(),
    TechnicianID numeric(),
    PRIMARY KEY(RoomID),
    FOREIGN KEY(BuildingID) references Building,
    FOREIGN KEY(TechnicianID) references Technician);
