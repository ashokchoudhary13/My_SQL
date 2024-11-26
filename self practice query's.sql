/* 1.WAQTD THE ANNUAL SALARY OF THE EMPLOYEE WHOS 
NAME IS SMITH. */

select * from emp;
select ename,sal from   emp where ename="smith"  ;


/*2.WAQTD NAME OF THE EMPLOYEES WORKING AS CLERK.*/

select * from emp;
select ename, job from emp where job = 'clerk';

/* 3.WAQTD SALARY OF THE EMPLOYEES WHO ARE 
WORKING AS SALESMAN. */

select ename,sal from emp where job = "salesman";



/* 4.WAQTD DETAILS OF THE EMP WHO EARNS MORE THAN
2000. */
select * from emp;
select empno,ename,job,sal from emp where sal > 2000;


/* 5.WAQTD DETAILS OF THE EMP WHOS NAME IS JONES. */

select empno,ename,job,sal from emp where ename = 'jones';


/* 6.WAQTD DETAILS OF THE EMP WHO WAS HIRED AFTER
01-JAN-81. */

select * from emp;
select empno,ename,job,sal,hiredate from emp where hiredate > "1981-02-01";


/* 7.WAQTD NAME AND SAL ALONG WITH HIS ANNUAL 
SALARY IF THE ANNUAL SALARY IS MORE THAN 12000. */

select ename,sal, (sal * 12) as anuanl_sal from emp where (sal * 12) > 12000;

/* 8.WAQTD EMPNO OF THE EMPLOYEES WHO ARE WORKING 
IN DEPT 30. */
select * from emp;
select empno,deptno from emp where deptno =30;

/*9.WAQTD ENAME AND HIREDATE IF THEY ARE HIRED 
BEFORE 1981. */
select * from emp;
select ename,hiredate from emp where hiredate < "1981-01-01";


/* 10.WAQTD DETAILS OF THE EMPLOYEES WORKING AS 
MANAGER. */

select * from emp;
select * from emp where job = "manager";

/* 11.WAQTD NAME AND SALARY GIVEN TO AN EMPLOYEE IF 
EMPLOYEE EARNS A COMMISSION OF RUPEES 1400. */

select ename,sal,comm from emp where comm = 1400;

/* 12.WAQTD DETAILS OF EMPLOYEES HAVING COMMISSION 
MORE THAN SALARY. */

select * from emp where comm > sal;



/* 13.WAQTD EMPNO OF EMPLOYEES HIRED BEFORE THE 
YEAR 87. */

select  empno,hiredate from emp where hiredate < '1987-01-01';

/* 14.WAQTD DETAILS OF EMPLOYEES WORKING AS AN  
ANALYST */

select * from emp where job ="analyst";

/* 15.WAQTD DETAILS OF EMPS EARNING MORE THAN 2000 
RUPEES PER MONTH. */

select * from emp where sal > 2000;



-- day 2 home work 
/*
1)	WAQTD name and deptno along with job for the employee working in dept 10 .
*/

Select ename,deptno,job from emp where deptno = 10;




/*
2)	WAQTD name and deptno along with job for the employee working as manager in dept 10
*/

select ename,deptno,job from emp where job="manager" and deptno=10;




/*
3)	WAQTD name , deptno , salary of the employee working in dept 20 and earning less than 3000
*/
select ename,deptno,sal from emp where deptno = 20 and sal < 3000;



/*
4)	WAQTD name and salary of the employee if emp earns More than 1250 but less than 3000 .
*/

select ename,sal from emp where sal > 1250 and sal <3000;


/*
5)	WAQTD name and deptno of the employees if the works in dept 10 or 20 .
*/

select ename,deptno from emp where deptno = 10 OR deptno=20;


/*
6)	WAQTD name and sal and deptno of the employees 
If emp gets more than 1250 but less than 4000 and works in dept 20 .
*/

select ename,sal,deptno from emp where sal>1250 and sal<4000 and deptno=20;




/*
7)	WAQTD name , job , deptno of the employees working as a manager in dept 10 or 30 .
*/

select ename,job,deptno from emp where job='manager' and (deptno=10 or deptno=30);




/*
8)	WAQTD name , deptno , job of the employees working in dept 10 or 20 or 30 as a clerk .
*/
select ename,deptno,job from emp where (deptno=10 or deptno=20 or deptno=30) and job='clerk';



/*
9)	WAQTD name , job and deptno of the employees working as clerk or manager in dept 10 . 
*/

select ename,job,deptno from emp where (job ='clerk' or job = 'manager' ) and deptno=10;





/*
10)	WAQTD name , job and deptno of the employees working as clerk or manager in dept 10 .

*/

select ename,job,deptno from emp where (job = 'clerk' or job='manager') and deptno=10;



-- day 3
-- ASSIGNMENT ON SEPCIAL OPERATORS :
-- 1)	LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL
select * from emp where comm is null;

-- 2)	LIST ALL THE EMPLOYEES WHO DON’T HAVE A REPORTING MANAGER
select * from emp where mgr is null;


-- 3)	LIST ALL THE SALESMEN IN DEPT 30
select * from emp where job='salesman' and deptno = 30 ;


-- 4)	LIST ALL THE SALESMEN IN DEPT NUMBER 30 AND HAVING SALARY GREATER THAN 1500
select * from emp where deptno = 30 and sal >1500;



-- 5)	LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH ‘S’ OR ‘A’
select * from emp where ename like 'S%' or ename like 'A%';

-- 6)	LIST ALL THE EMPLOYEES EXCEPT THOSE WHO ARE WORKING IN DEPT 10 & 20.
select * from emp where not deptno =10 and not deptno = 20;

-- 7)	LIST THE EMPLOYEES WHOSE NAME DOES NOT START WITH ‘S’
select * from emp where ename like 'S%';

-- 8)	LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10
select * from emp where not mgr  is null and deptno = 10;

SELECT e1.empno, e1.ename, e1.job, e1.mgr, e1.hiredate, e1.sal, e1.comm, e1.deptno
FROM emp e1
JOIN emp e2
  ON e1.mgr = e2.empno
WHERE e1.deptno = 10;





-- 9)	LIST ALL THE EMPLOYEES WHOSE COMMISSION IS NULL AND WORKING AS CLERK
Select * from emp where comm is null and job = 'clerk';

-- 10)	LIST ALL THE EMPLOYEES WHO DON’T HAVE A REPORTING MANAGER IN DEPTNO 10 OR 30.
select * from emp where mgr is null and deptno in (10,30);
-- 11)	LIST ALL THE SALESMEN IN DEPT 30 WITH SAL MORE THAN 2450
select * from emp where job = 'salesman' and (deptno=30 and sal >2450);

-- 12)	LIST ALL THE ANALYST IN DEPT NUMBER 20 AND HAVING SALARY GREATER THAN 2500
select * from emp where job='analyst' and (deptno=20 and sal > 2500);

-- 13)	LIST ALL THE EMPLOYEES WHOSE NAME STARTS WITH ‘M’ OR ‘J’
select * from emp where ename  like 'M%' or ename like 'J%';



-- 14)	LIST ALL THE EMPLOYEES WITH ANNUAL SALARY EXCEPT THOSE WHO ARE WORKING IN DEPT 30
select *,(sal*12) as anaual_salary from emp where deptno=30;


-- 15)	LIST THE EMPLOYEES WHOSE NAME DOES NOT END WITH ‘ES’ AND ‘R’
select * from emp where ename like '%ES' or ename like '%R';

-- 16)	LIST ALL THE EMPLOYEES WHO ARE HAVING REPORTING MANAGERS IN DEPT 10 ALONG WITH 10% HIKE IN SALARY
select *, (sal*0.1) as salary_Hike from emp where not mgr is null and deptno=10;

-- 17)	DISPLAY ALL THE EMPLOYEE WHO ARE ‘SALESMAN’S HAVING ‘E’ AS THE LAST BUT ONE CHARACTER IN ENAME.
select * from emp where job = 'salesman' and ename like '%e_';

-- 18)	DISPLAY ALL THE EMPLOYEE WHO ARE JOINED AFTER YEAR 81.
select * from emp where hiredate > '1981-12-31';

-- 19)	DISPLAY ALL THE EMPLOYEE WHO ARE JOINED  DURING 1982. 
select * from emp where hiredate between '1982-01-01' and '1982-12-31';


-- 20)	LIST THE EMPLOYEES WHO ARE NOT WORKING 
-- AS MANAGERS AND CLERKS IN DEPT 10 AND 20 WITH A SALARY IN THE RANGE OF 1000 TO 3000.

 select * from emp where job not in ('manager','clerk') and deptno in (10,20) and sal between 1000 and 3000;

create table product(pid int primary key auto_increment,pname varchar(50),price int);
insert into product (pname,price) values('laptop',50000),('mobile',20000),('led-tv',60000),('ipad',49000),('smartwatch',9000);

select * from product;
select *, 
case when price > 30000
then  "expensive products"
else
"not expensive products"
end as status
from product;


select *, 
case 
when sal > 2500 then 
'High salary'
else 
'low salary'
end as salary_status
from emp ;


drop table prodcut;
desc product;

/*WAQTD EMPLOYEE NAME,EMPLOYEE DNAME,
MANAGER NAME ,MANAGER DNAME
IF EMPLOYEE &MANAGER WORK IN SAME LOCATION
NEW YORK*/

select * from emp JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO WHERE DEPT.LOC = 'NEW YORK' ;
select * from dept;

SELECT E1.ENAME,D1.DNAME,M1.ENAME,D2.DNAME FROM EMP E1 JOIN DEPT D1 JOIN EMP M1 JOIN DEPT D2 ON E1.DEPTNO=D1.DEPTNO AND M1.DEPTNO=D2.DEPTNO
AND M1.EMPNO=E1.MGR WHERE D1.LOC='NEW YORK' AND D2.LOC = 'NEW YORK';


/*WAQTD DETAILS OF EMPLOYEE,DETAILS OF DEPARTMENT
TABLE IF EMPLOYEE IS WORKING IN DNAME RESEARCH
OR SALES*/

SELECT * FROM DEPT ;

SELECT * FROM EMP JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO WHERE DNAME IN ('RESEARCH' ,'SALES');

/*WAQTD ENAME,SALARY,JOB,LOC OF EMPLOYEE
IF EMPLOYEE EMPLOYEE IS WORKING AS MANAGER
AND GETTING SALARY MORE THAN BLAKE*/

SELECT E1.ENAME,E1.SAL,E1.JOB,D1.LOC FROM EMP E1 JOIN DEPT D1 ON E1.DEPTNO=D1.DEPTNO WHERE E1.JOB='MANAGER' AND E1.SAL > (SELECT SAL FROM EMP WHERE ENAME ='BLAKE');

/*WAQTD NAME,HIREDATE,JOB,DNAME,LOCATION OF EMPLOYEE IF EMPLOYEE
IS WORKING AS SALESMAN AND WORKING IN DEPTNO 20 OR 30 */

SELECT E.ENAME,E.HIREDATE,E.JOB,D.DNAME,D.LOC FROM EMP E JOIN DEPT D ON E.DEPTNO=D.DEPTNO WHERE E.JOB='SALESMAN' AND E.DEPTNO IN (20,30);

/*WAQTD ENAME,DEPTNO OF EMPLOYEE,DNAME&DEPTNO OF DEPARTMENT TABLE
IF EMPLOYEE IS HIRED LAST*/

SELECT * FROM EMP ;
SELECT E.ENAME,E.DEPTNO,D.DNAME,D.DEPTNO FROM EMP E JOIN DEPT D ON E.DEPTNO=D.DEPTNO 



WHERE E.HIREDATE =(SELECT HIREDATE FROM EMP ORDER BY HIREDATE DESC LIMIT 1);