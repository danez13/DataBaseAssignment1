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

--Query 3: Timetable for Viertes Haus L131 on Mondays
SELECT 
  ClassroomSchedule.SlotTime AS StartTime,
  TIME_ADD(ClassroomSchedule.SlotTime, INTERVAL 1 HOUR) AS EndTime,
  Course.Code AS CourseName,
  Instructor.Name AS InstructorName
FROM 
  ClassroomSchedule
JOIN Course ON ClassroomSchedule.CourseID = Course.CourseID
JOIN InstructorCourse ON Course.CourseID = InstructorCourse.CourseID
JOIN Instructor ON InstructorCourse.InstructorID = Instructor.InstructorID
WHERE 
  ClassroomSchedule.RoomID = 'L131' 
  AND DAYOFWEEK(ClassroomSchedule.SlotDate) = 2 -- Monday
  AND ClassroomSchedule.CourseID IS NOT NULL
ORDER BY ClassroomSchedule.SlotTime;

