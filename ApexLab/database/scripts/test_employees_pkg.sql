SET SERVEROUTPUT ON

PROMPT Compiling EMPLOYEES package specification
@@../packages/employees_pkg.pks

PROMPT Compiling EMPLOYEES package body
@@../packages/employees_pkg.pkb

DECLARE
    l_employee_id  employees.employee_id%TYPE;
    l_exists       BOOLEAN;
    l_count        PLS_INTEGER;

    PROCEDURE assert_true (
        p_condition IN BOOLEAN,
        p_message   IN VARCHAR2
    ) IS
    BEGIN
        IF p_condition IS NULL OR NOT p_condition THEN
            RAISE_APPLICATION_ERROR(-20999, 'Test failed: ' || p_message);
        END IF;
    END assert_true;
BEGIN
    employees_pkg.create_employee(
        p_first_name  => 'Test',
        p_last_name   => 'Employee',
        p_email       => 'TEST.EMPLOYEE@example.com',
        p_employee_id => l_employee_id
    );

    assert_true(l_employee_id IS NOT NULL, 'create_employee returned an employee_id');

    SELECT COUNT(*)
      INTO l_count
      FROM employees
     WHERE employee_id = l_employee_id
       AND email = 'test.employee@example.com';

    assert_true(l_count = 1, 'create_employee inserted the normalized email');

    employees_pkg.update_employee(
        p_employee_id => l_employee_id,
        p_first_name  => 'Updated',
        p_last_name   => 'Employee',
        p_email       => 'updated.employee@example.com'
    );

    SELECT COUNT(*)
      INTO l_count
      FROM employees
     WHERE employee_id = l_employee_id
       AND first_name = 'Updated'
       AND email = 'updated.employee@example.com';

    assert_true(l_count = 1, 'update_employee changed the employee');

    l_exists := employees_pkg.email_exists(
        p_email => 'updated.employee@example.com'
    );

    assert_true(l_exists, 'email_exists found the employee email');

    employees_pkg.delete_employee(
        p_employee_id => l_employee_id
    );

    SELECT COUNT(*)
      INTO l_count
      FROM employees
     WHERE employee_id = l_employee_id;

    assert_true(l_count = 0, 'delete_employee removed the employee');

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('EMPLOYEES_PKG tests passed.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/
