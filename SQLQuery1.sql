create database CSE_3B_410

----LAB 1


Create table Deposit
(
   Actno int,
   CName varchar(50),
   BName varchar(50),
   Amount decimal(8,2),
   Adate datetime,

)
INSERT INTO DEPOSIT VALUES
(101,'ANIL','VRCE','1000.00','1995/3/1'),
(102,'SUNIT','AJNI','5000.00','1996/1/4'),
(103,'MEHUL','KAROLBAGH','3500.00','1995/11/17'),
(104,'MADHURI','CHANDI','1200.00','1995/12/17'),
(105,'PRAMOD','M.G.ROAD','3500.00','1996/7/27'),
(106,'SANDIP','ANDHERI','2000.00','1996/3/31'),
(107,'SHIVANI','VIHAR','1000.00','1995/9/5'),
(108,'KRANTI','NEHRU PLACE','5000.00','1995/7/2'),
(109,'MINU','POWAL','7000.00','1995/8/10')

Create table BRANCH
(
   BNAME VARCHAR(50),
   CITY VARCHAR(50),
)
INSERT INTO BRANCH VALUES
('VRCE','NAGPUR'),
('AJNI','NAGPUR'),
('KAROLBAGH','DEHLI'),
('CHANDI','DEHLI'),
('DHARAMPETH','NAGPUR'),
('M.G.ROAD','BANGLORE'),
('ANDHERI','BOMBAY'),
('VIHAR','BOMBAY'),
('NEHRU PLACE','DEHLI'),
('POWEL','BOMBAY')

CREATE TABLE CUSTOMERS
(
   CNAME VARCHAR(50),
   CITY VARCHAR(50),
)
INSERT INTO CUSTOMERS VALUES
('ANIL','CALCUTTA'),
('SUNIL','DEHLI'),
('MEHUL','BARODA'),
('MANDAR','PATNA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI','BOMBAY'),
('NAREN','BOMBAY')

CREATE TABLE BORROW
( 
  LOANNO INT,
  CNAME VARCHAR(50),
  BNAME VARCHAR(50),
  AMOUNT DECIMAL(8,2),
)

INSERT INTO BORROW VALUES
(201,'ANIL','VRCE','1000.00'),
(206,'MEHUL','AJNI','5000.00'),
(311,'SUNIL','DHARAMPETH','3000.00'),
(321,'MADHURI','ANDHERI','2000.00'),
(375,'PRAMOD','VIRAR','8000.00'),
(481,'KRANTI','NEHRU PLACE','3000.00')

--------------------------------------------------------------------------------


----Lab_2

--(part_A)

--Retrieve all data from table DEPOSIT.
Select * from deposit

--Retrieve all data from table BORROW.
Select * from borrow

--Retrieve all data from table CUSTOMERS.
select * from customers

--Display Account No, Customer Name & Amount from DEPOSIT.
select actno,cname,amount from deposit

-- Display Loan No, Amount from BORROW.
select loanno,amount from borrow

-- Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table.
select * from BORROW where bname = 'andheri'

--. Give account no and amount of depositor, whose account no is equals to 106 from deposit table. 
select actno,amount from deposit where actno=106

-- Give name of borrowers having amount greater than 5000 from borrow table.
select cname from borrow where amount>5000

-- Give name of customers who opened account after date '1-12-96' from deposit table.
select cname from deposit where adate >'1996/12/1'

-- Display name of customers whose account no is less than 105 from deposit table.
select cname from deposit where actno<105

-- Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (OR & IN)
select cname from customers where city='nagpur' or city='delhi'
select cname from CUSTOMERS where city in('nagpur','delhi')

-- Display name of customers with branch whose amount is greater than 4000 and account no is less than 105 from deposit table.
select cname,bname from deposit where amount>4000 and actno<105 

-- Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow table. (AND & BETWEEN)
select * from borrow where amount>=3000 and amount<=8000
select * from borrow where amount between 3000 and 8000

-- Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table. 
select * from deposit where bname<>'andheri' 

-- Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table.
select actno,cname,Amount from deposit where BName in('ajni','karolbagh','m.g.road') and actno<104


--lab2(part_B)

--1. Display all the details of first five customers from deposit table.
select top 5 * from customers 

--2. Display all the details of first three depositors whose amount is greater than 1000. 
select * from deposit where amount>1000

--3. Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to ‘ANDHERI’ from borrow table.
select top 5 loanno,cname from borrow where bname<>'andheri'

--4. Retrieve all unique cities using DISTINCT. (Use Customers Table)
select distinct city from customers
--5. Retrieve all unique branches using DISTINCT. (Use Branch Table)
select distinct bname from branch

--Part – C:
--1. Retrieve top 50% record from table BORROW.
select top 50 percent *from borrow 
--2. Display top 10% amount from table DEPOSIT.
select top 10 percent *from Deposit
--3. Display top 25% customer who deposited more than 5000.
select top 25 percent cname from deposit where Amount>5000
--4. Retrieve first 10% Loan Amounts. 
select top 10 percent  amount from borrow
--5. Retrieve all unique customer names with city.
select distinct cname,city from customers
--6. Retrieve all Loan records with one more column in Loan Amount as 10% extra amount.
--7. Retrieve all odd/even value loan number from Borrow table.


----------------------------------------------------------------------------------------------------------


--LAB 3

--part-A

CREATE TABLE CRICKET
(
  NAME VARCHAR(50),
  CITY VARCHAR(50),
  AGE INT
)

INSERT INTO CRICKET VALUES 
('SACHIN TENDULKAR','MUMBAI',30),
('RUHUL DRAVID','BOMBAY',35),
('M.S.DHONI','JHARKHAND',31),
('SURESH RAINA','GUJARAT',30)

--1. Create table Worldcup from cricket with all the columns and data. 
SELECT * INTO WORLDCUP FROM CRICKET
--2. Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET 
--3. Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET
WHERE 1=0

--PART-B

CREATE TABLE EMPLOYEE
(
  NAME VARCHAR(50),
  CITY VARCHAR(50),
  AGE INT
)

INSERT INTO EMPLOYEE VALUES 
('JAY PATEL','RAJKOT',30),
('RAHUL DAVE','BARODA',35),
('JEET PATEL','SURAT',31),
('VIJAY RAVAL','RAJKOT',30)

--1. Create table Employee_detail from Employee with all the columns and data.
 SELECT * INTO Employee_detail FROM EMPLOYEE
--2. Create table Employee_data from Employee with first two columns with no data. 
SELECT NAME,CITY INTO Employee_data  FROM EMPLOYEE
--3. Create table Employee_info from Employee with no Data
SELECT * INTO Employee_info FROM EMPLOYEE

--PART-C

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot 
INSERT INTO Employee_info 
SELECT *FROM EMPLOYEE 
WHERE CITY='RAJKOT'
--2. Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO Employee_info 
SELECT *FROM EMPLOYEE 
WHERE AGE>32

--Update Operation
--PART-A

--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table) 
UPDATE DEPOSIT
SET AMOUNT=5000
WHERE AMOUNT=3000
--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE DEPOSIT
SET BNAME='C.G.ROAD'
WHERE BNAME='VRCE' 

--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table) 
UPDATE DEPOSIT
SET ACTNO=111, AMOUNT=5000
WHERE CName='SANDIP'
--4. Update amount of KRANTI to 7000. (Use Deposit Table) 
UPDATE DEPOSIT
SET Amount=7000
WHERE CNAME='KRANTI'
--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table) 
UPDATE DEPOSIT
SET BNAME='ANDHERI WEST'
WHERE BNAME='ANDHERI'
--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table) 
UPDATE DEPOSIT
SET BNAME='NEHRU PALACE'
WHERE CNAME='MEHUL'
SELECT *FROM Deposit
--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
UPDATE DEPOSIT
SET Amount=5000
WHERE ACTNO BETWEEN 103 AND 107
--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table) 
UPDATE DEPOSIT
SET ADATE='1995/04/01'
WHERE CNAME='ANIL'
--9. Update the amount of MINU to 10000. (Use Deposit Table) 
UPDATE DEPOSIT
SET AMOUNT=10000
WHERE CNAME='MINU'
--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=5000 , ADATE='1996/04/01'
WHERE CNAME='PRAMOD'

--PART-B
--1. Give 10% Increment in Loan Amount. (Use Borrow Table)
UPDATE BORROW
SET AMOUNT=AMOUNT*1.1

--2. Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)
UPDATE DEPOSIT
SET AMOUNT=AMOUNT*1.2

--PART-C
--1. Update amount of loan no 321 to NULL. (Use Borrow Table)
UPDATE BORROW
SET AMOUNT = NULL
WHERE LOANNO=321 
--2. Update branch name of KRANTI to NULL (Use Borrow Table)
UPDATE BORROW
SET BNAME='NULL'
WHERE CNAME='KRANTI' 
--3. Display the name of borrowers whose amount is NULL. (Use Borrow Table)
SELECT CNAME FROM BORROW WHERE AMOUNT IS NULL
--4. Display the Borrowers whose having branch. (Use Borrow Table) 
SELECT CNAME FROM BORROW  

--5. Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481. (Use Borrow Table)
UPDATE BORROW
SET BNAME='VRCE', CNAME='DARSHAN' ,AMOUNT=5000
WHERE LOANNO=481
--6. Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less than 2000.
UPDATE DEPOSIT
SET ADATE='2021/01/01'
WHERE Amount<2000 
--7. Update the Deposit table and set the date to NULL & Branch name to ‘ANDHERI whose Account No is 110.
UPDATE DEPOSIT
SET ADATE=NULL,BNAME='ANDHERI'
WHERE ACTNO=110


-------------------------------------------------------------------------

--LAB-4



--part-A

--1. Add two more columns City VARCHAR (20) and Pincode INT. 
Alter table deposit add city varchar(20),pincode int
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35)
Alter table deposit alter column cname varchar(35)
--3. Change the data type DECIMAL to INT in amount Column. 
Alter table deposit   alter column Amount int
--4. Rename Column ActNo to ANO. 
Sp_Rename 'deposit.actno','ano'
--5. Delete Column City from the DEPOSIT table. 
alter table deposit drop column city
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
SP_Rename 'deposit','deposit_detail'
select * from deposit_detail


--part-b

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table. 
SP_Rename 'deposit_detail.adate','aopendate'
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
alter table deposit_detail drop column aopendate 
--3. Rename Column CNAME to CustomerName.
SP_Rename 'deposit_detail.cname','customername'

--part-c

create table student_detail(
  enroolment_no varchar(20),
  name varchar(25),
  CPI DECIMAL(5,2),
  BIRTHDATE DATETIME
)
--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null). 
ALTER TABLE STUDENT_DETAIL ADD CITY VARCHAR(20) NOT NULL,BACKLOG INT NULL
--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35). 
ALTER TABLE STUDENT_DETAIL ALTER COLUMN NAME VARCHAR(35)
--3. Change the data type DECIMAL to INT in CPI Column.
 ALTER TABLE STUDENT_DETAIL ALTER COLUMN CPI INT
--4. Rename Column Enrollment_No to ENO. 
SP_RENAME 'STUDENT_DETAIL.ENROOLMENT_NO','ENO'
--5. Delete Column City from the student_detail table. 
ALTER TABLE STUDENT_DETAIL DROP COLUMN CITY
--6. Change name of table student_detail to STUDENT_MASTER.
SP_RENAME 'STUDENT_DETAIL','STUDENT_MASTER'


DELETE, Truncate, Drop Operation 
--Part – A:


--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM Deposit_DETAIL WHERE AMOUNT >=4000
--2. Delete all the accounts CHANDI BRANCH. 
DELETE FROM Deposit_DETAIL WHERE BNAME ='CHANDI' 
--3. Delete all the accounts having account number (ANO) is greater than 105. 
DELETE FROM Deposit_DETAIL WHERE ANO>105
--4. Delete all the records of Deposit_Detail table. (Use Truncate) 
TRUNCATE TABLE DEPOSIT_DETAIL
--5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL

--PART-B

CREATE TABLE EMPLOYEE_MASTER(
EMPNO INT,
EMPNAME VARCHAR(25),
JOININGDATE DATETIME,
SALARY DECIMAL(8,2),
CITY VARCHAR(20)
)
INSERT INTO EMPLOYEE_MASTER VALUES
(101,'KEYUR','2002/1/5','12000.00','RAJKOT'),
(102,'HARDIK','2004/2/15','14000.00','AHMEDABAD'),
(103,'KAJAL','2006/3/14','15000.00','BARODA'),
(104,'BHOOMI','2005/6/23','12500.00','AHMEDABAD'),
(105,'HARMIT','2004/2/15','14000.00','RAJKOT'),
(106,'MITESH','2001/9/1','5000.00','JAMNAGAR'),
(107,'MEERA','','7000.00','MORBI'),
(108,'KISHAN','2003/2/6','10000.00','')

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000. 
DELETE FROM EMPLOYEE_MASTER WHERE SALARY >=14000
--2. Delete all the Employees who belongs to ‘RAJKOT’ city. 
DELETE FROM EMPLOYEE_MASTER WHERE CITY='RAJKOT'
--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE>'2007/1/1' 
--4. Delete the records of Employees whose joining date is null and Name is not null. 
DELETE FROM EMPLOYEE_MASTER WHERE JOININGDATE IS NULL AND EMPNAME IS NOT NULL
--5. Delete the records of Employees whose salary is 50% of 20000. 
DELETE FROM EMPLOYEE_MASTER WHERE SALARY = 20000*0.5
--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY !='' 
--7. Delete all the records of Employee_MASTER table. (Use Truncate) 
TRUNCATE TABLE EMPLOYEE_MASTER  
--8. Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER

--PART-C

--1. Summarize Delete, Truncate and Drop

--LAB-5

--PART-A

CREATE TABLE STUDENT(
STUID INT,
FIRSTNAME VARCHAR(25),
LASTNAME VARCHAR(25),
WEBSITE VARCHAR(50),
CITY VARCHAR(25),
ADDRESS VARCHAR(100)
)


INSERT INTO STUDENT VALUES
(1011,'KEYUR','PATEL','techonthenet.com','RAJKOT','A-303''VASANT KUNJ'',RAJKOT'),
(1012,'HARDIK','SHAH','digminecraft.com','AHMEDABAD','''RAM KRUPA'',RAIYA ROAD'),
(1013,'KAJAL','TRIVEDI','bigactivities.com','BARODA','RAJ BHAVAN PLOT,NEAR GARDEN'),
(1014,'BHOOMI','GAJERA','bigactivities.com','AHMEDABAD','''Jig’s Home'',NAROL'),
(1015,'HARMIT','MITEL','@me.darshan.com','RAJKOT','B-55, Raj Residency'),
(1016,'ASHOK','JANI',NULL,'BARODA','A502, Club House Building')




--Display the name of students whose name starts with ‘k’.
select FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE 'K%'

--Display the name of students whose name consists of five characters.
select firstname from student where firstname like '_____'

--Retrieve the first name & last name of students whose city name ends with a & contains six characters.
select firstname,lastname from student where city like '_____a'

--Display all the students whose last name ends with ‘tel’.
select firstname from student where lastname like '%tel'

--Display all the students whose first name starts with ‘ha’ & ends with‘t’.
select firstname from student where firstname like 'ha%t'

--Display all the students whose first name starts with ‘k’ and third character is ‘y’.
select firstname from student where firstname like 'k_y%'

--Display the name of students having no website and name consists of five characters.
select firstname from student where WEBSITE is null and firstname like '_____'

--Display all the students whose last name consist of ‘jer’.
select firstname from student where lastname like '%jer'

--Display all the students whose city name starts with either ‘r’ or ‘b’.
select firstname from student where city like '[rb]%'

--Display all the name students having websites.
select firstname from student where website is not null

--Display all the students whose name starts from alphabet A to H.
select firstname from student where FIRSTNAME like '[a-h]%'

--Display all the students whose name’s second character is vowel.
select firstname from student where firstname like '_[aeiou]%'

--Display the name of students having no website and name consists of minimum five characters.
select firstname from student where WEBSITE is null and FIRSTNAME like '____%'

--Display all the students whose last name starts with ‘Pat’.
select firstname from student where LASTNAME like 'pat%'

--Display all the students whose city name does not starts with ‘b’.
select firstname from student where city not like 'b%'




--PART B
--Display all the students whose name starts from alphabet A or H.
select firstname from student where firstname like '[ah]%'

--Display all the students whose name’s second character is vowel and of and start with H.
select firstname from STUDENT where FIRSTNAME like 'h[aeiou]%'

--Display all the students whose last name does not ends with ‘a’.
select firstname from student where lastname not like '&a'

--Display all the students whose first name starts with consonant.
select firstname from student where firstname not like '[aeiou]%'

--Display all the students whose website contains .net
select firstname from student where WEBSITE like '%.net'



--PART C

--Display all the students whose address consist of -.
select firstname from student where ADDRESS like '%-%'

--Display all the students whose address contains single quote or double quote.
select firstname from student where address like '%''%'

--Display all the students whose website contains @.
select firstname from student where WEBSITE like '%@%'

--Display all the names those are either four or five characters.
select firstname from student where firstname like '_____' or firstname like '____'





---------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------


--LAB 7

--PART A

create table EMP(
EID INT,
ENAME VARCHAR(20),
DEPARTMENT VARCHAR(10),
SALARY DECIMAL(8,2),
JOININGDATE DATETIME,
CITY VARCHAR(20)
)


INSERT INTO EMP VALUES
(101,'RAHUL','ADMIN',56000,'1990/1/1','RAJKOT'),
(102,'HARDIK','IT',18000,'1990/9/25','AHMEDABAD'),
(103,'BHAVIN','HR',25000,'1991/5/14','BARODA'),
(104,'BHOOMI','ADMIN',39000,'1991/2/8','RAJKOT'),
(105,'ROHIT','IT',17000,'1990/7/23','JAMNAGAR'),
(106,'PRIYA','IT',9000,'1990/10/18','AHMEDABAD'),
(107,'BHOOMI','HR',34000,'1991/12/25','RAJKOT')
select * from emp

--PART A

--Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT max(salary) as Maximum,min(salary) as Minimum from emp

--Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
select sum(salary), avg(salary) as Average_Sal from emp

--Find total number of employees of EMPLOYEE table.
select count(eid) from emp

--Find highest salary from Rajkot city.
select max(salary) from emp where city='rajkot'

--Give maximum salary from IT department.
select max(salary) from emp where department='it'

--Count employee whose joining date is after 8-feb-91.
select count(eid) from emp where joiningdate >='1991/2/8'

--Display average salary of Admin department.
select avg(salary) from emp where department = 'admin'

--Display total salary of HR department.
select sum(salary) from emp where department = 'hr'

--Count total number of cities of employee without duplication.
select count(distinct city) from emp

--Count unique departments.
select count(distinct department) from emp


--Give minimum salary of employee who belongs to Ahmedabad.
select min(salary) from emp where city='ahmedabad'


--Find city wise highest salary.
select max(salary),city from emp group by city


--Find department wise lowest salary.
select min(salary),department from emp group by DEPARTMENT


--Display city with the total number of employees belonging to each city.
select count(eid),city from emp group by city


--Give total salary of each department of EMP table.
select sum(salary) from emp group by DEPARTMENT


--Give average salary of each department of EMP table without displaying the respective department name.
select avg(salary) from emp group by DEPARTMENT


----Part-b

--1. Count the number of employees living in Rajkot.
select count(ename) from emp where city='rajkot'
--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(salary ) -min(salary) as difference from emp 
--3. Display the total number of employees hired before 1st January, 1991.
select count(ename) from emp where JOININGDATE <'1991/1/1'
 

----part-c

--1. Count the number of employees living in Rajkot or Baroda.
select count(ename) from emp where city='rajkot' or city ='baroda'
--2. Display the total number of employees hired before 1st January, 1991 in IT department.
select count(ename) from emp where JOININGDATE <'1991/1/1' and DEPARTMENT='it' 
--3. Find the Joining Date wise Total Salaries.
select sum(salary),joiningdate from emp  group by joiningdate
--4. Find the Maximum salary department & city wise in which city name starts with ‘R’
select max(salary),city,DEPARTMENT from emp where city like 'r%' group by city,DEPARTMENT 

lab-7 extra

--1.	Calculate the average salary of employees hired after 1st January, 1991. Label the column as Average_Salary_After_1991.
   select avg(salary) as Average_Salary_after_1991 from emp where JOININGDATE >'1991/1/1'
--2.	Find the total number of employees in each department.
     select count(ename),department from emp group by DEPARTMENT
--3.	Display the total salary of employees in each city in descending order.
  select sum(salary),city from emp group by city order by sum(salary) desc

--4.	Find the total number of employees in each city.
select count(ename),city from emp group by city 
--5.	Find the highest salary among all employees
select max(salary) from emp
--6.	Retrieve the maximum salary from the IT department.
select max(salary) from emp where DEPARTMENT='it'
--7.	Count the total number of distinct cities where employees reside.
SELECT COUNT(distinct city) from emp 
--8.	Calculate the total salary of each department.
select sum(salary) from emp group by department
--9.	Find the minimum salary of an employee residing in Ahmedabad.
select min(salary) from emp where city='ahmedabad'
--10.	List the departments with total salaries exceeding 50000 and located in Rajkot.
select sum(salary),department from emp where city='rajkot' group by DEPARTMENT having sum(salary)>50000

--11.	List the departments with total salaries exceeding 35000 and sort the list by total salary.
select sum(salary),department from emp   group by DEPARTMENT having sum(salary)>35000 order by sum(salary) 
--12.	List departments with more than two employees.

--13.	Show departments where the average salary is above 25000.
--14.	Retrieve cities with employees hired before 1st January 1991.
--15.	Find departments with a total salary between 50000 and 100000.

------------------------------------------------


----LAB 8

create table sales_data(
 
  region varchar(25),
  product varchar(25),
  sales_amount int,
  year int
  )
  insert into sales_data values
('north america','watch',1500,2023),
('europe','mobile',1200,2023),
('asia','watch',1800,2023),
('north america','tv',900,2024),
('europe','watch',2000,2024),
('asia','mobile',1000,2024),
('north america','mobile',1600,2023),
('europe','tv',1500,2023),
('asia','tv',1100,2024),
('north america','watch',1700,2024)


----Part – A:


--1. Display Total Sales Amount by Region.
select region,sum(Sales_Amount) as total_sales from sales_data group by region
--2. Display Average Sales Amount by Product
select product,avg(Sales_Amount) as avg_sales from sales_data group by product
--3. Display Maximum Sales Amount by Year
select year,max(Sales_Amount) as max_sales from sales_data group by year
--4. Display Minimum Sales Amount by Region and Year
select year,region,min(Sales_Amount) as min_sales from sales_data group by year,region
--5. Count of Products Sold by Region
select region,count(product) as count_sales from sales_data group by region
--6. Display Sales Amount by Year and Product
select year,product,sum(Sales_Amount) as sales_amount from sales_data group by year,product
--7. Display Regions with Total Sales Greater Than 5000
select region,sum(sales_amount) as total_sales from sales_data group by region having sum(sales_amount)>5000
--8. Display Products with Average Sales Less Than 10000
select product,avg(sales_amount) as avg_sales from sales_data group by product having avg(sales_amount)<10000 
--9. Display Years with Maximum Sales Exceeding 500
select year,max(Sales_Amount) as max_sales from sales_data group by year having max(sales_amount)>500 
--10. Display Regions with at Least 3 Distinct Products Sold.
select region,count(distinct(product)) as count_sales from sales_data group by region having  count(distinct(product))>=3
--11. Display Years with Minimum Sales Less Than 1000
select min(sales_amount),year from sales_data group by year
--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
select sum(sales_amount),region from sales_data where year='2023' group by region order by sum(sales_amount) asc


--Part – B:


--1. Display Count of Orders by Year and Region, Sorted by Year and Region
select count(sales_amount),year,region from sales_data group by year,region
--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
select max(sales_amount),region from sales_data  group by region having max(sales_amount)>1000 order by count(region) asc
--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
select sum(sales_amount),year from sales_data group by year having sum(sales_amount)<1000 order by sum(sales_amount) desc
--4. Display Top 3 Regions by Total Sales Amount in Year 2024
select top 3 region,sum(sales_amount) from sales_data where year='2024' group by region



--Part – C:

--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
select product,avg(sales_amount) from sales_data group by product   having avg(sales_amount)>1000 and avg(sales_amount)<2000 order by product 
select product,avg(sales_amount) as avg_amount from sales_data group by product having avg(sales_amount) between 1000 and 2000 order by product
--2. Display Years with More Than 5 Orders from Each Region
select year,count(product) from sales_data group by region,year having count(product)>5
select year,region,count(sales_amount) as avg_amount from sales_data group by region,year having count(sales_amount) > 5 
--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
select region,avg(sales_amount) as avg_amount from sales_data where year='2023' group by region having avg(sales_amount)>1500 
--4. Find out region wise duplicate product.
select product, count(product),region from sales_data group by region,product having count(product)>1
--5. Find out region wise highest sales amount
select region,max(sales_amount) as max_sales from sales_data  group by region 



---------------LAB 6------------------

----Display the result of 5 multiply by 30.
SELECT 5 * 30

----Find out the absolute value of -25, 25, -50 and 50
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

----Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2), CEILING(25.7), CEILING(-25.7)

----Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2), FLOOR(25.7), FLOOR(-25.7)

----Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5%2 , 5%3

----Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2),POWER(4,3)

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

----Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5), LOG10(100)

----Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415), COS(3.1415), TAN(3.1415)

----Find sign of -25, 0 and 25.
SELECT SIGN(-25), SIGN(0), SIGN(25)

----Generate random number using function.
SELECT RAND()

----------PART B---------
CREATE TABLE EMP_MASTER(
	EMPNO INT,
	EMPNAME VARCHAR(50),
	JOININGDATE DATETIME,
	SALARY DEC(8,2),
	COMMISSION INT,
	CITY VARCHAR(50),
	DEPTCODE VARCHAR(20)
)

INSERT INTO EMP_MASTER VALUES
(101,'KEYUR','2002-01-5',12000,4500,'RAJKOT','3@g'),
(102,'HARDIK','2004-02-15',14000,2500,'AHMEDABAD','3@'),
(103,'KAJAL','2006-03-14',15000,3000,'BARODA','3-GD'),
(104,'BHOOMI','2005-06-23',12500,1000,'AHMEDABAD','1A3D'),
(105,'HARMIT','2004-02-15',14000,2000,'RAJKOT','312A')

----Display the result of Salary plus Commission.
SELECT *, SALARY + COMMISSION AS TOTAL_SALARY FROM EMP_MASTER

----Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2), CEILING(35.7), CEILING(-55.2)

----Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2), FLOOR(35.7), FLOOR(-55.2)

----Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT 55%2 , 55%3

----Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23,2), POWER(14,3)

---------PART C----------

----Find out the square root of 36, 49 and 81.
SELECT SQRT(36), SQRT(49), SQRT(81)

----Find out the square of 3, 9, and 12.
SELECT SQUARE(3), SQUARE(9), SQUARE(12)

----Find out round value of 280.8952 for 2, 0 and -2 decimal points.
SELECT ROUND(280.8952,2), ROUND(280.8952,0), ROUND(280.8952,-2)

----Find sine, cosine and tangent of 4.2014.
SELECT SIN(4.2014), COS(4.2014), TAN(4.2014)

----. Find sign of -55, 0 and 95.
SELECT SIGN(-55), SIGN(0), SIGN(95)

--------------STRING FUNCTION----------------


--PART A

--Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
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
select EOMONTH(getdate())

--Calculate your age in years and months.
select dateadd(day,30,GETDATE())











----------------------------------------------------------------------



----LAB 10----

--PART A

create table STUDENT_INFO(
	RNO INT,
	NAME VARCHAR(10),
	BRANCH VARCHAR(5),
	SPI DECIMAL(8,2),
	BKLOG INT
)

insert into	STUDENT_INFO values
(101,'RAJU','CE',8.80,0),
(102,'AMIT','CE',2.20,3),
(103,'SANJAY','ME',1.50,6),
(104,'NEHA','EC',7.65,1),
(105,'MEERA','EE',5.52,2),
(106,'MAHESH','EC',4.50,3)

drop table STUDENT_INFO

--Create a view Personal with all columns.
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
create view NOBACK as select * from STUDENT_INFO where BKLOG = 0
select * from noback

--Create a view Computerview that displays CE branch data only.
create view Computerview as select * from STUDENT_INFO where BRANCH = 'ce'
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
select s.rno, name, branch, spi from STU_INFO s left outer join RESULT r on r.RNO = s.RNO 

--Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select s.rno, name, branch, spi from stu_info s left outer join result r on s.rno = r.rno where BRANCH = 'ec'

--Display average result of each branch.
select avg(spi), branch from STU_INFO s join RESULT r on s.rno = r.rno group by branch

-- Display average result of CE and ME branch.
select avg(spi), branch from STU_INFO s join RESULT r on s.rno = r.rno group by BRANCH having BRANCH = 'me' and BRANCH = 'ce'


----PART B

--Display average result of each branch and sort them in ascending order by SPI.
select avg(spi),branch from stu_info s join result r on s.rno = r.RNO group by BRANCH order by avg(spi)

--Display highest SPI from each branch and sort them in descending order.
select max(spi), branch from stu_info s join result r on s.rno = r.RNO group by BRANCH order by max(spi)

----PART C

--Retrieve the names of employee along with their manager’s name from the Employee table.
select e.name,r.name from employee_master e left outer join employee_master r on e.managerno = r.employeeno


-------------------------------------------------------------------


-----LAB 12


--PART A

--Find all persons with their department name & code.
select personname, departmentname, departmentcode from person p full outer join dept d on d.departmentid = p.departmentid 

--Find the person's name whose department is in C-Block.
select personname from person p join dept d on p.departmentid = d.departmentid where location = 'c-block'

--Retrieve person name, salary & department name who belongs to Jamnagar city.
select personname, salary, departmentname from person p join dept d on d.departmentid = p.departmentid where city = 'jamnagar' 

--Retrieve person name, salary & department name who does not belong to Rajkot city.
select personname, salary, departmentname from person p join dept d on p.departmentid = d.departmentid where city != 'rajkot'

--Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
select personname, joiningdate from person p join dept d on d.departmentid = p.departmentid where departmentname = 'civil' and joiningdate > '2001-08-01'

--Find details of all persons who belong to the computer department.
select * from person p join dept d on p.departmentid = d.departmentid where departmentname = 'computer'

--Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
select personname, departmentname from person p full outer join dept d on d.departmentid = p.departmentid where joiningdate < (getdate()-365)

--Find department wise person counts.
select departmentname, count(personname) from person p join dept d on d.departmentid = p.departmentid group by departmentname

--Give department wise maximum & minimum salary with department name.
select max(salary), min(salary), departmentname from person p join dept d on d.departmentid  = p.departmentid group by departmentname

--Find city wise total, average, maximum and minimum salary.
select sum(salary) as total, avg(salary) as average, max(salary) as max, min(salary) as min from person p join dept d on p.departmentid= d.departmentid 

--Find the average salary of a person who belongs to Ahmedabad city.
select avg(salary) from person where city = 'ahmedabad'

--Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
select personname + ' lives in ' + city + ' and works in ' + departmentname + ' department.' from person p full outer join dept d on d.departmentid = p.departmentid 
