

CREATE TABLE PERSON1 (
    NAME VARCHAR(45),
    AGE INT
);


INSERT INTO PERSON1 VALUES ('MATTHEW', 30);
INSERT INTO PERSON1 VALUES ('MARK', 20);

SELECT * FROM PERSON1;

CREATE TABLE MY_BACKUP_TABLE ( 
    COLL VARCHAR2(100), 
    COL2 NUMBER,
    OPERATION_TYPE VARCHAR2(10),
    CHANGE_TIME TIMESTAMP
);

CREATE OR REPLACE TRIGGER MY_TRIGGER_INSERT
AFTER INSERT ON PERSON1
FOR EACH ROW 
BEGIN
    INSERT INTO MY_BACKUP_TABLE (COLL, COL2, OPERATION_TYPE, CHANGE_TIME)
    VALUES (:NEW.NAME, :NEW.AGE, 'INSERT', SYSTIMESTAMP);
END;
/
INSERT INTO PERSON1 (NAME, AGE) VALUES ('JOHN DOE', 25);
SELECT * FROM PERSON1;
SELECT * FROM MY_BACKUP_TABLE;

CREATE OR REPLACE TRIGGER MY_TRIGGER_UPDATE
AFTER UPDATE ON PERSON1
FOR EACH ROW
BEGIN
    INSERT INTO MY_BACKUP_TABLE (COLL, COL2, OPERATION_TYPE, CHANGE_TIME)
    VALUES (:NEW.NAME, :NEW.AGE, 'NEW', SYSTIMESTAMP);

    INSERT INTO MY_BACKUP_TABLE (COLL, COL2, OPERATION_TYPE, CHANGE_TIME)
    VALUES (:OLD.NAME, :OLD.AGE, 'OLD', SYSTIMESTAMP);
END;
/


CREATE OR REPLACE TRIGGER MY_TRIGGER_UPDATE
AFTER UPDATE ON PERSON1
FOR EACH ROW
BEGIN
    INSERT INTO MY_BACKUP_TABLE (COLL, COL2, OPERATION_TYPE, CHANGE_TIME)
    VALUES (:NEW.NAME, :NEW.AGE, 'NEW', SYSTIMESTAMP);

    INSERT INTO MY_BACKUP_TABLE (COLL, COL2, OPERATION_TYPE, CHANGE_TIME)
    VALUES (:OLD.NAME, :OLD.AGE, 'OLD', SYSTIMESTAMP);
END;
/

UPDATE PERSON1 SET AGE = 30 WHERE NAME = 'JOHN DOE';

CREATE OR REPLACE TRIGGER MY_TRIGGER_DELETE
AFTER DELETE ON PERSON1
FOR EACH ROW
BEGIN
    INSERT INTO MY_BACKUP_TABLE (COLL, COL2, OPERATION_TYPE, CHANGE_TIME) 
    VALUES (:OLD.NAME, :OLD.AGE, 'DELETE', SYSTIMESTAMP);
END;
/

SELECT * FROM PERSON1;



