CREATE OR REPLACE PACKAGE BODY HRMS_PKG AS
    c_success_code CONSTANT NUMBER(3) := 200;
    c_error_code   CONSTANT NUMBER(3) := 400;
    c_success      CONSTANT VARCHAR2(20) := 'success';
    c_fail         CONSTANT VARCHAR2(20) := 'fail';

    PROCEDURE setError(
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2,
        message       IN  VARCHAR2
    ) AS
    BEGIN
        errorCode := c_error_code;
        errorMessage := message;
        response := c_fail;
    END setError;

    FUNCTION existsLocation(locationId IN NUMBER) RETURN BOOLEAN AS
        l_count PLS_INTEGER;
    BEGIN
        SELECT COUNT(*) INTO l_count FROM HRMS_LOCATIONS WHERE LOCATION_ID = locationId AND IS_ACTIVE = 'Y';
        RETURN l_count > 0;
    END existsLocation;

    FUNCTION existsDepartment(departmentId IN NUMBER) RETURN BOOLEAN AS
        l_count PLS_INTEGER;
    BEGIN
        SELECT COUNT(*) INTO l_count FROM HRMS_DEPARTMENTS WHERE DEPARTMENT_ID = departmentId AND IS_ACTIVE = 'Y';
        RETURN l_count > 0;
    END existsDepartment;

    FUNCTION existsDesignation(designationId IN NUMBER) RETURN BOOLEAN AS
        l_count PLS_INTEGER;
    BEGIN
        SELECT COUNT(*) INTO l_count FROM HRMS_DESIGNATIONS WHERE DESIGNATION_ID = designationId AND IS_ACTIVE = 'Y';
        RETURN l_count > 0;
    END existsDesignation;

    FUNCTION existsGrade(gradeId IN NUMBER) RETURN BOOLEAN AS
        l_count PLS_INTEGER;
    BEGIN
        SELECT COUNT(*) INTO l_count FROM HRMS_GRADES WHERE GRADE_ID = gradeId AND IS_ACTIVE = 'Y';
        RETURN l_count > 0;
    END existsGrade;

    FUNCTION existsEmploymentType(employmentTypeId IN NUMBER) RETURN BOOLEAN AS
        l_count PLS_INTEGER;
    BEGIN
        SELECT COUNT(*) INTO l_count FROM HRMS_EMPLOYMENT_TYPES WHERE EMPLOYMENT_TYPE_ID = employmentTypeId AND IS_ACTIVE = 'Y';
        RETURN l_count > 0;
    END existsEmploymentType;

    FUNCTION existsEmployee(employeeId IN NUMBER) RETURN BOOLEAN AS
        l_count PLS_INTEGER;
    BEGIN
        SELECT COUNT(*) INTO l_count FROM HRMS_EMPLOYEES WHERE EMPLOYEE_ID = employeeId;
        RETURN l_count > 0;
    END existsEmployee;

    PROCEDURE createLocation(
        locationCode  IN  HRMS_LOCATIONS.LOCATION_CODE%TYPE,
        locationName  IN  HRMS_LOCATIONS.LOCATION_NAME%TYPE,
        city          IN  HRMS_LOCATIONS.CITY%TYPE,
        country       IN  HRMS_LOCATIONS.COUNTRY%TYPE,
        userName      IN  HRMS_LOCATIONS.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    ) AS
        l_id HRMS_LOCATIONS.LOCATION_ID%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF locationCode IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: locationCode not found in createLocation API.');
        ELSIF locationName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: locationName not found in createLocation API.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in createLocation API.');
        END IF;

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_LOCATIONS (LOCATION_CODE, LOCATION_NAME, CITY, COUNTRY, CREATED_BY, CREATED_ON, UPDATED_BY, UPDATED_ON)
            VALUES (UPPER(TRIM(locationCode)), TRIM(locationName), TRIM(city), TRIM(country), userName, SYSDATE, userName, SYSDATE)
            RETURNING LOCATION_ID INTO l_id;
            COMMIT;
            response := TO_CHAR(l_id);
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: locationCode already exists.');
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from createLocation API. ' || SUBSTR(SQLERRM, 1, 450));
    END createLocation;

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
    ) AS
        l_id HRMS_DEPARTMENTS.DEPARTMENT_ID%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF departmentCode IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: departmentCode not found in createDepartment API.');
        ELSIF departmentName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: departmentName not found in createDepartment API.');
        ELSIF parentDepartmentId IS NOT NULL AND NOT existsDepartment(parentDepartmentId) THEN
            setError(errorCode, errorMessage, response, 'Error: parentDepartmentId does not exist.');
        ELSIF locationId IS NOT NULL AND NOT existsLocation(locationId) THEN
            setError(errorCode, errorMessage, response, 'Error: locationId does not exist.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in createDepartment API.');
        END IF;

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_DEPARTMENTS (DEPARTMENT_CODE, DEPARTMENT_NAME, PARENT_DEPARTMENT_ID, LOCATION_ID, COST_CENTER, CREATED_BY, CREATED_ON, UPDATED_BY, UPDATED_ON)
            VALUES (UPPER(TRIM(departmentCode)), TRIM(departmentName), parentDepartmentId, locationId, UPPER(TRIM(costCenter)), userName, SYSDATE, userName, SYSDATE)
            RETURNING DEPARTMENT_ID INTO l_id;
            COMMIT;
            response := TO_CHAR(l_id);
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: departmentCode already exists.');
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from createDepartment API. ' || SUBSTR(SQLERRM, 1, 450));
    END createDepartment;

    PROCEDURE createDesignation(
        designationCode  IN  HRMS_DESIGNATIONS.DESIGNATION_CODE%TYPE,
        designationName  IN  HRMS_DESIGNATIONS.DESIGNATION_NAME%TYPE,
        userName         IN  HRMS_DESIGNATIONS.CREATED_BY%TYPE,
        errorCode        OUT NUMBER,
        errorMessage     OUT VARCHAR2,
        response         OUT VARCHAR2
    ) AS
        l_id HRMS_DESIGNATIONS.DESIGNATION_ID%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF designationCode IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: designationCode not found in createDesignation API.');
        ELSIF designationName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: designationName not found in createDesignation API.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in createDesignation API.');
        END IF;

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_DESIGNATIONS (DESIGNATION_CODE, DESIGNATION_NAME, CREATED_BY, CREATED_ON, UPDATED_BY, UPDATED_ON)
            VALUES (UPPER(TRIM(designationCode)), TRIM(designationName), userName, SYSDATE, userName, SYSDATE)
            RETURNING DESIGNATION_ID INTO l_id;
            COMMIT;
            response := TO_CHAR(l_id);
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: designationCode already exists.');
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from createDesignation API. ' || SUBSTR(SQLERRM, 1, 450));
    END createDesignation;

    PROCEDURE createGrade(
        gradeCode     IN  HRMS_GRADES.GRADE_CODE%TYPE,
        gradeName     IN  HRMS_GRADES.GRADE_NAME%TYPE,
        minSalary     IN  HRMS_GRADES.MIN_SALARY%TYPE,
        maxSalary     IN  HRMS_GRADES.MAX_SALARY%TYPE,
        userName      IN  HRMS_GRADES.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    ) AS
        l_id HRMS_GRADES.GRADE_ID%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF gradeCode IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: gradeCode not found in createGrade API.');
        ELSIF gradeName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: gradeName not found in createGrade API.');
        ELSIF maxSalary IS NOT NULL AND minSalary IS NOT NULL AND maxSalary < minSalary THEN
            setError(errorCode, errorMessage, response, 'Error: maxSalary cannot be less than minSalary.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in createGrade API.');
        END IF;

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_GRADES (GRADE_CODE, GRADE_NAME, MIN_SALARY, MAX_SALARY, CREATED_BY, CREATED_ON, UPDATED_BY, UPDATED_ON)
            VALUES (UPPER(TRIM(gradeCode)), TRIM(gradeName), minSalary, maxSalary, userName, SYSDATE, userName, SYSDATE)
            RETURNING GRADE_ID INTO l_id;
            COMMIT;
            response := TO_CHAR(l_id);
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: gradeCode already exists.');
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from createGrade API. ' || SUBSTR(SQLERRM, 1, 450));
    END createGrade;

    PROCEDURE createEmploymentType(
        employmentTypeCode  IN  HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_CODE%TYPE,
        employmentTypeName  IN  HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_NAME%TYPE,
        userName            IN  HRMS_EMPLOYMENT_TYPES.CREATED_BY%TYPE,
        errorCode           OUT NUMBER,
        errorMessage        OUT VARCHAR2,
        response            OUT VARCHAR2
    ) AS
        l_id HRMS_EMPLOYMENT_TYPES.EMPLOYMENT_TYPE_ID%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF employmentTypeCode IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: employmentTypeCode not found in createEmploymentType API.');
        ELSIF employmentTypeName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: employmentTypeName not found in createEmploymentType API.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in createEmploymentType API.');
        END IF;

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_EMPLOYMENT_TYPES (EMPLOYMENT_TYPE_CODE, EMPLOYMENT_TYPE_NAME, CREATED_BY, CREATED_ON, UPDATED_BY, UPDATED_ON)
            VALUES (UPPER(TRIM(employmentTypeCode)), TRIM(employmentTypeName), userName, SYSDATE, userName, SYSDATE)
            RETURNING EMPLOYMENT_TYPE_ID INTO l_id;
            COMMIT;
            response := TO_CHAR(l_id);
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: employmentTypeCode already exists.');
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from createEmploymentType API. ' || SUBSTR(SQLERRM, 1, 450));
    END createEmploymentType;

    PROCEDURE validateEmployee(
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
        userName          IN  VARCHAR2,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    ) AS
        l_status HRMS_EMPLOYEES.STATUS%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;
        l_status := UPPER(TRIM(status));

        IF employeeCode IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: employeeCode not found in Employee API.');
        ELSIF firstName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: firstName not found in Employee API.');
        ELSIF lastName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: lastName not found in Employee API.');
        ELSIF cnic IS NULL OR LENGTH(TRIM(cnic)) < 13 THEN
            setError(errorCode, errorMessage, response, 'Error: valid cnic not found in Employee API.');
        ELSIF email IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: email not found in Employee API.');
        ELSIF mobile IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: mobile not found in Employee API.');
        ELSIF NOT existsDepartment(departmentId) THEN
            setError(errorCode, errorMessage, response, 'Error: departmentId does not exist or is inactive.');
        ELSIF NOT existsDesignation(designationId) THEN
            setError(errorCode, errorMessage, response, 'Error: designationId does not exist or is inactive.');
        ELSIF NOT existsGrade(gradeId) THEN
            setError(errorCode, errorMessage, response, 'Error: gradeId does not exist or is inactive.');
        ELSIF NOT existsEmploymentType(employmentTypeId) THEN
            setError(errorCode, errorMessage, response, 'Error: employmentTypeId does not exist or is inactive.');
        ELSIF dateOfJoining IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: dateOfJoining not found in Employee API.');
        ELSIF l_status NOT IN ('ACTIVE', 'INACTIVE', 'TERMINATED', 'SUSPENDED') THEN
            setError(errorCode, errorMessage, response, 'Error: status must be ACTIVE, INACTIVE, TERMINATED, or SUSPENDED.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in Employee API.');
        END IF;
    END validateEmployee;

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
    ) AS
        l_id HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE;
    BEGIN
        validateEmployee(employeeCode, firstName, lastName, cnic, email, mobile, departmentId, designationId, gradeId, employmentTypeId, dateOfJoining, status, userName, errorCode, errorMessage, response);

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_EMPLOYEES (
                EMPLOYEE_CODE, FIRST_NAME, LAST_NAME, CNIC, EMAIL, MOBILE, DEPARTMENT_ID,
                DESIGNATION_ID, GRADE_ID, EMPLOYMENT_TYPE_ID, DATE_OF_JOINING, STATUS,
                CREATED_BY, CREATED_ON, UPDATED_BY, UPDATED_ON
            ) VALUES (
                UPPER(TRIM(employeeCode)), TRIM(firstName), TRIM(lastName), TRIM(cnic), LOWER(TRIM(email)), TRIM(mobile), departmentId,
                designationId, gradeId, employmentTypeId, dateOfJoining, UPPER(TRIM(status)),
                userName, SYSDATE, userName, SYSDATE
            )
            RETURNING EMPLOYEE_ID INTO l_id;
            COMMIT;
            response := TO_CHAR(l_id);
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: employeeCode, cnic, or email already exists.');
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from createEmployee API. ' || SUBSTR(SQLERRM, 1, 450));
    END createEmployee;

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
    ) AS
    BEGIN
        IF NOT existsEmployee(employeeId) THEN
            setError(errorCode, errorMessage, response, 'Error: employeeId does not exist in updateEmployee API.');
        ELSE
            validateEmployee(employeeCode, firstName, lastName, cnic, email, mobile, departmentId, designationId, gradeId, employmentTypeId, dateOfJoining, status, userName, errorCode, errorMessage, response);
        END IF;

        IF errorCode = c_success_code THEN
            UPDATE HRMS_EMPLOYEES e
               SET e.EMPLOYEE_CODE = UPPER(TRIM(employeeCode)),
                   e.FIRST_NAME = TRIM(firstName),
                   e.LAST_NAME = TRIM(lastName),
                   e.CNIC = TRIM(cnic),
                   e.EMAIL = LOWER(TRIM(email)),
                   e.MOBILE = TRIM(mobile),
                   e.DEPARTMENT_ID = departmentId,
                   e.DESIGNATION_ID = designationId,
                   e.GRADE_ID = gradeId,
                   e.EMPLOYMENT_TYPE_ID = employmentTypeId,
                   e.DATE_OF_JOINING = dateOfJoining,
                   e.STATUS = UPPER(TRIM(status)),
                   e.UPDATED_BY = userName,
                   e.UPDATED_ON = SYSDATE
             WHERE e.EMPLOYEE_ID = employeeId;
            COMMIT;
            response := NULL;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: employeeCode, cnic, or email already exists.');
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from updateEmployee API. ' || SUBSTR(SQLERRM, 1, 450));
    END updateEmployee;

    PROCEDURE deleteEmployee(
        employeeId    IN  HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        userName      IN  HRMS_EMPLOYEES.UPDATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    ) AS
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF employeeId IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: employeeId not found in deleteEmployee API.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in deleteEmployee API.');
        END IF;

        IF errorCode = c_success_code THEN
            DELETE FROM HRMS_EMPLOYEES WHERE EMPLOYEE_ID = employeeId;
            IF SQL%ROWCOUNT = 0 THEN
                ROLLBACK;
                setError(errorCode, errorMessage, response, 'Error: employeeId does not exist in deleteEmployee API.');
            ELSE
                COMMIT;
            END IF;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from deleteEmployee API. ' || SUBSTR(SQLERRM, 1, 450));
    END deleteEmployee;

    PROCEDURE createEmployeeContact(
        employeeId    IN  HRMS_EMPLOYEE_CONTACTS.EMPLOYEE_ID%TYPE,
        contactType   IN  HRMS_EMPLOYEE_CONTACTS.CONTACT_TYPE%TYPE,
        contactValue  IN  HRMS_EMPLOYEE_CONTACTS.CONTACT_VALUE%TYPE,
        isPrimary     IN  HRMS_EMPLOYEE_CONTACTS.IS_PRIMARY%TYPE,
        userName      IN  HRMS_EMPLOYEE_CONTACTS.CREATED_BY%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    ) AS
        l_id HRMS_EMPLOYEE_CONTACTS.CONTACT_ID%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF NOT existsEmployee(employeeId) THEN
            setError(errorCode, errorMessage, response, 'Error: employeeId does not exist in createEmployeeContact API.');
        ELSIF contactType IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: contactType not found in createEmployeeContact API.');
        ELSIF contactValue IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: contactValue not found in createEmployeeContact API.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in createEmployeeContact API.');
        END IF;

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_EMPLOYEE_CONTACTS (EMPLOYEE_ID, CONTACT_TYPE, CONTACT_VALUE, IS_PRIMARY, CREATED_BY, CREATED_ON, UPDATED_BY, UPDATED_ON)
            VALUES (employeeId, UPPER(TRIM(contactType)), TRIM(contactValue), UPPER(COALESCE(TRIM(isPrimary), 'N')), userName, SYSDATE, userName, SYSDATE)
            RETURNING CONTACT_ID INTO l_id;
            COMMIT;
            response := TO_CHAR(l_id);
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from createEmployeeContact API. ' || SUBSTR(SQLERRM, 1, 450));
    END createEmployeeContact;

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
    ) AS
        l_id HRMS_EMPLOYEE_DOCUMENTS.DOCUMENT_ID%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF NOT existsEmployee(employeeId) THEN
            setError(errorCode, errorMessage, response, 'Error: employeeId does not exist in createEmployeeDocument API.');
        ELSIF documentType IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: documentType not found in createEmployeeDocument API.');
        ELSIF expiryDate IS NOT NULL AND issueDate IS NOT NULL AND expiryDate < issueDate THEN
            setError(errorCode, errorMessage, response, 'Error: expiryDate cannot be before issueDate.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in createEmployeeDocument API.');
        END IF;

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_EMPLOYEE_DOCUMENTS (EMPLOYEE_ID, DOCUMENT_TYPE, DOCUMENT_NUMBER, FILE_NAME, MIME_TYPE, ISSUE_DATE, EXPIRY_DATE, CREATED_BY, CREATED_ON, UPDATED_BY, UPDATED_ON)
            VALUES (employeeId, UPPER(TRIM(documentType)), UPPER(TRIM(documentNumber)), TRIM(fileName), TRIM(mimeType), issueDate, expiryDate, userName, SYSDATE, userName, SYSDATE)
            RETURNING DOCUMENT_ID INTO l_id;
            COMMIT;
            response := TO_CHAR(l_id);
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from createEmployeeDocument API. ' || SUBSTR(SQLERRM, 1, 450));
    END createEmployeeDocument;

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
    ) AS
        l_id HRMS_EMPLOYEE_DEPENDENTS.DEPENDENT_ID%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF NOT existsEmployee(employeeId) THEN
            setError(errorCode, errorMessage, response, 'Error: employeeId does not exist in createEmployeeDependent API.');
        ELSIF fullName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: fullName not found in createEmployeeDependent API.');
        ELSIF relationship IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: relationship not found in createEmployeeDependent API.');
        ELSIF userName IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: userName not found in createEmployeeDependent API.');
        END IF;

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_EMPLOYEE_DEPENDENTS (EMPLOYEE_ID, FULL_NAME, RELATIONSHIP, DATE_OF_BIRTH, CNIC, CREATED_BY, CREATED_ON, UPDATED_BY, UPDATED_ON)
            VALUES (employeeId, TRIM(fullName), UPPER(TRIM(relationship)), dateOfBirth, TRIM(cnic), userName, SYSDATE, userName, SYSDATE)
            RETURNING DEPENDENT_ID INTO l_id;
            COMMIT;
            response := TO_CHAR(l_id);
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from createEmployeeDependent API. ' || SUBSTR(SQLERRM, 1, 450));
    END createEmployeeDependent;

    PROCEDURE getEmployeeFullName(
        employeeId    IN  HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        errorCode     OUT NUMBER,
        errorMessage  OUT VARCHAR2,
        response      OUT VARCHAR2
    ) AS
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        IF employeeId IS NULL THEN
            setError(errorCode, errorMessage, response, 'Error: employeeId not found in getEmployeeFullName API.');
        ELSE
            SELECT TRIM(e.FIRST_NAME || ' ' || e.LAST_NAME)
              INTO response
              FROM HRMS_EMPLOYEES e
             WHERE e.EMPLOYEE_ID = employeeId;
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            setError(errorCode, errorMessage, response, 'Error: employeeId does not exist in getEmployeeFullName API.');
        WHEN OTHERS THEN
            setError(errorCode, errorMessage, response, 'Error: an unhandaled exception from getEmployeeFullName API. ' || SUBSTR(SQLERRM, 1, 450));
    END getEmployeeFullName;
END HRMS_PKG;
/

SHOW ERRORS PACKAGE BODY HRMS_PKG
