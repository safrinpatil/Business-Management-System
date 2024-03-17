CREATE OR REPLACE PROCEDURE manage_employees(
    p_action VARCHAR2, -- 'ADD', 'MODIFY', or 'DELETE'
    p_employee_id IN INTEGER,
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_employee_type_id IN INTEGER,
    p_contact IN VARCHAR2,
    p_years_experience IN INTEGER,
    p_business_id IN INTEGER,
    p_is_active IN CHAR,
    p_date_of_hire IN DATE,
    p_email_id IN VARCHAR2
)
IS
BEGIN
    IF p_action = 'ADD' THEN
        -- Add a new employee
        INSERT INTO employee (employee_id, first_name, last_name, employee_type_id, contact, years_experience, business_id, is_active, date_of_hire, email_id)
        VALUES (seq_employee_id.NEXTVAL, p_first_name, p_last_name, p_employee_type_id, p_contact, p_years_experience, p_business_id, p_is_active, p_date_of_hire, p_email_id);

    ELSIF p_action = 'MODIFY' THEN
        -- Modify an existing employee
        UPDATE employee
        SET first_name = p_first_name, last_name = p_last_name, employee_type_id = p_employee_type_id, contact = p_contact, years_experience = p_years_experience, business_id = p_business_id, is_active = p_is_active, date_of_hire = p_date_of_hire, email_id = p_email_id
        WHERE employee_id = p_employee_id;

    ELSIF p_action = 'DELETE' THEN
        -- Delete the employee
        DELETE FROM employee
        WHERE employee_id = p_employee_id;
    END IF;
    COMMIT;
END manage_employees;

----------------------------------

SELECT * FROM EMPLOYEE;

-- Add a new employee
CALL manage_employees('ADD', NULL, 'John', 'Doe', 1, '123-456-7890', 5, 1, 'Y', TO_DATE('2023-11-04', 'YYYY-MM-DD'), 'john.doe@example.com');

-- Modify an existing employee
CALL manage_employees('MODIFY', 141, 'Jane', 'Smith', 2, '987-654-3210', 7, 1, 'N', TO_DATE('2023-11-05', 'YYYY-MM-DD'), 'jane.smith@example.com');

-- Delete an existing employee
CALL manage_employees('DELETE', 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
