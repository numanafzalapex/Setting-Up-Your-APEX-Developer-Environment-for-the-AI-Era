CREATE TABLE employees (
    employee_id NUMBER GENERATED ALWAYS AS IDENTITY,
    first_name  VARCHAR2(100),
    last_name   VARCHAR2(100),
    email       VARCHAR2(200),
    created_on  DATE DEFAULT SYSDATE,
    CONSTRAINT pk_employees PRIMARY KEY(employee_id)
);