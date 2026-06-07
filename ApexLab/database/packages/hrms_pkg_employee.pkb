CREATE OR REPLACE PACKAGE BODY HRMS_PKG_EMPLOYEE AS
    c_success_code CONSTANT NUMBER(3) := 200;
    c_error_code   CONSTANT NUMBER(3) := 400;
    c_success      CONSTANT VARCHAR2(20) := 'success';
    c_fail         CONSTANT VARCHAR2(20) := 'fail';

    FUNCTION normalizeEmail(
        email IN HRMS_EMPLOYEES.EMAIL%TYPE
    ) RETURN HRMS_EMPLOYEES.EMAIL%TYPE AS
    BEGIN
        RETURN LOWER(TRIM(email));
    END normalizeEmail;

    FUNCTION normalizeStatus(
        employmentStatus IN HRMS_EMPLOYEES.EMPLOYMENT_STATUS%TYPE
    ) RETURN HRMS_EMPLOYEES.EMPLOYMENT_STATUS%TYPE AS
    BEGIN
        RETURN UPPER(COALESCE(TRIM(employmentStatus), 'ACTIVE'));
    END normalizeStatus;

    FUNCTION employeeExists(
        employeeId IN HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE
    ) RETURN BOOLEAN AS
        l_count PLS_INTEGER;
    BEGIN
        SELECT COUNT(*)
          INTO l_count
          FROM HRMS_EMPLOYEES e
         WHERE e.EMPLOYEE_ID = employeeId;

        RETURN l_count > 0;
    END employeeExists;

    PROCEDURE validateEmployee(
        employeeId        IN  HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        employeeNumber    IN  HRMS_EMPLOYEES.EMPLOYEE_NUMBER%TYPE,
        firstName         IN  HRMS_EMPLOYEES.FIRST_NAME%TYPE,
        lastName          IN  HRMS_EMPLOYEES.LAST_NAME%TYPE,
        email             IN  HRMS_EMPLOYEES.EMAIL%TYPE,
        hireDate          IN  HRMS_EMPLOYEES.HIRE_DATE%TYPE,
        managerEmployeeId IN  HRMS_EMPLOYEES.MANAGER_EMPLOYEE_ID%TYPE,
        employmentStatus  IN  HRMS_EMPLOYEES.EMPLOYMENT_STATUS%TYPE,
        userName          IN  VARCHAR2,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    ) AS
        l_status HRMS_EMPLOYEES.EMPLOYMENT_STATUS%TYPE;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := NULL;

        l_status := normalizeStatus(employmentStatus);

        IF employeeNumber IS NULL THEN
            errorCode := c_error_code;
            errorMessage := 'Error: employeeNumber not found in Employee API.';
            response := c_fail;
        ELSIF firstName IS NULL THEN
            errorCode := c_error_code;
            errorMessage := 'Error: firstName not found in Employee API.';
            response := c_fail;
        ELSIF lastName IS NULL THEN
            errorCode := c_error_code;
            errorMessage := 'Error: lastName not found in Employee API.';
            response := c_fail;
        ELSIF email IS NULL THEN
            errorCode := c_error_code;
            errorMessage := 'Error: email not found in Employee API.';
            response := c_fail;
        ELSIF hireDate IS NULL THEN
            errorCode := c_error_code;
            errorMessage := 'Error: hireDate not found in Employee API.';
            response := c_fail;
        ELSIF l_status NOT IN ('ACTIVE', 'INACTIVE', 'TERMINATED') THEN
            errorCode := c_error_code;
            errorMessage := 'Error: employmentStatus must be ACTIVE, INACTIVE, or TERMINATED.';
            response := c_fail;
        ELSIF userName IS NULL THEN
            errorCode := c_error_code;
            errorMessage := 'Error: userName not found in Employee API.';
            response := c_fail;
        ELSIF managerEmployeeId IS NOT NULL AND managerEmployeeId = employeeId THEN
            errorCode := c_error_code;
            errorMessage := 'Error: managerEmployeeId cannot reference the same employee.';
            response := c_fail;
        ELSIF managerEmployeeId IS NOT NULL AND NOT employeeExists(managerEmployeeId) THEN
            errorCode := c_error_code;
            errorMessage := 'Error: managerEmployeeId does not exist.';
            response := c_fail;
        END IF;
    END validateEmployee;

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
    ) AS
        l_employeeId HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE;
    BEGIN
        validateEmployee(
            employeeId        => NULL,
            employeeNumber    => employeeNumber,
            firstName         => firstName,
            lastName          => lastName,
            email             => email,
            hireDate          => hireDate,
            managerEmployeeId => managerEmployeeId,
            employmentStatus  => employmentStatus,
            userName          => userName,
            errorCode         => errorCode,
            errorMessage      => errorMessage,
            response          => response
        );

        IF errorCode = c_success_code THEN
            INSERT INTO HRMS_EMPLOYEES (
                EMPLOYEE_NUMBER,
                FIRST_NAME,
                MIDDLE_NAME,
                LAST_NAME,
                EMAIL,
                PHONE_NUMBER,
                HIRE_DATE,
                JOB_TITLE,
                DEPARTMENT_NAME,
                MANAGER_EMPLOYEE_ID,
                EMPLOYMENT_STATUS,
                CREATED_BY,
                CREATED_ON,
                UPDATED_BY,
                UPDATED_ON
            ) VALUES (
                UPPER(TRIM(employeeNumber)),
                TRIM(firstName),
                TRIM(middleName),
                TRIM(lastName),
                normalizeEmail(email),
                TRIM(phoneNumber),
                hireDate,
                TRIM(jobTitle),
                TRIM(departmentName),
                managerEmployeeId,
                normalizeStatus(employmentStatus),
                userName,
                SYSDATE,
                userName,
                SYSDATE
            )
            RETURNING EMPLOYEE_ID INTO l_employeeId;

            COMMIT;
            errorMessage := c_success;
            response := TO_CHAR(l_employeeId);
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            ROLLBACK;
            errorCode := c_error_code;
            errorMessage := 'Error: employee number or email already exists.';
            response := c_fail;
        WHEN OTHERS THEN
            ROLLBACK;
            errorCode := c_error_code;
            errorMessage := 'Error: an unhandaled exception from createEmployee API. ' ||
                            SUBSTR(SQLERRM, 1, 450);
            response := c_fail;
    END createEmployee;

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
    ) AS
    BEGIN
        IF employeeId IS NULL THEN
            errorCode := c_error_code;
            errorMessage := 'Error: employeeId not found in updateEmployee API.';
            response := c_fail;
        ELSIF NOT employeeExists(employeeId) THEN
            errorCode := c_error_code;
            errorMessage := 'Error: employeeId does not exist in updateEmployee API.';
            response := c_fail;
        ELSE
            validateEmployee(
                employeeId        => employeeId,
                employeeNumber    => employeeNumber,
                firstName         => firstName,
                lastName          => lastName,
                email             => email,
                hireDate          => hireDate,
                managerEmployeeId => managerEmployeeId,
                employmentStatus  => employmentStatus,
                userName          => userName,
                errorCode         => errorCode,
                errorMessage      => errorMessage,
                response          => response
            );
        END IF;

        IF errorCode = c_success_code THEN
            UPDATE HRMS_EMPLOYEES e
               SET e.EMPLOYEE_NUMBER = UPPER(TRIM(employeeNumber)),
                   e.FIRST_NAME = TRIM(firstName),
                   e.MIDDLE_NAME = TRIM(middleName),
                   e.LAST_NAME = TRIM(lastName),
                   e.EMAIL = normalizeEmail(email),
                   e.PHONE_NUMBER = TRIM(phoneNumber),
                   e.HIRE_DATE = hireDate,
                   e.JOB_TITLE = TRIM(jobTitle),
                   e.DEPARTMENT_NAME = TRIM(departmentName),
                   e.MANAGER_EMPLOYEE_ID = managerEmployeeId,
                   e.EMPLOYMENT_STATUS = normalizeStatus(employmentStatus),
                   e.UPDATED_BY = userName,
                   e.UPDATED_ON = SYSDATE
             WHERE e.EMPLOYEE_ID = employeeId;

            COMMIT;
            errorMessage := c_success;
            response := NULL;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            ROLLBACK;
            errorCode := c_error_code;
            errorMessage := 'Error: employee number or email already exists.';
            response := c_fail;
        WHEN OTHERS THEN
            ROLLBACK;
            errorCode := c_error_code;
            errorMessage := 'Error: an unhandaled exception from updateEmployee API. ' ||
                            SUBSTR(SQLERRM, 1, 450);
            response := c_fail;
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
            errorCode := c_error_code;
            errorMessage := 'Error: employeeId not found in deleteEmployee API.';
            response := c_fail;
        ELSIF userName IS NULL THEN
            errorCode := c_error_code;
            errorMessage := 'Error: userName not found in deleteEmployee API.';
            response := c_fail;
        END IF;

        IF errorCode = c_success_code THEN
            DELETE FROM HRMS_EMPLOYEES e
             WHERE e.EMPLOYEE_ID = employeeId;

            IF SQL%ROWCOUNT = 0 THEN
                ROLLBACK;
                errorCode := c_error_code;
                errorMessage := 'Error: employeeId does not exist in deleteEmployee API.';
                response := c_fail;
            ELSE
                COMMIT;
                errorMessage := c_success;
                response := NULL;
            END IF;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            errorCode := c_error_code;
            errorMessage := 'Error: an unhandaled exception from deleteEmployee API. ' ||
                            SUBSTR(SQLERRM, 1, 450);
            response := c_fail;
    END deleteEmployee;

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
            errorCode := c_error_code;
            errorMessage := 'Error: employeeId not found in getEmployeeFullName API.';
            response := c_fail;
        ELSE
            SELECT TRIM(e.FIRST_NAME || ' ' || e.LAST_NAME)
              INTO response
              FROM HRMS_EMPLOYEES e
             WHERE e.EMPLOYEE_ID = employeeId;
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            errorCode := c_error_code;
            errorMessage := 'Error: employeeId does not exist in getEmployeeFullName API.';
            response := c_fail;
        WHEN OTHERS THEN
            errorCode := c_error_code;
            errorMessage := 'Error: an unhandaled exception from getEmployeeFullName API. ' ||
                            SUBSTR(SQLERRM, 1, 450);
            response := c_fail;
    END getEmployeeFullName;

    PROCEDURE employeeEmailExists(
        email             IN  HRMS_EMPLOYEES.EMAIL%TYPE,
        employeeIdToSkip  IN  HRMS_EMPLOYEES.EMPLOYEE_ID%TYPE,
        errorCode         OUT NUMBER,
        errorMessage      OUT VARCHAR2,
        response          OUT VARCHAR2
    ) AS
        l_count PLS_INTEGER;
    BEGIN
        errorCode := c_success_code;
        errorMessage := c_success;
        response := 'N';

        IF email IS NULL THEN
            errorCode := c_error_code;
            errorMessage := 'Error: email not found in employeeEmailExists API.';
            response := c_fail;
        END IF;

        IF errorCode = c_success_code THEN
            SELECT COUNT(*)
              INTO l_count
              FROM HRMS_EMPLOYEES e
             WHERE e.EMAIL = normalizeEmail(email)
               AND (
                       employeeIdToSkip IS NULL
                    OR e.EMPLOYEE_ID <> employeeIdToSkip
               );

            IF l_count > 0 THEN
                response := 'Y';
            END IF;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            errorCode := c_error_code;
            errorMessage := 'Error: an unhandaled exception from employeeEmailExists API. ' ||
                            SUBSTR(SQLERRM, 1, 450);
            response := c_fail;
    END employeeEmailExists;
END HRMS_PKG_EMPLOYEE;
/

SHOW ERRORS PACKAGE BODY HRMS_PKG_EMPLOYEE
