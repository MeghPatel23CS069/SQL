SELECT * FROM EMPLOYEE ;
SELECT * FROM DEPOSIT ;
SELECT * FROM JOB;


UPDATE DEPOSIT SET BNAME='andheri' WHERE A_NO=101 ;

SELECT * FROM EMPLOYEE WHERE EMP_NAME LIKE 'A_a%';

SELECT EMP_NO,EMP_NAME,EMP_SAL FROM EMPLOYEE WHERE  EMP_NAME LIKE '_____' AND EMP_NAME LIKE 'Ani%';

SELECT * FROM EMPLOYEE WHERE EMP_NAME LIKE '_m%' OR EMP_NAME LIKE '_n%' ;


SELECT * FROM EMPLOYEE WHERE EMP_NAME LIKE '_n%' AND EMP_NAME LIKE '_____' ;

SELECT * FROM EMPLOYEE WHERE EMP_COMM IS NULL AND EMP_NAME LIKE '__a%';

CREATE TABLE Customer AS SELECT * FROM DEPOSIT;

SELECT * FROM CUSTOMER ;

UPDATE CUSTOMER SET BNAME='andheri' WHERE A_NO=101 ;

SELECT CNAME FROM CUSTOMER WHERE BNAME='andheri' OR BNAME='dadar' OR BNAME='virar';

SELECT JOB_ID FROM JOB WHERE JOB_ID LIKE 'FI%' ;

SELECT JOB_TITLE FROM JOB WHERE JOB_ID LIKE '%MGR' AND MAX_SAL>12000;