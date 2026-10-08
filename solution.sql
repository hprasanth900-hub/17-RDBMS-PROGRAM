CREATE DATABASE STUDENT;
USE STUDENT;
CREATE TABLE Student (
    StudentID NUMBER PRIMARY KEY,
    StudentName VARCHAR2(50),
    DepartmentID NUMBER
);

Step 2: Create the procedure
CREATE OR REPLACE PROCEDURE InsertStudent (
    p_StudentID     IN NUMBER,
    p_StudentName   IN VARCHAR2,
    p_DepartmentID  IN NUMBER
)
IS
BEGIN
    INSERT INTO Student (StudentID, StudentName, DepartmentID)
    VALUES (p_StudentID, p_StudentName, p_DepartmentID);

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/

Step 3: Execute the procedure
SET SERVEROUTPUT ON;

BEGIN
    InsertStudent(101, 'Arun', 10);
END;
/
