create database CSE_3B_410


-------------------------------------------------------------

--LAB 1

create table Deposit(
	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME
)

create table BRANCH(
	BNAME VARCHAR(50),
	CITY VARCHAR(50)
)

create table CUSTOMERS(
	CNAME VARCHAR(50),
	CITY VARCHAR(50)
)

create table BORROW(
	LOANNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2)
)

insert into Deposit values
(101,'ANIL','VRCE',1000.00,'1995/03/01'),
(102,'SUNIL','AJNI',5000.00,'1996/01/04'),
(103,'MEHUL','KAROLBAGH',3500.00,'1995/11/17'),
(104,'MADHURI','CHANDI',1200.00,'1995/12/17'),
(105,'PRAMOD','M.G.ROAD',3000.00,'1996/03/27'),
(106,'SANDIP','ANDHERI',2000.00,'1996/03/31'),
(107,'SHIVANI','VIRAR',1000.00,'1995/07/02'),
(108,'KRANTI','NEHRU PLACE',5000.00,'1995/08/10'),
(109,'MINU','POWAI',7000.00,'1995/08/10')


insert into BRANCH values
('VRCE','NAGPUR'),
('AJNI','NAGPUR'),
('KAROLBAGH','DELHI'),
('CHANDI','DELHI'),
('DHARAMPETH','NAGPUR'),
('M.G.ROAD','BANGLORE'),
('ANDHERI','BOMBAY'),
('VIRAR','BOMBAY'),
('NEHRU PLACE','DELHI'),
('POWAI','BOMBAY')

insert into CUSTOMERS values
('ANIL','CALCUTTA'),
('SUNIL','DELHI'),
('MEHUL','BARODA'),
('MANDAR','PATNA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI','BOMBAY'),
('NAREN','MOMBAY')

insert into BORROW values
(201,'ANIL','VRCE',1000.00),
(206,'MEHUL','AJNI',5000.00),
(311,'SUNIL','DHARAMPETH',3000.00),
(321,'MADHURI','ANDHERI',2000.00),
(375,'PRAMOD','VIRAR',8000.00),
(481,'KRANTI','NEHRU PLACE',3000.00)


-- PART A --

--Retrieve all data from table DEPOSIT.  
select * from Deposit

--Retrieve all data from table BORROW.  
select * from BORROW

--Retrieve all data from table CUSTOMERS.  
select * from CUSTOMERS

--Display Account No, Customer Name & Amount from DEPOSIT. 
select actno, cname, amount from Deposit

--Display Loan No, Amount from BORROW. 
select loanno, amount from BORROW

--Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table. 
select * from BORROW where BNAME = 'andheri'

--Give account no and amount of depositor, whose account no is equals to 106 from deposit table.  
select actno, amount from Deposit where actno = 106

--Give name of borrowers having amount greater than 5000 from borrow table.  
select cname from BORROW where AMOUNT > 5000

--Give name of customers who opened account after date '1-12-96' from deposit table.  
select cname from Deposit where ADATE > '1996/12/01'

--Display name of customers whose account no is less than 105 from deposit table. 
select cname from Deposit where ACTNO > 105

--Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (OR & IN) 
select cname from CUSTOMERS where CITY = 'nagpur' or city = 'delhi'

--Display name of customers with branch whose amount is greater than 4000 and account no is less than 105 from deposit table. 
select cname from Deposit where AMOUNT > 4000 and ACTNO < 105

--Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow table. (AND & BETWEEN) 
select cname from BORROW where amount between 3000 and 8000

--Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table. 
select cname from Deposit where BNAME != ' andheri'

--Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table.
select actno, cname, amount from Deposit where BNAME in ('ajni','karolbagh','M.G.Road') and ACTNO < 104


--PART B--

--Display all the details of first five customers from deposit table. 
select Top 5 * from Deposit 

--Display all the details of first three depositors whose amount is greater than 1000. 
select top 3 * from Deposit where amount > 3000

--Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to ‘ANDHERI’ from borrow table. 
select top 5 loanno, cname from BORROW where BNAME = 'andheri'

--Retrieve all unique cities using DISTINCT. (Use Customers Table) 
select distinct city from CUSTOMERS

--Retrieve all unique branches using DISTINCT. (Use Branch Table) 
select distinct bname from BRANCH 


--PART C--

--Retrieve top 50% record from table BORROW. 
select top 50 percent * from BORROW

--Display top 10% amount from table DEPOSIT. 
select top 10 percent * from Deposit

--Display top 25% customer who deposited more than 5000. 
select top 25 percent cname from Deposit where AMOUNT > 5000

--Retrieve first 10% Loan Amounts. 
select top 10 percent amount from BORROW

--Retrieve all unique customer names with city. 
select distinct cname,city from CUSTOMERS

--Retrieve all Loan records with one more column in Loan Amount as 10% extra amount. 
select *, amount=amount*1.1 from BORROW

--Retrieve all odd/even value loan number from Borrow table. 
select loanno from BORROW where LOANNO % 2 = 0


-----------------------------------------------------------

---LAB 3---

-- PART A

create table CRICKET(
	NAME VARCHAR(20),
	CITY VARCHAR(10),
	AGE INT
)

insert into CRICKET values
('SACHIN TENDULKAR','MUMBAI',30),
('RAHUL DRAVID','BOMBAY',35),
('M.S.DHONI','JHARKHAND',31),
('SURESH RAINA','GUJARAT',30)

--Create table Worldcup from cricket with all the columns and data.  
select * into Worldcup from CRICKET
select * from Worldcup

--Create table T20 from cricket with first two columns with no data. 
select NAME,CITY into T20 from CRICKET where 1=2
select * from T20

--Create table IPL From Cricket with No Data
select * into IPL from CRICKET where 1=2
select * from IPL


-- PART B--

create table EMPLOYEE(
	NAME VARCHAR(15),
	CITY VARCHAR(10),
	AGE INT,
)

insert into EMPLOYEE values
('JAY PATEL','RAJKOT',30),
('RAHUL DAVE','BARODA',35),
('JEET PATEL','SURAT',31),
('VIJAY RAVAL','RAJKOT',30)

--Create table Employee_detail from Employee with all the columns and data.  
select * into Employee_detail from EMPLOYEE

--Create table Employee_data from Employee with first two columns with no data. 
select * into Employee_data from EMPLOYEE

--Create table Employee_info from Employee with no Data 
select * into Employee_info from EMPLOYEE where 1=2
select * from Employee_info

--PART C--

--Insert the Data into Employee_info from Employee whose CITY is Rajkot 
insert into table Employee_info from employee where city = 'rajkot'

--Insert the Data into Employee_info from Employee whose age is more than 32.

