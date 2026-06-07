CREATE OR REPLACE PACKAGE HRMS_PKG AS
    /*
        Central HRMS backend API.

        This is the single application package for HRMS business procedures.
        All procedures follow the repository API response convention:
        errorCode = 200 for success, 400 for validation or processing errors.
    */

    PROCEDURE createLocation(
        locationCode  IN  HRMS_LOCATIONS.LOCATION_CODE%TYPE,
        locationName  IN  HRMS_LOCATIONS.LOCATION_NAME%TYPE,
        city          IN  HRMS_LOCATIONS.CITY%TYPE,
        country       IN  HRMS_LOCATIONS.COUNTRY%TYPE,
        userName      IN  HRMS_LOCATIONS.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE createDepartment(
        departmentCode      IN  HRMS_DEPARTMENTS.DEPARTMENT_CODE%TYPE,
        departmentName      IN  HRMS_DEPARTMENTS.DEPARTMENT_NAME%TYPE,
        parentDepartmentId  IN  HRMS_DEPARTMENTS.PARENT_DEPARTMENT_ID%TYPE,
        locationId          IN  HRMS_DEPARTMENTS.LOCATION_ID%TYPE,
        costCenter          IN  HRMS_DEPARTMENTS.COST_CENTER%TYPE,
        userName            IN  HRMS_DEPARTMENTS.CREATED_BY%TYPE,
        errorCode           OUT NUMBER,
        errorMessage        OUT VARCHAR2,
        response            OUT VARCHAR2
    );

    PROCEDURE createDesignation(
        designationCode  IN  HRMS_DESIGNATIONS.DESIGNATION_CODE%TYPE,
        designationName  IN  HRMS_DESIGNATIONS.DESIGNATION_NAME%TYPE,
        userName         IN  HRMS_DESIGNATIONS.CREATED_BY%TYPE,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    );

    PROCEDURE createGrade(
        gradeCode     IN  HRMS_GRADES.GRADE_CODE%TYPE,
        gradeName     IN  HRMS_GRADES.GRADE_NAME%TYPE,
        minSalary     IN  HRMS_GRADES.MIN_SALARY%TYPE,
        maxSalary     IN  HRMS_GRADES.MAX_SALARY%TYPE,
        userName      IN  HRMS_GRADES.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE createEmploymentType(
        employmentTypeCode  IN  HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_CODE%TYPE,
        employmentTypeName  IN  HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_NAME%TYPE,
        userName            IN  HRMS_EMPLOYMENT_TYPES.CREATED_BY%TYPE,
        errorCode           OUT NUMBER,
        errorMessage        OUT VARCHAR2,
        response            OUT VARCHAR2
    );

    PROCEDURE createEmployee(
        employeeCode      IN  HRMS_EMPLOYEES.EMPLOYEE_CODE%TYPE,
        firstName         IN  HRMS_EMPLOYEES.FIRST_NAME%TYPE,
        lastName          IN  HRMS_EMPLOYEES.LAST_NAME%TYPE,
        cnic              IN  HRMS_EMPLOYEES.CNIC%TYPE,
        email             IN  HRMS_EMPLOYEES.EMAIL%TYPE,
        mobile            IN  HRMS_EMPLOYEES.MOBILE%TYPE,
        departmentId      IN  HRMS_EMPLOYEES.DEPARTMENT_ID%TYPE,
        designationId     IN  HRMS_EMPLOYEES.DESIGNATION_ID%TYPE,
        gradeId           IN  HRMS_EMPLOYEES.GRADE_ID%TYPE,
        employmentTypeId  IN  HRMS_EMPLOYEES.EMPLOYMENT_TYPE_ID%TYPE,
        dateOfJoining     IN  HRMS_EMPLOYEES.DATE_OF_JOINING%TYPE,
        status            IN  HRMS_EMPLOYEES.STATUS%TYPE,
        userName          IN  HRMS_EMPLOYEES.CREATED_BY%TYPE,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    );

    PROCEDURE updateEmployee(
        employeeId        IN  HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        employeeCode      IN  HRMS_EMPLOYEES.EMPLOYEE_CODE%TYPE,
        firstName         IN  HRMS_EMPLOYEES.FIRST_NAME%TYPE,
        lastName          IN  HRMS_EMPLOYEES.LAST_NAME%TYPE,
        cnic              IN  HRMS_EMPLOYEES.CNIC%TYPE,
        email             IN  HRMS_EMPLOYEES.EMAIL%TYPE,
        mobile            IN  HRMS_EMPLOYEES.MOBILE%TYPE,
        departmentId      IN  HRMS_EMPLOYEES.DEPARTMENT_ID%TYPE,
        designationId     IN  HRMS_EMPLOYEES.DESIGNATION_ID%TYPE,
        gradeId           IN  HRMS_EMPLOYEES.GRADE_ID%TYPE,
        employmentTypeId  IN  HRMS_EMPLOYEES.EMPLOYMENT_TYPE_ID%TYPE,
        dateOfJoining     IN  HRMS_EMPLOYEES.DATE_OF_JOINING%TYPE,
        status            IN  HRMS_EMPLOYEES.STATUS%TYPE,
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

    PROCEDURE createEmployeeContact(
        employeeId    IN  HRMS_EMPLOYEE_CONTACTS.EMPLOYEE_ID%TYPE,
        contactType   IN  HRMS_EMPLOYEE_CONTACTS.CONTACT_TYPE%TYPE,
        contactValue  IN  HRMS_EMPLOYEE_CONTACTS.CONTACT_VALUE%TYPE,
        isPrimary     IN  HRMS_EMPLOYEE_CONTACTS.IS_PRIMARY%TYPE,
        userName      IN  HRMS_EMPLOYEE_CONTACTS.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE createEmployeeDocument(
        employeeId      IN  HRMS_EMPLOYEE_DOCUMENTS.EMPLOYEE_ID%TYPE,
        documentType    IN  HRMS_EMPLOYEE_DOCUMENTS.DOCUMENT_TYPE%TYPE,
        documentNumber  IN  HRMS_EMPLOYEE_DOCUMENTS.DOCUMENT_NUMBER%TYPE,
        fileName        IN  HRMS_EMPLOYEE_DOCUMENTS.FILE_NAME%TYPE,
        mimeType        IN  HRMS_EMPLOYEE_DOCUMENTS.MIME_TYPE%TYPE,
        issueDate       IN  HRMS_EMPLOYEE_DOCUMENTS.ISSUE_DATE%TYPE,
        expiryDate      IN  HRMS_EMPLOYEE_DOCUMENTS.EXPIRY_DATE%TYPE,
        userName        IN  HRMS_EMPLOYEE_DOCUMENTS.CREATED_BY%TYPE,
        errorCode       OUT NUMBER,
        errorMessage    OUT VARCHAR2,
        response        OUT VARCHAR2
    );

    PROCEDURE createEmployeeDependent(
        employeeId    IN  HRMS_EMPLOYEE_DEPENDENTS.EMPLOYEE_ID%TYPE,
        fullName      IN  HRMS_EMPLOYEE_DEPENDENTS.FULL_NAME%TYPE,
        relationship  IN  HRMS_EMPLOYEE_DEPENDENTS.RELATIONSHIP%TYPE,
        dateOfBirth   IN  HRMS_EMPLOYEE_DEPENDENTS.DATE_OF_BIRTH%TYPE,
        cnic          IN  HRMS_EMPLOYEE_DEPENDENTS.CNIC%TYPE,
        userName      IN  HRMS_EMPLOYEE_DEPENDENTS.CREATED_BY%TYPE,
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
END HRMS_PKG;
/

SHOW ERRORS PACKAGE HRMS_PKG
