CREATE OR REPLACE PACKAGE BODY employees_pkg AS
    c_scope CONSTANT VARCHAR2(30) := 'EMPLOYEES_PKG';

    PROCEDURE assert_employee_id (
        p_employee_id IN employees.employee_id%TYPE
    ) IS
    BEGIN
        IF p_employee_id IS NULL THEN
            RAISE_APPLICATION_ERROR(-20001, c_scope || ': employee_id is required.');
        END IF;
    END assert_employee_id;

    FUNCTION normalize_email (
        p_email IN employees.email%TYPE
    ) RETURN employees.email%TYPE IS
    BEGIN
        RETURN LOWER(TRIM(p_email));
    END normalize_email;

    PROCEDURE create_employee (
        p_first_name   IN  employees.first_name%TYPE,
        p_last_name    IN  employees.last_name%TYPE,
        p_email        IN  employees.email%TYPE,
        p_employee_id  OUT employees.employee_id%TYPE
    ) IS
    BEGIN
        INSERT INTO employees (
            first_name,
            last_name,
            email
        ) VALUES (
            TRIM(p_first_name),
            TRIM(p_last_name),
            normalize_email(p_email)
        )
        RETURNING employee_id INTO p_employee_id;
    EXCEPTION
        WHEN VALUE_ERROR THEN
            RAISE_APPLICATION_ERROR(-20002, c_scope || '.create_employee: value exceeds column size.');
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20003, c_scope || '.create_employee failed: ' || SQLERRM);
    END create_employee;

    PROCEDURE update_employee (
        p_employee_id  IN employees.employee_id%TYPE,
        p_first_name   IN employees.first_name%TYPE,
        p_last_name    IN employees.last_name%TYPE,
        p_email        IN employees.email%TYPE
    ) IS
    BEGIN
        assert_employee_id(p_employee_id);

        UPDATE employees
           SET first_name = TRIM(p_first_name),
               last_name  = TRIM(p_last_name),
               email      = normalize_email(p_email)
         WHERE employee_id = p_employee_id;

        IF SQL%ROWCOUNT = 0 THEN
            RAISE_APPLICATION_ERROR(-20004, c_scope || '.update_employee: employee not found.');
        END IF;
    EXCEPTION
        WHEN VALUE_ERROR THEN
            RAISE_APPLICATION_ERROR(-20005, c_scope || '.update_employee: value exceeds column size.');
        WHEN OTHERS THEN
            IF SQLCODE BETWEEN -20999 AND -20000 THEN
                RAISE;
            END IF;

            RAISE_APPLICATION_ERROR(-20006, c_scope || '.update_employee failed: ' || SQLERRM);
    END update_employee;

    PROCEDURE delete_employee (
        p_employee_id IN employees.employee_id%TYPE
    ) IS
    BEGIN
        assert_employee_id(p_employee_id);

        DELETE FROM employees
         WHERE employee_id = p_employee_id;

        IF SQL%ROWCOUNT = 0 THEN
            RAISE_APPLICATION_ERROR(-20007, c_scope || '.delete_employee: employee not found.');
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            IF SQLCODE BETWEEN -20999 AND -20000 THEN
                RAISE;
            END IF;

            RAISE_APPLICATION_ERROR(-20008, c_scope || '.delete_employee failed: ' || SQLERRM);
    END delete_employee;

    FUNCTION get_employee (
        p_employee_id IN employees.employee_id%TYPE
    ) RETURN SYS_REFCURSOR IS
        l_cursor SYS_REFCURSOR;
    BEGIN
        assert_employee_id(p_employee_id);

        OPEN l_cursor FOR
            SELECT employee_id,
                   first_name,
                   last_name,
                   email,
                   created_on
              FROM employees
             WHERE employee_id = p_employee_id;

        RETURN l_cursor;
    EXCEPTION
        WHEN OTHERS THEN
            IF SQLCODE BETWEEN -20999 AND -20000 THEN
                RAISE;
            END IF;

            RAISE_APPLICATION_ERROR(-20009, c_scope || '.get_employee failed: ' || SQLERRM);
    END get_employee;

    FUNCTION list_employees
        RETURN SYS_REFCURSOR IS
        l_cursor SYS_REFCURSOR;
    BEGIN
        OPEN l_cursor FOR
            SELECT employee_id,
                   first_name,
                   last_name,
                   email,
                   created_on
              FROM employees
             ORDER BY last_name,
                      first_name,
                      employee_id;

        RETURN l_cursor;
    EXCEPTION
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20010, c_scope || '.list_employees failed: ' || SQLERRM);
    END list_employees;

    FUNCTION email_exists (
        p_email                IN employees.email%TYPE,
        p_exclude_employee_id  IN employees.employee_id%TYPE DEFAULT NULL
    ) RETURN BOOLEAN IS
        l_count PLS_INTEGER;
    BEGIN
        SELECT COUNT(*)
          INTO l_count
          FROM employees
         WHERE email = normalize_email(p_email)
           AND (
                   p_exclude_employee_id IS NULL
                OR employee_id <> p_exclude_employee_id
           );

        RETURN l_count > 0;
    EXCEPTION
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20011, c_scope || '.email_exists failed: ' || SQLERRM);
    END email_exists;
END employees_pkg;
/

SHOW ERRORS PACKAGE BODY employees_pkg
