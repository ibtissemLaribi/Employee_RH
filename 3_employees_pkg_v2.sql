CREATE OR REPLACE PACKAGE employees_pkg IS
    TYPE depts_tab_type IS
        TABLE OF departments%rowtype INDEX BY PLS_INTEGER;
    FUNCTION get_jobs_number (
        p_employee_id employees.employee_id%TYPE
    ) RETURN INTEGER;

    PROCEDURE get_departments_by_sal (
        p_sal      employees.salary%TYPE,
        tabledepts OUT depts_tab_type
    );

END employees_pkg;