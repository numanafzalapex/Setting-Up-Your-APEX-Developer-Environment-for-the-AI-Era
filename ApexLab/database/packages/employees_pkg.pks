CREATE OR REPLACE PACKAGE employees_pkg AS
    /*
        API package for the EMPLOYEES table.

        The package centralizes CRUD operations for APEX pages, scripts, and
        future integrations so callers do not duplicate table access logic.
    */

    SUBTYPE t_employee_id IS employees.employee_id%TYPE;

    PROCEDURE create_employee (
        p_first_name   IN  employees.first_name%TYPE,
        p_last_name    IN  employees.last_name%TYPE,
        p_email        IN  employees.email%TYPE,
        p_employee_id  OUT employees.employee_id%TYPE
    );

    PROCEDURE update_employee (
        p_employee_id  IN employees.employee_id%TYPE,
        p_first_name   IN employees.first_name%TYPE,
        p_last_name    IN employees.last_name%TYPE,
        p_email        IN employees.email%TYPE
    );

    PROCEDURE delete_employee (
        p_employee_id IN employees.employee_id%TYPE
    );

    FUNCTION get_employee (
        p_employee_id IN employees.employee_id%TYPE
    ) RETURN SYS_REFCURSOR;

    FUNCTION list_employees
        RETURN SYS_REFCURSOR;

    FUNCTION email_exists (
        p_email                IN employees.email%TYPE,
        p_exclude_employee_id  IN employees.employee_id%TYPE DEFAULT NULL
    ) RETURN BOOLEAN;
END employees_pkg;
/

SHOW ERRORS PACKAGE employees_pkg
