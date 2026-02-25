-- Find the 5 youngest students in the database.
-- Expected Columns:
-- StudentId, FirstName, LastName, DateOfBirth
.mode columns
.headers on

SELECT StudentId, FirstName, LastName, DateOfBirth
From student
Order by DateOfBirth DESC Limit 5;