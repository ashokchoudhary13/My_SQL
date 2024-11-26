/*WAQTD NUMBER OF EMPLOYEES WORKING IN EACH DEPTNO*/
SELECT COUNT(*),DEPTNO
FROM EMP
GROUP BY DEPTNO;
USE EXCELR;

/*GROUP BY CLAUSE:
"IT IS USED FOR GROUPING RECORDS".
->GROUP BY CLAUSE WILL EXECUTE ROW_BY_ROW.
SYNTAX:
SELECT GROUP BY EXPRESSION/GROUP FUNCTION
FROM TABLE_NAME
[WHERE <FILTER CONDITION>]
GROUP BY COLUMN_NAME/EXPRESSION.*/
SELECT MAX(SAL),MIN(SAL),SUM(SAL),ENAME
FROM EMP
GROUP BY ENAME;
/*WAQTD NUMBER OF EMPLOYEES WORKING IN EACH DEPTNO
EXCEPT ANALYST*/
SELECT COUNT(*),DEPTNO
FROM EMP
WHERE JOB!='ANALYST'
GROUP BY DEPTNO;
SELECT *
FROM EMP;
/*WAQTD MAXIMUM SALARY GIVEN TO EACH JOB*/
SELECT MAX(SAL),JOB
FROM EMP
GROUP BY JOB;
/*WAQTD NUMBER OF TIMES SALARY PRESENT IN EMPLOYEE TABLE*/
SELECT COUNT(*),SAL
FROM EMP
GROUP BY SAL;
/*WAQTD NUMBER OF TIMES JOBS PRESENT IN EMPLOYEE TABLE*/
SELECT COUNT(*),JOB
FROM EMP
GROUP BY JOB;
/*CHARACTERISTICS OF GROUP BY CLAUSE:
1)GROUP BY CLAUSE IS USED FOR GROUPING RECORDS.
2)GROUP BY CLAUSE WILL EXECUTE ROW_BY_ROW.
3)GROUP BY CLAUSE WILL EXECUTE WITHOUT WHERE CLAUSE.
4)WHATEVER THE COLUMN_NAME IS USED FOR GROUPING
CAN BE PASSED ON TO SELECT CLAUSE.
5)AFTER GROUP BY CLAUSE WHICHEVER THE CLAUSE WILL
  EXECUTE THAT MUST BE GROUP BY GROUP.*/
/*WAQTD NUMBER OF EMPLOYEES WORKING IN EACH DEPTNO IF THERE ARE
ATLEAST 3 EMPLOYEES WORKING IN EACH DEPTNO*/
SELECT COUNT(*),DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*)>=10;
/*HAVING CLAUSE:
"IT IS USED TO FILTER THE GROUPS".
->HAVING CLAUSE WILL EXECUTE GROUP BY GROUP.
->IN HAVING CLAUSE WE CAN WRITE MULTIROW FUNCTION.
SYNTAX:
SELECT GROUP BY EXPRESSION/GROUP FUNCTION
FROM TABLE_NAME
[WHERE <FILTER CONDITION>]
GROUP BY COLUMN_NAME/EXPRESSION
HAVING <FILTER_GROUP_CONDITION>;*/

SELECT COUNT(*),DEPTNO
FROM EMP
WHERE COUNT(*)>3
GROUP BY DEPTNO;

/*WAQTD NUMBER OF EMPLOYEES WORKING IN EACH DEPTNO.IF THERE ARE ATLEAST
4 EMPLOYEES WORKING IN EACH DEPTNO EXCEPT CLERK*/
SELECT COUNT(*),DEPTNO
FROM EMP
WHERE JOB!='CLERK'
GROUP BY DEPTNO
HAVING COUNT(*)>=4;

/*WAQTD NUMBER EMPLOYEES WORKING IN EACH JOB IF EMPLOYEE IS GETTING
SALARY MORE THAN 3000*/
SELECT COUNT(*),JOB
FROM EMP
WHERE SAL>3000
GROUP BY JOB;
/*WAQTD SALARY WHICH IS REPETED/DUPLICATED*/
SELECT SAL,count(*)
FROM EMP
GROUP BY SAL
HAVING COUNT(*)>1;
/*WAQTD JOB WHICH IS REPETED*/
SELECT JOB,COUNT(*)
FROM EMP
GROUP BY JOB
HAVING COUNT(*)>1;
/*WAQTD MAXIMUM GIVEN TO EACH JOB IF MAXIMUM SALARY MORE THAN 2500*/
SELECT MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MAX(SAL)>2500;
/*WAQTD TOTAL SALARY GIVEN TO EACH DEPTNO.IF TOTAL SALARY IS MORE THAN
8000*/
SELECT SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL)>8000;
/*WAQTD MAXIMUM SALARY,MINIMUM SALARY GIVEN TO EACH DEPTNO IF EMPLOYEE IS 
GETTING SALARY MORE THAN 2000 AND EMPLOYEES TOTAL SALARY IS MORE THAN 3400*/
SELECT MAX(SAL),MIN(SAL)
FROM EMP
WHERE SAL>2000
GROUP BY DEPTNO
HAVING SUM(SAL)>3400;

/*ORDER BY CLAUSE:
"IT IS SORT GIVEN RESULT SET IN ASCENDING/DESCENDING ORDER".
->ORDER BY CLAUSE WILL EXECUTE AFTER THE SELECT CLAUSE.
->BY DEFAULT ORDER BY CLAUSE WILL BE IN ASCENDING ORDER.
*/
SELECT SAL
FROM EMP
ORDER BY SAL;

/*WAQTD NUMBER OF EMPLOYEE WORKING IN EACH DEPTNO IF THERE ATLEAST
3 EMPLOYEES WORKING IN EACH DEPTNO AND SORT THE DEPTNO IN DESCENDING
ORDER*/
SELECT COUNT(*),DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*)>=3
ORDER BY DEPTNO DESC;

SELECT *
FROM EMP
LIMIT 10;





