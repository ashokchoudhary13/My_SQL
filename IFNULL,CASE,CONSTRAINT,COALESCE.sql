/*waqtd name of employee if employee
 name does not start with character s 
 in there name*/
 use excelr;
 select ename
 from emp
 where ename not like "s%";
 /*ifnull():
 it is used eliminate the side effect of
 using null arthamatic operation
 syntax:ifnull(argument1,argument2)
 argument1:here we write column_name which
 is resulting null values
 argument2:here we write numerical value
 which will be substitued if agument1 is 
 null.*/
 select sal,comm,sal+comm
 from emp;
 
 select sal,comm,sal+ifnull(comm,0)
 from emp;
 
 create table product1
 (
 pid int,
 pname varchar(50),
 price int
 );
 insert into product1 values(1,'mobile',20000),
                            (2,'laptop',35000),
                            (3,'ledtv',50000),
                            (4,'ipad',65000),
						    (5,'watch',15000);
 select * from product1;
 
 select pid,pname,price,
 case when price>35000
then "Expensive product"
else
"not expensive product"
end as status
from product1;
 
 select ename,sal,
 case when sal>2500 then
 "high salary"
 else
 "low salary"
 end status
 from emp;
 /*Constraints:
 "these are the rules given for column validation". 
 ->there are 6 types constraints
 1)unique
 "it is used avoid the duplicate/repeted value into the column"
 2)not null
 "it is used to avoid null value into the column".
 3)check
 "it is used for extra validation purpose if condition
 satisfy it will accept the value else it will reject the value".
 4)primary key
 "it is used to identify uniquely records from the table". 
 characteristics of primary key.
 1)In a table we must have only 1 primary key. 
 2)primary key is always combination of unique &not null constraint. 
 3)primary key will not accept duplicate/repeted value.
 4)primary key will not accept null value.
 5)foreign key/reffrential intigrity constraint:
 "it is used establish connection between two or more tables".
 characteristics of foreign key:
 1)IN A TABLE WE CAN HAVE MULTIPLE COLUMN_NAMES AS FOREIGN KEY.
 2)FOREIGN KEY IS NOT COMBINATION OF UNIQUE & NOT NULL CONSTRAINT.
 3)FOREIGN KEY WILL ACCEPT NULL VALUE.
 4)FOREIGN KEY WILL ACCEPT DUPLICATE/REPETED VALUE.
 5)FOR A COLUMN/ATTIBUTE WANT TO BECOME FOREIGN KEY IT MUST
 BE A PRIMARY KEY ON ITS OWN TABLE.
 6)default:
 "IT IS IS USED TO ASSIGN THE DEFAULT VALUE FOR PARTICULAR COLUMN".
 */
 CREATE TABLE CUSTOMER
 (
 CID INT PRIMARY KEY,
 CNAME VARCHAR(50) NOT NULL,
 ADDRESS VARCHAR(50) NOT NULL,
 EMAILID VARCHAR(50) UNIQUE NOT NULL,
 CPHNO bigint UNIQUE CHECK(LENGTH(CPHNO)=10),
 CITY varchar(50) DEFAULT 'PUNE'
 );
 INSERT INTO CUSTOMER VALUES(1,'ARUN','BANER','A@gmail.com',9874561231,default);
 insert into customer values(2,'rohith','vm','c@gmail.com',7894561231,'mumbai');
 
 CREATE TABLE PRODUCT3
 (
 PID INT primary KEY,
 PNAME VARCHAR(50) ,
 PRICE DECIMAL(9,3),
 CID INT,
 /*CONSTRAINT COLUMN_NAME FOREIGN KEY(COLUMN_NAME) REFERENCES PARENT_TABLE(COLUMN_NAME)*/
 constraint CID foreign key(CID) references CUSTOMER(CID)
 );
 DROP TABLE CUSTOMER;
 
 CREATE TABLE STUDENT
 (
 SID INT PRIMARY KEY,
 SNAME VARCHAR(15) NOT NULL,
 SPHNO CHAR(10) check(length(SPHNO)=10)
 );
 CREATE TABLE PLACEMENT
 (
 PID INT PRIMARY KEY,
 CNAME VARCHAR(50) NOT NULL,
 PACKAGE int,
 SID int
 );
 ALTER TABLE PLACEMENT
 ADD CONSTRAINT SID FOREIGN KEY(SID) REFERENCES STUDENT(SID);
 DROP TABLE STUDENT;
 /*COALESCE():IT IS USED TO RETURN FIRST NON NULL VALUE.*/
SELECT coalesce(NULL,NULL,5,"DIGVIJAY","KARTHIK");
 
 