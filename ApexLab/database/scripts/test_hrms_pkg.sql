SET SERVEROUTPUT ON

PROMPT Compiling HRMS_PKG package specification
@@../packages/hrms_pkg.pks

PROMPT Compiling HRMS_PKG package body
@@../packages/hrms_pkg.pkb

DECLARE
    l_locationId        ADMIN.HRMS_LOCATIONS.LOCATION_ID%TYPE;
    l_departmentId      ADMIN.HRMS_DEPARTMENTS.DEPARTMENT_ID%TYPE;
    l_designationId     ADMIN.HRMS_DESIGNATIONS.DESIGNATION_ID%TYPE;
    l_gradeId           ADMIN.HRMS_GRADES.GRADE_ID%TYPE;
    l_employmentTypeId  ADMIN.HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_ID%TYPE;
    l_employeeId        ADMIN.HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE;
    l_contactId         ADMIN.HRMS_EMPLOYEE_CONTACTS.CONTACT_ID%TYPE;
    l_documentId        ADMIN.HRMS_EMPLOYEE_DOCUMENTS.DOCUMENT_ID%TYPE;
    l_dependentId       ADMIN.HRMS_EMPLOYEE_DEPENDENTS.DEPENDENT_ID%TYPE;
    l_errorCode         NUMBER;
    l_errorMessage      VARCHAR2(1000);
    l_response          VARCHAR2(200);
    l_count             PLS_INTEGER;

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
    DELETE FROM ADMIN.HRMS_EMPLOYEES
     WHERE EMPLOYEE_CODE IN ('UT-HRMS-EMP-001', 'UT-HRMS-EMP-002')
        OR CNIC IN ('3520212345671', '3520212345672')
        OR EMAIL IN ('ut.employee@example.com', 'ut.employee.updated@example.com');

    DELETE FROM ADMIN.HRMS_DEPARTMENTS WHERE DEPARTMENT_CODE = 'UT-HRMS-DEPT';
    DELETE FROM ADMIN.HRMS_LOCATIONS WHERE LOCATION_CODE = 'UT-HRMS-LOC';
    DELETE FROM ADMIN.HRMS_DESIGNATIONS WHERE DESIGNATION_CODE = 'UT-HRMS-DSG';
    DELETE FROM ADMIN.HRMS_GRADES WHERE GRADE_CODE = 'UT-HRMS-GRD';
    DELETE FROM ADMIN.HRMS_EMPLOYMENT_TYPES WHERE EMPLOYMENT_TYPE_CODE = 'UT-HRMS-ET';
    COMMIT;

    ADMIN.HRMS_PKG.createLocation(
        locationCode  => 'ut-hrms-loc',
        locationName  => 'Unit Test Location',
        city          => 'Karachi',
        country       => 'Pakistan',
        userName      => 'UNIT_TEST',
        errorCode     => l_errorCode,
        errorMessage  => l_errorMessage,
        response      => l_response
    );
    assertSuccess('createLocation');
    l_locationId := TO_NUMBER(l_response);

    ADMIN.HRMS_PKG.createDepartment(
        departmentCode     => 'ut-hrms-dept',
        departmentName     => 'Unit Test Department',
        parentDepartmentId => NULL,
        locationId         => l_locationId,
        costCenter         => 'utcc',
        userName           => 'UNIT_TEST',
        errorCode          => l_errorCode,
        errorMessage       => l_errorMessage,
        response           => l_response
    );
    assertSuccess('createDepartment');
    l_departmentId := TO_NUMBER(l_response);

    ADMIN.HRMS_PKG.createDesignation(
        designationCode => 'ut-hrms-dsg',
        designationName => 'Unit Test Designation',
        userName        => 'UNIT_TEST',
        errorCode       => l_errorCode,
        errorMessage    => l_errorMessage,
        response        => l_response
    );
    assertSuccess('createDesignation');
    l_designationId := TO_NUMBER(l_response);

    ADMIN.HRMS_PKG.createGrade(
        gradeCode     => 'ut-hrms-grd',
        gradeName     => 'Unit Test Grade',
        minSalary     => 1000,
        maxSalary     => 2000,
        userName      => 'UNIT_TEST',
        errorCode     => l_errorCode,
        errorMessage  => l_errorMessage,
        response      => l_response
    );
    assertSuccess('createGrade');
    l_gradeId := TO_NUMBER(l_response);

    ADMIN.HRMS_PKG.createEmploymentType(
        employmentTypeCode => 'ut-hrms-et',
        employmentTypeName => 'Unit Test Employment Type',
        userName           => 'UNIT_TEST',
        errorCode          => l_errorCode,
        errorMessage       => l_errorMessage,
        response           => l_response
    );
    assertSuccess('createEmploymentType');
    l_employmentTypeId := TO_NUMBER(l_response);

    ADMIN.HRMS_PKG.createEmployee(
        employeeCode     => 'ut-hrms-emp-001',
        firstName        => 'Unit',
        lastName         => 'Employee',
        cnic             => '3520212345671',
        email            => 'UT.EMPLOYEE@example.com',
        mobile           => '+92-300-0000001',
        departmentId     => l_departmentId,
        designationId    => l_designationId,
        gradeId          => l_gradeId,
        employmentTypeId => l_employmentTypeId,
        dateOfJoining    => TRUNC(SYSDATE),
        status           => 'ACTIVE',
        userName         => 'UNIT_TEST',
        errorCode        => l_errorCode,
        errorMessage     => l_errorMessage,
        response         => l_response
    );
    assertSuccess('createEmployee');
    l_employeeId := TO_NUMBER(l_response);

    SELECT COUNT(*)
      INTO l_count
      FROM ADMIN.HRMS_EMPLOYEES e
     WHERE e.EMPLOYEE_ID = l_employeeId
       AND e.EMPLOYEE_CODE = 'UT-HRMS-EMP-001'
       AND e.EMAIL = 'ut.employee@example.com'
       AND e.STATUS = 'ACTIVE';
    assertTrue(l_count = 1, 'createEmployee inserted normalized employee');

    ADMIN.HRMS_PKG.createEmployeeContact(
        employeeId   => l_employeeId,
        contactType  => 'mobile',
        contactValue => '+92-300-0000001',
        isPrimary    => 'Y',
        userName     => 'UNIT_TEST',
        errorCode    => l_errorCode,
        errorMessage => l_errorMessage,
        response     => l_response
    );
    assertSuccess('createEmployeeContact');
    l_contactId := TO_NUMBER(l_response);

    ADMIN.HRMS_PKG.createEmployeeDocument(
        employeeId     => l_employeeId,
        documentType   => 'CNIC',
        documentNumber => '3520212345671',
        fileName       => 'cnic.pdf',
        mimeType       => 'application/pdf',
        issueDate      => TRUNC(SYSDATE),
        expiryDate     => TRUNC(SYSDATE) + 365,
        userName       => 'UNIT_TEST',
        errorCode      => l_errorCode,
        errorMessage   => l_errorMessage,
        response       => l_response
    );
    assertSuccess('createEmployeeDocument');
    l_documentId := TO_NUMBER(l_response);

    ADMIN.HRMS_PKG.createEmployeeDependent(
        employeeId    => l_employeeId,
        fullName      => 'Unit Dependent',
        relationship  => 'child',
        dateOfBirth   => ADD_MONTHS(TRUNC(SYSDATE), -120),
        cnic          => NULL,
        userName      => 'UNIT_TEST',
        errorCode     => l_errorCode,
        errorMessage  => l_errorMessage,
        response      => l_response
    );
    assertSuccess('createEmployeeDependent');
    l_dependentId := TO_NUMBER(l_response);

    assertTrue(l_contactId IS NOT NULL, 'contact id returned');
    assertTrue(l_documentId IS NOT NULL, 'document id returned');
    assertTrue(l_dependentId IS NOT NULL, 'dependent id returned');

    ADMIN.HRMS_PKG.updateEmployee(
        employeeId       => l_employeeId,
        employeeCode     => 'ut-hrms-emp-002',
        firstName        => 'Updated',
        lastName         => 'Employee',
        cnic             => '3520212345672',
        email            => 'ut.employee.updated@example.com',
        mobile           => '+92-300-0000002',
        departmentId     => l_departmentId,
        designationId    => l_designationId,
        gradeId          => l_gradeId,
        employmentTypeId => l_employmentTypeId,
        dateOfJoining    => TRUNC(SYSDATE),
        status           => 'INACTIVE',
        userName         => 'UNIT_TEST',
        errorCode        => l_errorCode,
        errorMessage     => l_errorMessage,
        response         => l_response
    );
    assertSuccess('updateEmployee');

    ADMIN.HRMS_PKG.getEmployeeFullName(
        employeeId    => l_employeeId,
        errorCode     => l_errorCode,
        errorMessage  => l_errorMessage,
        response      => l_response
    );
    assertSuccess('getEmployeeFullName');
    assertTrue(l_response = 'Updated Employee', 'getEmployeeFullName returned updated full name');

    ADMIN.HRMS_PKG.deleteEmployee(
        employeeId    => l_employeeId,
        userName      => 'UNIT_TEST',
        errorCode     => l_errorCode,
        errorMessage  => l_errorMessage,
        response      => l_response
    );
    assertSuccess('deleteEmployee');

    DELETE FROM ADMIN.HRMS_DEPARTMENTS WHERE DEPARTMENT_ID = l_departmentId;
    DELETE FROM ADMIN.HRMS_LOCATIONS WHERE LOCATION_ID = l_locationId;
    DELETE FROM ADMIN.HRMS_DESIGNATIONS WHERE DESIGNATION_ID = l_designationId;
    DELETE FROM ADMIN.HRMS_GRADES WHERE GRADE_ID = l_gradeId;
    DELETE FROM ADMIN.HRMS_EMPLOYMENT_TYPES WHERE EMPLOYMENT_TYPE_ID = l_employmentTypeId;
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('HRMS_PKG tests passed.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/
