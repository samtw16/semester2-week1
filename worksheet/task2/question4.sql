-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
.mode columns
.headers on

SELECT student.StudentId, student.FirstName, student.LastName, Course.CourseName
From student
Join Enrolment 
ON Enrolment.studentID = student.studentID
Join Course
ON course.CourseID = enrolment.CourseID;


