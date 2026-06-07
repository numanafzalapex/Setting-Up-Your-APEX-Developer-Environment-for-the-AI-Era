CREATE OR REPLACE PACKAGE ADMIN.HRMS_PKG AS
    /*
        Central HRMS backend API.

        This is the single application package for HRMS business procedures.
        All procedures follow the repository API response convention:
        errorCode = 200 for success, 400 for validation or processing errors.
    */

    PROCEDURE createLocation(
        locationCode  IN  ADMIN.HRMS_LOCATIONS.LOCATION_CODE%TYPE,
        locationName  IN  ADMIN.HRMS_LOCATIONS.LOCATION_NAME%TYPE,
        city          IN  ADMIN.HRMS_LOCATIONS.CITY%TYPE,
        country       IN  ADMIN.HRMS_LOCATIONS.COUNTRY%TYPE,
        userName      IN  ADMIN.HRMS_LOCATIONS.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE createDepartment(
        departmentCode      IN  ADMIN.HRMS_DEPARTMENTS.DEPARTMENT_CODE%TYPE,
        departmentName      IN  ADMIN.HRMS_DEPARTMENTS.DEPARTMENT_NAME%TYPE,
        parentDepartmentId  IN  ADMIN.HRMS_DEPARTMENTS.PARENT_DEPARTMENT_ID%TYPE,
        locationId          IN  ADMIN.HRMS_DEPARTMENTS.LOCATION_ID%TYPE,
        costCenter          IN  ADMIN.HRMS_DEPARTMENTS.COST_CENTER%TYPE,
        userName            IN  ADMIN.HRMS_DEPARTMENTS.CREATED_BY%TYPE,
        errorCode           OUT NUMBER,
        errorMessage        OUT VARCHAR2,
        response            OUT VARCHAR2
    );

    PROCEDURE updateDepartment(
        departmentId        IN  ADMIN.HRMS_DEPARTMENTS.DEPARTMENT_ID%TYPE,
        departmentCode      IN  ADMIN.HRMS_DEPARTMENTS.DEPARTMENT_CODE%TYPE,
        departmentName      IN  ADMIN.HRMS_DEPARTMENTS.DEPARTMENT_NAME%TYPE,
        parentDepartmentId  IN  ADMIN.HRMS_DEPARTMENTS.PARENT_DEPARTMENT_ID%TYPE,
        locationId          IN  ADMIN.HRMS_DEPARTMENTS.LOCATION_ID%TYPE,
        costCenter          IN  ADMIN.HRMS_DEPARTMENTS.COST_CENTER%TYPE,
        userName            IN  ADMIN.HRMS_DEPARTMENTS.UPDATED_BY%TYPE,
        errorCode           OUT NUMBER,
        errorMessage        OUT VARCHAR2,
        response            OUT VARCHAR2
    );

    PROCEDURE deleteDepartment(
        departmentId  IN  ADMIN.HRMS_DEPARTMENTS.DEPARTMENT_ID%TYPE,
        userName      IN  ADMIN.HRMS_DEPARTMENTS.UPDATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE createDesignation(
        designationCode  IN  ADMIN.HRMS_DESIGNATIONS.DESIGNATION_CODE%TYPE,
        designationName  IN  ADMIN.HRMS_DESIGNATIONS.DESIGNATION_NAME%TYPE,
        userName         IN  ADMIN.HRMS_DESIGNATIONS.CREATED_BY%TYPE,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    );

    PROCEDURE updateDesignation(
        designationId    IN  ADMIN.HRMS_DESIGNATIONS.DESIGNATION_ID%TYPE,
        designationCode  IN  ADMIN.HRMS_DESIGNATIONS.DESIGNATION_CODE%TYPE,
        designationName  IN  ADMIN.HRMS_DESIGNATIONS.DESIGNATION_NAME%TYPE,
        userName         IN  ADMIN.HRMS_DESIGNATIONS.UPDATED_BY%TYPE,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    );

    PROCEDURE deleteDesignation(
        designationId  IN  ADMIN.HRMS_DESIGNATIONS.DESIGNATION_ID%TYPE,
        userName       IN  ADMIN.HRMS_DESIGNATIONS.UPDATED_BY%TYPE,
        errorCode      OUT NUMBER,
        errorMessage   OUT VARCHAR2,
        response       OUT VARCHAR2
    );

    PROCEDURE createGrade(
        gradeCode     IN  ADMIN.HRMS_GRADES.GRADE_CODE%TYPE,
        gradeName     IN  ADMIN.HRMS_GRADES.GRADE_NAME%TYPE,
        minSalary     IN  ADMIN.HRMS_GRADES.MIN_SALARY%TYPE,
        maxSalary     IN  ADMIN.HRMS_GRADES.MAX_SALARY%TYPE,
        userName      IN  ADMIN.HRMS_GRADES.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE updateGrade(
        gradeId       IN  ADMIN.HRMS_GRADES.GRADE_ID%TYPE,
        gradeCode     IN  ADMIN.HRMS_GRADES.GRADE_CODE%TYPE,
        gradeName     IN  ADMIN.HRMS_GRADES.GRADE_NAME%TYPE,
        minSalary     IN  ADMIN.HRMS_GRADES.MIN_SALARY%TYPE,
        maxSalary     IN  ADMIN.HRMS_GRADES.MAX_SALARY%TYPE,
        userName      IN  ADMIN.HRMS_GRADES.UPDATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE deleteGrade(
        gradeId       IN  ADMIN.HRMS_GRADES.GRADE_ID%TYPE,
        userName      IN  ADMIN.HRMS_GRADES.UPDATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE createEmploymentType(
        employmentTypeCode  IN  ADMIN.HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_CODE%TYPE,
        employmentTypeName  IN  ADMIN.HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_NAME%TYPE,
        userName            IN  ADMIN.HRMS_EMPLOYMENT_TYPES.CREATED_BY%TYPE,
        errorCode           OUT NUMBER,
        errorMessage        OUT VARCHAR2,
        response            OUT VARCHAR2
    );

    PROCEDURE updateEmploymentType(
        employmentTypeId    IN  ADMIN.HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_ID%TYPE,
        employmentTypeCode  IN  ADMIN.HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_CODE%TYPE,
        employmentTypeName  IN  ADMIN.HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_NAME%TYPE,
        userName            IN  ADMIN.HRMS_EMPLOYMENT_TYPES.UPDATED_BY%TYPE,
        errorCode           OUT NUMBER,
        errorMessage        OUT VARCHAR2,
        response            OUT VARCHAR2
    );

    PROCEDURE deleteEmploymentType(
        employmentTypeId  IN  ADMIN.HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_ID%TYPE,
        userName          IN  ADMIN.HRMS_EMPLOYMENT_TYPES.UPDATED_BY%TYPE,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    );

    PROCEDURE createEmployee(
        employeeCode      IN  ADMIN.HRMS_EMPLOYEES.EMPLOYEE_CODE%TYPE,
        firstName         IN  ADMIN.HRMS_EMPLOYEES.FIRST_NAME%TYPE,
        lastName          IN  ADMIN.HRMS_EMPLOYEES.LAST_NAME%TYPE,
        cnic              IN  ADMIN.HRMS_EMPLOYEES.CNIC%TYPE,
        email             IN  ADMIN.HRMS_EMPLOYEES.EMAIL%TYPE,
        mobile            IN  ADMIN.HRMS_EMPLOYEES.MOBILE%TYPE,
        departmentId      IN  ADMIN.HRMS_EMPLOYEES.DEPARTMENT_ID%TYPE,
        designationId     IN  ADMIN.HRMS_EMPLOYEES.DESIGNATION_ID%TYPE,
        gradeId           IN  ADMIN.HRMS_EMPLOYEES.GRADE_ID%TYPE,
        employmentTypeId  IN  ADMIN.HRMS_EMPLOYEES.EMPLOYMENT_TYPE_ID%TYPE,
        dateOfJoining     IN  ADMIN.HRMS_EMPLOYEES.DATE_OF_JOINING%TYPE,
        status            IN  ADMIN.HRMS_EMPLOYEES.STATUS%TYPE,
        userName          IN  ADMIN.HRMS_EMPLOYEES.CREATED_BY%TYPE,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    );

    PROCEDURE updateEmployee(
        employeeId        IN  ADMIN.HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        employeeCode      IN  ADMIN.HRMS_EMPLOYEES.EMPLOYEE_CODE%TYPE,
        firstName         IN  ADMIN.HRMS_EMPLOYEES.FIRST_NAME%TYPE,
        lastName          IN  ADMIN.HRMS_EMPLOYEES.LAST_NAME%TYPE,
        cnic              IN  ADMIN.HRMS_EMPLOYEES.CNIC%TYPE,
        email             IN  ADMIN.HRMS_EMPLOYEES.EMAIL%TYPE,
        mobile            IN  ADMIN.HRMS_EMPLOYEES.MOBILE%TYPE,
        departmentId      IN  ADMIN.HRMS_EMPLOYEES.DEPARTMENT_ID%TYPE,
        designationId     IN  ADMIN.HRMS_EMPLOYEES.DESIGNATION_ID%TYPE,
        gradeId           IN  ADMIN.HRMS_EMPLOYEES.GRADE_ID%TYPE,
        employmentTypeId  IN  ADMIN.HRMS_EMPLOYEES.EMPLOYMENT_TYPE_ID%TYPE,
        dateOfJoining     IN  ADMIN.HRMS_EMPLOYEES.DATE_OF_JOINING%TYPE,
        status            IN  ADMIN.HRMS_EMPLOYEES.STATUS%TYPE,
        userName          IN  ADMIN.HRMS_EMPLOYEES.UPDATED_BY%TYPE,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    );

    PROCEDURE deleteEmployee(
        employeeId    IN  ADMIN.HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        userName      IN  ADMIN.HRMS_EMPLOYEES.UPDATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE createEmployeeContact(
        employeeId    IN  ADMIN.HRMS_EMPLOYEE_CONTACTS.EMPLOYEE_ID%TYPE,
        contactType   IN  ADMIN.HRMS_EMPLOYEE_CONTACTS.CONTACT_TYPE%TYPE,
        contactValue  IN  ADMIN.HRMS_EMPLOYEE_CONTACTS.CONTACT_VALUE%TYPE,
        isPrimary     IN  ADMIN.HRMS_EMPLOYEE_CONTACTS.IS_PRIMARY%TYPE,
        userName      IN  ADMIN.HRMS_EMPLOYEE_CONTACTS.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE createEmployeeDocument(
        employeeId      IN  ADMIN.HRMS_EMPLOYEE_DOCUMENTS.EMPLOYEE_ID%TYPE,
        documentType    IN  ADMIN.HRMS_EMPLOYEE_DOCUMENTS.DOCUMENT_TYPE%TYPE,
        documentNumber  IN  ADMIN.HRMS_EMPLOYEE_DOCUMENTS.DOCUMENT_NUMBER%TYPE,
        fileName        IN  ADMIN.HRMS_EMPLOYEE_DOCUMENTS.FILE_NAME%TYPE,
        mimeType        IN  ADMIN.HRMS_EMPLOYEE_DOCUMENTS.MIME_TYPE%TYPE,
        issueDate       IN  ADMIN.HRMS_EMPLOYEE_DOCUMENTS.ISSUE_DATE%TYPE,
        expiryDate      IN  ADMIN.HRMS_EMPLOYEE_DOCUMENTS.EXPIRY_DATE%TYPE,
        userName        IN  ADMIN.HRMS_EMPLOYEE_DOCUMENTS.CREATED_BY%TYPE,
        errorCode       OUT NUMBER,
        errorMessage    OUT VARCHAR2,
        response        OUT VARCHAR2
    );

    PROCEDURE createEmployeeDependent(
        employeeId    IN  ADMIN.HRMS_EMPLOYEE_DEPENDENTS.EMPLOYEE_ID%TYPE,
        fullName      IN  ADMIN.HRMS_EMPLOYEE_DEPENDENTS.FULL_NAME%TYPE,
        relationship  IN  ADMIN.HRMS_EMPLOYEE_DEPENDENTS.RELATIONSHIP%TYPE,
        dateOfBirth   IN  ADMIN.HRMS_EMPLOYEE_DEPENDENTS.DATE_OF_BIRTH%TYPE,
        cnic          IN  ADMIN.HRMS_EMPLOYEE_DEPENDENTS.CNIC%TYPE,
        userName      IN  ADMIN.HRMS_EMPLOYEE_DEPENDENTS.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );

    PROCEDURE getEmployeeFullName(
        employeeId    IN  ADMIN.HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    );
END HRMS_PKG;
/

SHOW ERRORS PACKAGE ADMIN.HRMS_PKG
