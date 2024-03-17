-- Manage Customer
CREATE OR REPLACE PROCEDURE manage_customer(
    p_action VARCHAR2, -- 'ADD', 'MODIFY', or 'DELETE'
    p_customer_id IN INTEGER,
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_street_address IN VARCHAR2,
    p_county IN VARCHAR2,
    p_city IN VARCHAR2,
    p_state IN VARCHAR2,
    p_contact IN VARCHAR2,
    p_email_id IN VARCHAR2
)
IS
BEGIN
    IF p_action = 'ADD' THEN
        -- Add a new customer
        INSERT INTO customer (customer_id, first_name, last_name, street_address, county, city, state, contact, email_id)
        VALUES (seq_customer_id.NEXTVAL, p_first_name, p_last_name, p_street_address, p_county, p_city, p_state, p_contact, p_email_id);

    ELSIF p_action = 'MODIFY' THEN
        -- Modify an existing customer
        UPDATE customer
        SET first_name = p_first_name, last_name = p_last_name, street_address = p_street_address, county = p_county, city = p_city, state = p_state, contact = p_contact, email_id = p_email_id
        WHERE customer_id = p_customer_id;

    ELSIF p_action = 'DELETE' THEN
        -- Delete the customer
        DELETE FROM customer
        WHERE customer_id = p_customer_id;
    END IF;
    COMMIT;
END manage_customer;


-- Manage Student
CREATE OR REPLACE PROCEDURE manage_student(
    p_action VARCHAR2, -- 'ADD', 'MODIFY', or 'DELETE'
    p_student_id IN INTEGER,
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_date_of_birth IN DATE,
    p_customer_id IN INTEGER,
    p_batch_id IN INTEGER,
    p_membership_type_id IN INTEGER,
    p_start_date IN DATE
)
IS
BEGIN
    IF p_action = 'ADD' THEN
        -- Add a new student
        INSERT INTO students (student_id, first_name, last_name, date_of_birth, customer_id, batch_id, membership_type_id, start_date)
        VALUES (seq_students_id.NEXTVAL, p_first_name, p_last_name, p_date_of_birth, p_customer_id, p_batch_id, p_membership_type_id, p_start_date);

    ELSIF p_action = 'MODIFY' THEN
        -- Modify an existing student
        UPDATE students
        SET first_name = p_first_name, last_name = p_last_name, date_of_birth = p_date_of_birth, customer_id = p_customer_id, batch_id = p_batch_id, membership_type_id = p_membership_type_id, start_date = p_start_date
        WHERE student_id = p_student_id;

    ELSIF p_action = 'DELETE' THEN
        -- Delete the student
        DELETE FROM students
        WHERE student_id = p_student_id;
    END IF;
    COMMIT;
END manage_student;



---------------------------------

--Add/Modify Customer
CALL manage_customer('ADD', NULL, 'John', 'Doe', '123 Main St', 'County', 'City', 'State', 'Contact Person', 'john.doe@example.com');
CALL manage_customer('MODIFY', 62, 'Jane', 'Smith', '456 Elm St', 'County', 'City', 'State', 'New Contact', 'jane.smith@example.com');


SELECT * FROM CUSTOMER c ;
SELECT * FROM STUDENTS s  WHERE customer_id=62;
select * from customer_student_history;


-- Add Student
CALL manage_student('ADD', NULL, 'Student1', 'Doe', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 62, 1, 1, TO_DATE('2023-11-04', 'YYYY-MM-DD'));
CALL manage_student('ADD', NULL, 'Student2', 'Doe', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 62, 1, 1, TO_DATE('2023-11-04', 'YYYY-MM-DD'));

--Modify Student
CALL manage_student('MODIFY', 73, 'Modified Student', 'Smith', TO_DATE('2000-01-02', 'YYYY-MM-DD'), 62, 2, 2, TO_DATE('2023-11-05', 'YYYY-MM-DD'));
CALL manage_student('MODIFY', 74, 'Modified Student', 'Smith', TO_DATE('2000-01-02', 'YYYY-MM-DD'), 62, 2, 2, TO_DATE('2023-11-05', 'YYYY-MM-DD'));

-- Delete Student
CALL manage_student('DELETE', 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
CALL manage_student('DELETE', 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--DElete Customer
CALL manage_customer('DELETE', 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);



