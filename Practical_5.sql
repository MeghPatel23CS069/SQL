CREATE TABLE JOBPROFILE (
    EMP_ID Number(7) PRIMARY KEY,
    EMP_NAME VARCHAR(30) NOT NULL,
    EMP_SALARY NUMBER NOT NULL CHECK (EMP_SALARY>0) ,
    JOB_ID VARCHAR(30) UNIQUE,
    DEPARTMENT VARCHAR(30)
);

DESC JOBPROFILE;

INSERT INTO JobProfile (EMP_ID, EMP_NAME, EMP_SALARY, JOB_ID, DEPARTMENT)
VALUES (1001, 'John Doe', 50000, 'J101', 'Sales');
INSERT INTO JobProfile (EMP_ID, EMP_NAME, EMP_SALARY, JOB_ID, DEPARTMENT)
VALUES (1002, 'Jane Smith', 55000, 'J102', 'Marketing');
INSERT INTO JobProfile (EMP_ID, EMP_NAME, EMP_SALARY, JOB_ID, DEPARTMENT)
VALUES (1003, 'Alice Johnson', 60000, 'J103', 'Engineering');
INSERT INTO JobProfile (EMP_ID, EMP_NAME, EMP_SALARY, JOB_ID, DEPARTMENT)
VALUES (1004, 'Bob Brown', 45000, 'J104', 'HR');
INSERT INTO JobProfile (EMP_ID, EMP_NAME, EMP_SALARY, JOB_ID, DEPARTMENT)
VALUES (1005, 'Megh Patel', 45000, 'J105', 'OWNER');

DROP TABLE CUSTOMER ;

CREATE TABLE CUSTOMER (
    CUST_ID NUMBER PRIMARY KEY ,
    CUST_NAME VARCHAR(30) NOT NULL 
) ;

DESC CUSTOMER ;

INSERT INTO CUSTOMER (CUST_ID, CUST_NAME)
VALUES (1, 'Alice Williams');
INSERT INTO CUSTOMER (CUST_ID, CUST_NAME)
VALUES (2, 'Bob Johnson');
INSERT INTO CUSTOMER (CUST_ID, CUST_NAME)
VALUES (3, 'Charlie Brown');
INSERT INTO CUSTOMER (CUST_ID, CUST_NAME)
VALUES (4, 'David Lee');

SELECT * FROM JOBPROFILE ;
SELECT * FROM CUSTOMER ;

SELECT AVG(EMP_SALARY) AS AVG FROM JOBPROFILE ;

SELECT AVG(DISTINCT EMP_SALARY) AS AVG FROM JOBPROFILE ;

SELECT MIN(EMP_SALARY) AS MIN_SALARY FROM JOBPROFILE ;

SELECT COUNT(*) AS TOTALEMPLOYEES FROM JOBPROFILE ;

SELECT COUNT(DISTINCT DEPARTMENT) AS Distinct_Departments FROM JOBPROFILE;

SELECT MAX(EMP_SALARY) AS MAX_SALARY FROM JOBPROFILE ;

SELECT SUM(EMP_SALARY) AS TOTAL_SALARY FROM JOBPROFILE;

SELECT SUM(DISTINCT EMP_SALARY) AS TOTAL_SALARY FROM JOBPROFILE;

SELECT EMP_NAME , ABS(EMP_SALARY-1000) AS DEDUCTED_SALARY FROM JOBPROFILE ;

SELECT EMP_NAME , POWER(EMP_SALARY,2) AS SQUARE_SALARY FROM JOBPROFILE ;

SELECT EMP_NAME , ROUND(EMP_SALARY,2) AS ROUNDED_SALARY FROM JOBPROFILE ;

SELECT EMP_NAME , SQRT(EMP_SALARY) AS SQUARE_ROOT_SALARY FROM JOBPROFILE ;

SELECT EMP_ID,UPPER(EMP_NAME) AS UPPER_NAME , LOWER(EMP_NAME) AS LOWER_NAME ,INITCAP(EMP_NAME) AS INIT_CAP_NAME FROM JOBPROFILE ;

SELECT EMP_ID ,SUBSTR(EMP_NAME,1,3) AS THREE_CHARACTERS FROM JOBPROFILE ;

SELECT EMP_ID,EMP_NAME ,LENGTH(EMP_NAME) AS Length FROM JOBPROFILE ;

SELECT EMP_ID,EMP_NAME , LTRIM(EMP_NAME,'A') AS LTRIMMED , RTRIM(EMP_NAME,'a') AS RTRIMMED FROM JOBPROFILE ;

SELECT EMP_ID,EMP_NAME , LPAD(EMP_NAME,10,'*') AS LPADDED , RPAD(EMP_NAME,10,'*') AS RPADDED FROM JOBPROFILE ;


SELECT EMP_ID, EMP_NAME ,EMP_SALARY, TO_CHAR(EMP_SALARY,'FM$999,999,999.00') AS EMP_SALARY_STRING FROM JOBPROFILE ;