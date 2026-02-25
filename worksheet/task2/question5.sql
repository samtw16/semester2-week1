-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
.mode columns
.headers on


SELECT student.StudentId, student.FirstName, student.LastName, SUM(Course.Credits) AS TotalCreditsPassed
FROM student
join Enrolment
on Enrolment.StudentId = student.StudentId
Join Course
ON course.CourseID = enrolment.CourseID
WHERE enrolment.grade >= 40
Group By student.StudentID, student.FirstName, student.LastName;

