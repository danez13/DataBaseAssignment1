--Query 1: Display in-progress tickets for a specific date, ordered by time
SELECT TicketID, IncidentTime, RoomID, InstructorID, TechnicianID, IssueType, Description, Status
FROM Ticket
WHERE IncidentDate = '2024-10-08' AND Status = 'In-Progress'
ORDER BY IncidentTime;

--Query 2: List all available slots for Owa Ehan C105
SELECT SlotTime 
FROM ClassroomSchedule
WHERE RoomID = 'C105' AND SlotDate BETWEEN '2024-10-01' AND '2024-10-07'
  AND CourseID IS NULL;
