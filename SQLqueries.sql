--Query 1: Display in-progress tickets for a specific date, ordered by time
SELECT TicketID, IncidentTime, RoomID, InstructorID, TechnicianID, IssueType, Description, Status
FROM Ticket
WHERE IncidentDate = '2024-10-08' AND Status = 'In-Progress'
ORDER BY IncidentTime;

