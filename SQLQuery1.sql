create database CSE_3B_410

---------------LAB 6------------------
----Display the result of 5 multiply by 30.SELECT 5 * 30

----Find out the absolute value of -25, 25, -50 and 50
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

----Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2), CEILING(25.7), CEILING(-25.7)

----Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2), FLOOR(25.7), FLOOR(-25.7)

----Find out remainder of 5 divided 2 and 5 divided by 3.SELECT 5%2 , 5%3

----Find out value of 3 raised to 2nd power and 4 raised 3rd power.SELECT POWER(3,2),POWER(4,3)

----Find out the square root of 25, 30 and 50
SELECT SQRT(25), SQRT(30), SQRT(50)

----Find out the square of 5, 15, and 25.
SELECT SQUARE(5), SQUARE(15), SQUARE(25)

----Find out the value of PI.
SELECT PI()

----Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2), ROUND(157.732,0), ROUND(157.732,-2)

----Find out exponential value of 2 and 3.
SELECT EXP(2), EXP(3)

----Find out logarithm having base e of 10 and 2.
SELECT LOG(10), LOG(2)

----Find out logarithm having base b having value 10 of 5 and 100.SELECT LOG10(5), LOG10(100)----Find sine, cosine and tangent of 3.1415.SELECT SIN(3.1415), COS(3.1415), TAN(3.1415)----Find sign of -25, 0 and 25.SELECT SIGN(-25), SIGN(0), SIGN(25)----Generate random number using function.SELECT RAND()----------PART B---------CREATE TABLE EMP_MASTER(	EMPNO INT,	EMPNAME VARCHAR(50),	JOININGDATE DATETIME,	SALARY DEC(8,2),	COMMISSION INT,	CITY VARCHAR(50),	DEPTCODE VARCHAR(20))INSERT INTO EMP_MASTER VALUES(101,'KEYUR','2002-01-5',12000,4500,'RAJKOT','3@g'),(102,'HARDIK','2004-02-15',14000,2500,'AHMEDABAD','3@'),(103,'KAJAL','2006-03-14',15000,3000,'BARODA','3-GD'),(104,'BHOOMI','2005-06-23',12500,1000,'AHMEDABAD','1A3D'),(105,'HARMIT','2004-02-15',14000,2000,'RAJKOT','312A')----Display the result of Salary plus Commission.SELECT *, SALARY + COMMISSION AS TOTAL_SALARY FROM EMP_MASTER----Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.SELECT CEILING(55.2), CEILING(35.7), CEILING(-55.2)----Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.SELECT FLOOR(55.2), FLOOR(35.7), FLOOR(-55.2)----Find out remainder of 55 divided 2 and 55 divided by 3.SELECT 55%2 , 55%3----Find out value of 23 raised to 2nd power and 14 raised 3rd power.SELECT POWER(23,2), POWER(14,3)---------PART C--------------Find out the square root of 36, 49 and 81.SELECT SQRT(36), SQRT(49), SQRT(81)----Find out the square of 3, 9, and 12.SELECT SQUARE(3), SQUARE(9), SQUARE(12)----Find out round value of 280.8952 for 2, 0 and -2 decimal points.SELECT ROUND(280.8952,2), ROUND(280.8952,0), ROUND(280.8952,-2)----Find sine, cosine and tangent of 4.2014.SELECT SIN(4.2014), COS(4.2014), TAN(4.2014)----. Find sign of -55, 0 and 95.SELECT SIGN(-55), SIGN(0), SIGN(95)--------------STRING FUNCTION------------------PART A--Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
select LEN(null), LEN('hello'), LEN('')

--Display your name in lower & upper case.
select lower('BRIND'), upper('brind')

--Display first three characters of your name.
select left('brind',3)

--Display 3rd to 10th character of your name.
select substring('brind sanandiya',3,8)

--Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
select REPLACE('abc123efg','123','XYZ'), REPLACE('abcabcabc','abc','ab5')

--Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
select ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII(0),ASCII(9)

--Write a query to display character based on number 97, 65,122,90,48,57
select CHAR(97),CHAR(65),char(122),char(90),char(48),char(57)

--Write a query to remove spaces from left of a given string ‘hello world ‘.
select lTRIM('                    hello world ')


--Write a query to remove spaces from right of a given string ‘ hello world ‘.
select RTRIM('hello world    ')

--Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
select left('SQL server',3),right('SQL server',5)

-- Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
select convert(decimal,'1234.56')

--Write a query to convert a float 10.58 to integer (Use cast and convert function).
select convert(int,10.58)

--Put 10 space before your name using function.
select space(10)+'brind'

--Combine two strings using + sign as well as CONCAT ().
select CONCAT('brind','sanandiya'),'brind'+'sanandiya'

--Find reverse of “Darshan”.
select REVERSE('darshan')

--Repeat your name 3 times.
select REPLICATE('brind',3)



----PART B


CREATE TABLE STUDENT(
	StuId INT,
	FirstName VARCHAR(25),
	LastName VARCHAR(25),
	Website VARCHAR(50),
	City VARCHAR(25),
	Address VARCHAR(100)
);

SELECT * FROM STUDENT

INSERT INTO STUDENT VALUES 
(1011,'Keyur','Patel','technothenet.com','Rajkot','A-303 ''Vasant Kunj'' Rajkot'),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram Krupa",Raiya Road'),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot,near garden'),
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','"Jig''s Home",Narol'),
(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55,Raj Residency'),
(1066,'Ashok','Jani',NULL,'Baroda','A502, Club House Building')



--Find the length of FirstName and LastName columns.
select len(firstname),len(lastname) from STUDENT

--Display FirstName and LastName columns in lower & upper case.
select upper(firstname), lower(firstname),UPPER(lastname),lower(lastname) from STUDENT

--Display first three characters of FirstName column.
select left(firstname,3) from student

--Display 3rd to 10th character of Website column.
select SUBSTRING(website,3,8) from STUDENT

--Write a query to display first 4 & Last 5 characters of Website column.
select left(website,4),right(website,5) from STUDENT



----PART C

--Put 10 space before FirstName using function.
select space(10)+FirstName from STUDENT

--Combine FirstName and LastName columns using + sign as well as CONCAT ().
select CONCAT(firstname,lastname),FirstName+lastname from STUDENT

--Combine all columns using + sign as well as CONCAT ().
select concat(StuId,FirstName,LastName,Website,City,Address) from STUDENT

--Find reverse of FirstName column.
select REVERSE(firstname) from STUDENT

--Repeat FirstName column 3 times
select replicate(firstname,3) from STUDENT

--Give the Names which contains 5 characters.
select firstname from STUDENT where len(firstname)=5

--Combine the result as <FirstName> Lives in <City>.
select concat(firstname,' lives in ',city) from STUDENT

--Combine the result as Student_ID of < FirstName > is <StuID> 
select 'Student_ID of ' + firstname + 'is' + cast(stuid as varchar) from STUDENT



--DATE FUNCTION--

----PART A

--Write a query to display the current date & time. Label the column Today_Date.
select getdate() as Today_Date

--Write a query to find new date after 365 day with reference to today.
select GETDATE() + 365

--Display the current date in a format that appears as may 5 1994 12:00AM.
select CONVERT(varchar(50),getdate(),100)

-- Display the current date in a format that appears as 03 Jan 1995.
select CONVERT(varchar(50),getdate(),106)

--Display the current date in a format that appears as Jan 04, 96.
select CONVERT(varchar(50),getdate(),7)

--Write a query to find out total number of months   31-Dec-08 and 31-Mar-09.
select DATEDIFF(month,'2008/12/31','2009/03/31')

--Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
select DATEDIFF(year,'2012/01/25','2010/09/14')

--Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
select DATEDIFF(hour,'2012/01/25 7:00','2012/01/26 10:30')

--Write a query to extract Day, Month, Year from given date 12-May-16.
select DAY('2016/05/12'),MONTH('2016/05/12'),YEAR('2016/05/12')

--Write a query that adds 5 years to current date.
select DATEADD(YEAR, 5, GETDATE())

-- Write a query to subtract 2 months from current date.
select DATEADD(MONTH, -2, GETDATE())

--Extract month from current date using datename () and datepart () function.
select DATENAME(month,getdate())
select DATEpart(month,getdate())

--Write a query to find out last date of current month.
select EOMONTH(getdate())--Calculate your age in years and months.select dateadd(day,30,GETDATE())--------------------------------------------------------------------------LAB 10------PART Acreate table STUDENT_INFO(	RNO INT,	NAME VARCHAR(10),	BRANCH VARCHAR(5),	SPI DECIMAL(8,2),	BKLOG INT)insert into	STUDENT_INFO values(101,'RAJU','CE',8.80,0),(102,'AMIT','CE',2.20,3),(103,'SANJAY','ME',1.50,6),(104,'NEHA','EC',7.65,1),(105,'MEERA','EE',5.52,2),(106,'MAHESH','EC',4.50,3)drop table STUDENT_INFO--Create a view Personal with all columns.
create view Personal as select * from STUDENT_INFO
select * from Personal

--Create a view Student_Details having columns Name, Branch & SPI.
create view Student_details as select NAME,BRANCH,SPI from STUDENT_INFO
select * from Student_details

--Create a view AcademicData having columns RNo, Name, Branch.
create view AcademicData as select RNO,NAME,BRANCH from STUDENT_INFO
select * from AcademicData

--Create a view Student_ bklog having all columns but students whose bklog more than 2.
create view Student_bklog as select * from STUDENT_INFO where BKLOG > 2
select * from Student_bklog

--Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.
create view Student_pattern as select RNO,NAME,BRANCH from STUDENT_INFO where NAME like '____'
select * from Student_pattern

--Insert a new record to AcademicData view. (107, Meet, ME)
insert into AcademicData values (107, 'Meet', 'ME')
select * from AcademicData

--Update the branch of Amit from CE to ME in Student_Details view.
update Student_details set BRANCH = 'ME' where NAME='Amit'
select * from Student_details

--Delete a student whose roll number is 104 from AcademicData view.
delete AcademicData where RNO = 104
select * from AcademicData



---PART B

--Create a view that displays information of all students whose SPI is above 8.5
create view SPIABOVE as select * from STUDENT_INFO where SPI>8.5
select * from SPIABOVE


--Create a view that displays 0 backlog students.
create view NOBACK as select * from STUDENT_INFO where BKLOG = 0select * from noback--Create a view Computerview that displays CE branch data only.create view Computerview as select * from STUDENT_INFO where BRANCH = 'ce'
select * from Computerview


---PART C

--Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
create view Result_EC as select name,SPI from student_info where spi<5 and branch = 'ec'
select * from Result_EC

--Update the result of student MAHESH to 4.90 in Result_EC view.
update Result_EC set spi = 4.90 where name = 'mahesh'
select * from Result_EC

--Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.
create view Stu_Bklog as select rno,name,bklog from student_info where name like 'm%' and bklog > 5
select * from Stu_Bklog

--Drop Computerview form the database.
drop view Computerview



-------------------------------------------------------


----LAB 11

create table STU_INFO(
	RNO INT,
	NAME VARCHAR(10),
	BRANCH VARCHAR(5),
)

CREATE TABLE RESULT(
	RNO INT,
	SPI DECIMAL(5,2)
)

CREATE TABLE EMPLOYEE_MASTER(
	EMPLOYEENO VARCHAR(5),
	NAME VARCHAR(10),
	MANAGERNO VARCHAR(5)
)
DROP TABLE EMPLOYEE_MASTER

insert into STU_INFO values
(101,'RAJU','CE'),
(102,'AMIT','CE'),
(103,'SANJAY','ME'),
(104,'NEHA','EC'),
(105,'MEERA','EE'),
(106,'MAHESH','ME')


INSERT INTO RESULT VALUES
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9)

INSERT INTO EMPLOYEE_MASTER VALUES
('E01','TARUN',NULL),
('E02','ROHAN','E02'),
('E03','PRIYA','E01'),
('E04','MILAN','E03'),
('E05','JAY','E01'),
('E06','ANJANA','E04')


----PART A

--Combine information from student and result table using cross join or Cartesian product.
select * from STU_INFO cross join RESULT

--Perform inner join on Student and Result tables.
select * from STU_INFO S inner join RESULT R on s.RNO=r.RNO    

-- Perform the left outer join on Student and Result tables.
select * from STU_INFO s left outer join RESULT r on s.rno = r.rno

--Perform the right outer join on Student and Result tables.
select * from stu_info s right outer join result r on s.rno = r.rno

-- Perform the full outer join on Student and Result tables.
select * from STU_INFO s full outer join RESULT r on s.rno = r.rno

-- Display Rno, Name, Branch and SPI of all students.
select s.rno, name, branch, spi from STU_INFO s full outer join RESULT r on r.RNO = s.RNO 

--Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select s.rno, name, branch, spi from stu_info s left outer join result r on s.rno = r.rno where BRANCH = 'ec'

--Display average result of each branch.
select avg(spi), branch from STU_INFO s join RESULT r on s.rno = r.rno group by branch

-- Display average result of CE and ME branch.
select avg(spi), branch from STU_INFO s join RESULT r on s.rno = r.rno group by BRANCH having BRANCH = 'me' and BRANCH = 'ce'


----PART B

--Display average result of each branch and sort them in ascending order by SPI.
select avg(spi),branch from stu_info s join result r on s.rno = r.RNO group by BRANCH order by avg(spi)

--Display highest SPI from each branch and sort them in descending order.select max(spi), branch from stu_info s join result r on s.rno = r.RNO group by BRANCH order by max(spi)

----PART C

--Retrieve the names of employee along with their manager’s name from the Employee table.
select e.name,r.name from employee_master e left outer join employee_master r on e.managerno = r.employeeno