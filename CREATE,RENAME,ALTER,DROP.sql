create database excelr;
show databases;
use excelr;
-- create table syntax (single line comment)
/* create table syntax:
create table table_name
(
column_name1 datatype,
column_name2 datatype,
column_name3 datatype,
  :            :
column_namen  datatype
);  */
create table student
(
sid int,
sname varchar(20),
address varchar(100),
phone_no bigint
);

create table flipkart
(
productid int,
pname varchar(50),
price decimal(9,2),
quantity int,
address varchar(50),
phno char(10),
customer_id int,
customer_name varchar(100),
orderdate date,
ordertime time
);
desc flipkart;/*structure of table*/
desc student;
/*Rename:
"it is used to rename existing table name to new table name
syntax:
rename table existing_table_name to new_table_name;
ex:rename table flipkart to amazon;
*/
rename table flipkart to amazon;
rename table student to stud;

desc amazon;
/*alter:
it is used to modify the structure of table.
syntax:TO ADD COLUMN
ALTER TABLE TABLE_NAME
ADD COLUMN_NAME DATATYPE;
*/
ALTER TABLE AMAZON
ADD EMAILID VARCHAR(100);
DESC AMAZON;
ALTER TABLE AMAZON
ADD PAYMENT_MODE VARCHAR(100);
Alter table amazon
add dob date;
desc amazon;
alter table amazon
add rating int,
add feedback varchar(50);
/*TO DROP THE COLUMN
SYNTAX:ALTER TABLE TABLE_NAME
       DROP COLUMN COLUMN_NAME;
*/
ALTER TABLE AMAZON 
DROP COLUMN PAYMENT_MODE;
DESC AMAZON;
ALTER TABLE AMAZON
DROP COLUMN FEEDBACK;
/*RENAME COLUMN_NAME
ALTER TABLE TABLE_NAME
rename COLUMN EXISTING_COLUMN_NAME TO NEW_COLUMN_NAME;
*/
ALTER TABLE AMAZON
RENAME COLUMN PNAME TO PRODUCT_NAME; 
DESC AMAZON;
ALTER TABLE AMAZON
RENAME COLUMN CUSTOMER_NAME TO CNAME;
/*MODIFY DATATYPES:
ALTER TABLE TABLE_NAME
MODIFY COLUMN_NAME DATATYPE*/
ALTER TABLE AMAZON
MODIFY PRODUCTID CHAR(10);

/*DROP:
"IT IS USED TO REMOVE THE TABLE FROM THE DATABASE".
SYNTAX: DROP TABLE TABLE_NAME; */
DROP TABLE AMAZON;

DESC AMAZON;

CREATE TABLE PRODUCT
(
PID INT,
PNAME VARCHAR(50),
PRICE int
);

DESC PRODUCT;

ALTER TABLE PRODUCT
RENAME COLUMN PNAME TO PRODUCT_NAME;

ALTER TABLE PRODUCT
MODIFY PID CHAR(10);

DESC PRODUCT;
ALTER TABLE PRODUCT
ADD QUANTITY INT;

ALTER TABLE PRODUCT
DROP COLUMN PID,
DROP COLUMN PRICE;

DESC PRODUCT;









