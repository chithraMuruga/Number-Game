use testing;
CREATE TABLE student (
ID int,
Name  varchar(255),
SubjectID int,
Marks int,
Attendance varchar(255),
Result varchar(50));
select * from student;
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('1', 'Rajesh', '1', '75', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('2', 'suresh', '1', '68', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('3', 'ajay', '2', '100', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('4', 'kiran', '4', '90', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('5', 'santhiya', '3', '-', 'absent', 'f')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('6', 'shankar', '3', '50', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('7', 'bala', '4', '10', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('8', 'sundar', '1', '80', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('9', 'john', '1', '0', 'absent', 'f')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('10', 'rickey', '3', '0', 'absent', 'f')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('11', 'abishek', '2', '34', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('12', 'arun', '2', '78', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('13', 'sanjay', '4', '0', 'absent', 'f')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('14', 'kumar', '1', '65', 'present', 'p')
INSERT INTO student (ID,Name,SubjectID,Marks,Attendance,Result) VALUES ('15', 'ganesh', '3', '90', 'present', 'p')

CREATE TABLE subjectTable (
subjectID int,
subjectName varchar(255));
select * from subjectTable;
INSERT INTO subjectTable (subjectID,subjectName) VALUES ('1', 'Maths')
INSERT INTO subjectTable (subjectID,subjectName) VALUES ('2', 'science')
INSERT INTO subjectTable (subjectID,subjectName) VALUES ('3', 'english')
INSERT INTO subjectTable (subjectID,subjectName) VALUES ('4', 'tamil')
SELECT * FROM student
INNER JOIN subjectTable
ON student.subjectID =SubjectTable.SubjectID;
SELECT COUNT(subjectName= 'english')
FROM subjectTable;
SELECT * FROM student WHERE marks < 50
SELECT COUNT(subjectName= 'science')
FROM subjectTable;
(SELECT COUNT(1) AS student ,
            IF(Marks>=50, 'PASS', 'FAIL') AS status
     FROM students
     GROUP BY IF(Marks>=50, 'PASS', 'FAIL')
     ) 



