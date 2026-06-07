CREATE OR REPLACE PACKAGE HRMS_PKG_EMPLOYEE AS
    /*
        Employee Management API for HRMS_EMPLOYEES.

        All procedures follow the repository API response convention:
        errorCode = 200 for success, 400 for validation or processing errors,
        errorMessage contains the result message, and response contains the
        generated identifier or related response value.
    */

    PROCEDURE createEmployee(
        employeeNumber    IN  HRMS_EMPLOYEES.EMPLOYEE_NUMBER%TYPE,
        firstName         IN  HRMS_EMPLOYEES.FIRST_NAME%TYPE,
        middleName        IN  HRMS_EMPLOYEES.MIDDLE_NAME%TYPE,
        lastName          IN  HRMS_EMPLOYEES.LAST_NAME%TYPE,
        email             IN  HRMS_EMPLOYEES.EMAIL%TYPE,
        phoneNumber       IN  HRMS_EMPLOYEES.PHONE_NUMBER%TYPE,
        hireDate          IN  HRMS_EMPLOYEES.HIRE_DATE%TYPE,
        jobTitle          IN  HRMS_EMPLOYEES.JOB_TITLE%TYPE,
        departmentName    IN  HRMS_EMPLOYEES.DEPARTMENT_NAME%TYPE,
        managerEmployeeId IN  HRMS_EMPLOYEES.MANAGER_EMPLOYEE_ID%TYPE,
        employmentStatus  IN  HRMS_EMPLOYEES.EMPLOYMENT_STATUS%TYPE,
        userName          IN  HRMS_EMPLOYEES.CREATED_BY%TYPE,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    );

    PROCEDURE updateEmployee(
        employeeId        IN  HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        employeeNumber    IN  HRMS_EMPLOYEES.EMPLOYEE_NUMBER%TYPE,
        firstName         IN  HRMS_EMPLOYEES.FIRST_NAME%TYPE,
        middleName        IN  HRMS_EMPLOYEES.MIDDLE_NAME%TYPE,
        lastName          IN  HRMS_EMPLOYEES.LAST_NAME%TYPE,
        email             IN  HRMS_EMPLOYEES.EMAIL%TYPE,
        phoneNumber       IN  HRMS_EMPLOYEES.PHONE_NUMBER%TYPE,
        hireDate          IN  HRMS_EMPLOYEES.HIRE_DATE%TYPE,
        jobTitle          IN  HRMS_EMPLOYEES.JOB_TITLE%TYPE,
        departmentName    IN  HRMS_EMPLOYEES.DEPARTMENT_NAME%TYPE,
        managerEmployeeId IN  HRMS_EMPLOYEES.MANAGER_EMPLOYEE_ID%TYPE,
        employmentStatus  IN  HRMS_EMPLOYEES.EMPLOYMENT_STATUS%TYPE,
        userName          IN  HRMS_EMPLOYEES.UPDATED_BY%TYPE,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    );

    PROCEDURE deleteEmployee(
        employeeId    IN  HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        userName      IN  HRMS_EMPLOYEES.UPDATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE getEmployeeFullName(
        employeeId    IN  HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE employeeEmailExists(
        email             IN  HRMS_EMPLOYEES.EMAIL%TYPE,
        employeeIdToSkip  IN  HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    );
END HRMS_PKG_EMPLOYEE;
/

SHOW ERRORS PACKAGE HRMS_PKG_EMPLOYEE
