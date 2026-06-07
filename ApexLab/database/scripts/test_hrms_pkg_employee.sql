SET SERVEROUTPUT ON

PROMPT Compiling HRMS_PKG_EMPLOYEE package specification
@@../packages/hrms_pkg_employee.pks

PROMPT Compiling HRMS_PKG_EMPLOYEE package body
@@../packages/hrms_pkg_employee.pkb

DECLARE
    l_employeeId    HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE;
    l_errorCode     NUMBER;
    l_errorMessage  VARCHAR2(1000);
    l_response      VARCHAR2(200);
    l_count         PLS_INTEGER;

    PROCEDURE assertSuccess(
        testName IN VARCHAR2
    ) AS
    BEGIN
        IF l_errorCode <> 200 THEN
            RAISE_APPLICATION_ERROR(
                -20999,
                testName || ' failed. errorCode=' || l_errorCode ||
                ', errorMessage=' || l_errorMessage ||
                ', response=' || l_response
            );
        END IF;
    END assertSuccess;

    PROCEDURE assertTrue(
        condition IN BOOLEAN,
        message   IN VARCHAR2
    ) AS
    BEGIN
        IF condition IS NULL OR NOT condition THEN
            RAISE_APPLICATION_ERROR(-20998, 'Assertion failed: ' || message);
        END IF;
    END assertTrue;
BEGIN
    DELETE FROM HRMS_EMPLOYEES
     WHERE EMPLOYEE_NUMBER IN ('UT-HRMS-EMP-001', 'UT-HRMS-EMP-002')
        OR EMAIL IN ('unit.employee@example.com', 'updated.employee@example.com');

    COMMIT;

    HRMS_PKG_EMPLOYEE.createEmployee(
        employeeNumber    => 'UT-HRMS-EMP-001',
        firstName         => 'Unit',
        middleName        => NULL,
        lastName          => 'Employee',
        email             => 'UNIT.EMPLOYEE@example.com',
        phoneNumber       => '+1-555-0100',
        hireDate          => TRUNC(SYSDATE),
        jobTitle          => 'QA Analyst',
        departmentName    => 'Engineering',
        managerEmployeeId => NULL,
        employmentStatus  => 'ACTIVE',
        userName          => 'UNIT_TEST',
        errorCode         => l_errorCode,
        errorMessage      => l_errorMessage,
        response          => l_response
    );

    assertSuccess('createEmployee');
    l_employeeId := TO_NUMBER(l_response);

    SELECT COUNT(*)
      INTO l_count
      FROM HRMS_EMPLOYEES e
     WHERE e.EMPLOYEE_ID = l_employeeId
       AND e.EMPLOYEE_NUMBER = 'UT-HRMS-EMP-001'
       AND e.EMAIL = 'unit.employee@example.com'
       AND e.CREATED_BY = 'UNIT_TEST';

    assertTrue(l_count = 1, 'createEmployee inserted normalized employee data');

    HRMS_PKG_EMPLOYEE.updateEmployee(
        employeeId        => l_employeeId,
        employeeNumber    => 'UT-HRMS-EMP-002',
        firstName         => 'Updated',
        middleName        => NULL,
        lastName          => 'Employee',
        email             => 'updated.employee@example.com',
        phoneNumber       => '+1-555-0101',
        hireDate          => TRUNC(SYSDATE),
        jobTitle          => 'Senior QA Analyst',
        departmentName    => 'Product',
        managerEmployeeId => NULL,
        employmentStatus  => 'INACTIVE',
        userName          => 'UNIT_TEST',
        errorCode         => l_errorCode,
        errorMessage      => l_errorMessage,
        response          => l_response
    );

    assertSuccess('updateEmployee');

    SELECT COUNT(*)
      INTO l_count
      FROM HRMS_EMPLOYEES e
     WHERE e.EMPLOYEE_ID = l_employeeId
       AND e.EMPLOYEE_NUMBER = 'UT-HRMS-EMP-002'
       AND e.FIRST_NAME = 'Updated'
       AND e.EMAIL = 'updated.employee@example.com'
       AND e.EMPLOYMENT_STATUS = 'INACTIVE';

    assertTrue(l_count = 1, 'updateEmployee changed employee data');

    HRMS_PKG_EMPLOYEE.getEmployeeFullName(
        employeeId    => l_employeeId,
        errorCode     => l_errorCode,
        errorMessage  => l_errorMessage,
        response      => l_response
    );

    assertSuccess('getEmployeeFullName');
    assertTrue(l_response = 'Updated Employee', 'getEmployeeFullName returned full name');

    HRMS_PKG_EMPLOYEE.employeeEmailExists(
        email             => 'updated.employee@example.com',
        employeeIdToSkip  => NULL,
        errorCode         => l_errorCode,
        errorMessage      => l_errorMessage,
        response          => l_response
    );

    assertSuccess('employeeEmailExists');
    assertTrue(l_response = 'Y', 'employeeEmailExists found existing email');

    HRMS_PKG_EMPLOYEE.deleteEmployee(
        employeeId    => l_employeeId,
        userName      => 'UNIT_TEST',
        errorCode     => l_errorCode,
        errorMessage  => l_errorMessage,
        response      => l_response
    );

    assertSuccess('deleteEmployee');

    SELECT COUNT(*)
      INTO l_count
      FROM HRMS_EMPLOYEES e
     WHERE e.EMPLOYEE_ID = l_employeeId;

    assertTrue(l_count = 0, 'deleteEmployee removed employee data');

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('HRMS_PKG_EMPLOYEE tests passed.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/
