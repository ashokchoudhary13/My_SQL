/*function:
"it is block of code or list of instructions
which perform some specific task".
->there are 3 main components of function
  1)function name
  2)no of arguments(no inputs)
  3)return type.
types of function
1)user defined function
2)built in function
  1)single row function/scalar function:
  ->if we pass one input we get one output
  ->if we pass n inputs we get n outputs.
  2)multi row function/aggregate function/
    group function:
  ->if we pass multiple inputs all will bound
    together we get single output.
  ->types of mrf()
    1)max()
    2)min()
    3)sum()
    4)avg()
    5)count()
/*waqtd maximum salary of employee*/
select max(sal)
from emp;
/*waqtd maximum salary give to salesman*/
select max(sal)
from emp
where job='salesman';
/*waqtd minimum salary given to deptno 10*/
select min(sal)
from emp
where deptno=10;
/*waqtd total salary given to manager*/
select sum(sal)
from emp
where job='manager';
/*waqtd average salary given to employee*/
select avg(sal)
from emp;
/*waqtd no of employees working as salesman*/
select count(*)
from emp
where job='salesman';
/*waqtd number of deptno present in employee table*/
select count(distinct deptno)
from emp;
/*waqtd number of jobs present in employee table*/
select count(distinct job)
from emp;
select * from emp;
/*characteristics of mrf():
1)mrf() accepts only one argument i.e
mrf(column_name/expression).
2)mrf() will ignore null value.
3)mrf() cannot be written in where caluse.
4)ALONG WITH MRF()(MAX(),MIN(),SUM(),AVG(),COUNT())
WE CANNOT PASS ANY OTHER COLUMN NAME AS ARGUMENT.
5)COUNT() IS THE ONLY MRF() WHICH ACCEPTS * AS ARGUMENT.
*/
select ename
from emp
where max(sal)=5000;

select max(SAL),MIN(SAL ),SUM(SAL),AVG(SAL),COUNT(SAL)
FROM EMP
WHERE JOB='MANAGER';

SELECT COUNT(*)
FROM EMP;
SELECT MAX(*)
FROM EMP;
/*srf():
1)length():"it is used to find length of given string"
syntax:length('string');
ex: select length('karthik');
2)upper():"it is convert lowercase letters to uppercase
letters"
syntax:upper('string');
ex:select upper('karthik');
3)lower():
"it is going to convert uppercase letters to lowercase
letter".
syntax:lower('string');
ex:select lower('RAHUL');
/*REVERSE():
"IT IS USED TO REVERSE GIVEN STRING".
SYNTAX:REVERSE('STRING').
SELECT REVERSE('PRIYANKA');
/*waqtd to check whether employee name is palindrome
or not*/
select ename
from emp
where ename=reverse(ename);
update emp
set ename='nitin'
where sal=800;
select ename from emp;
/*Mod():
"it is used find remainder of given number"
syntax:MOD(M,N)
*/
SELECT MOD(2,2);
/*WAQTD EVEN NUMBER OF EMPLOYEE NUMBER*/
SELECT EMPNO
FROM EMP
WHERE MOD(EMPNO,2)=0;

/*ROUND():
"IT IS USED TO ROUND-OFF GIVEN NUMBER".
*/
SELECT ROUND(4.5);
SELECT PI();
SELECT NOW();
SELECT POW(2,2);
SELECT SQRT(9);

SET GLOBAL log_bin_trust_function_creators=1;



