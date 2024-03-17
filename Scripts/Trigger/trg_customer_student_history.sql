SELECT * FROM CUSTOMER c ;
SELECT * FROM STUDENTS s ;
select * from customer_student_history ;

---------------------------------------------------------------------

CREATE TABLE customer_student_history (
    audit_id NUMBER GENERATED ALWAYS AS IDENTITY,
    action_date TIMESTAMP,
    action_type VARCHAR2(10), -- 'DELETE'
    customer_id NUMBER,
    customer_first_name VARCHAR2(50),
    customer_last_name VARCHAR2(50),
    customer_street_address VARCHAR2(500),
    customer_county VARCHAR2(50),
    customer_city VARCHAR2(50),
    customer_state VARCHAR2(50),
    customer_contact VARCHAR2(50),
    customer_email_id VARCHAR2(50),
    customer_source VARCHAR2(50),
    customer_registration_date TIMESTAMP,
    student_id NUMBER,
    student_first_name VARCHAR2(50),
    student_last_name VARCHAR2(50),
    student_date_of_birth DATE,
    student_batch_id NUMBER,
    student_membership_type_id NUMBER,
    student_start_date TIMESTAMP
);

-------------------------------------------------------------------

-- Trigger for the students table
CREATE OR REPLACE TRIGGER trg_customer_student_history
AFTER UPDATE OR DELETE ON students
FOR EACH ROW
DECLARE
	v_customer customer%ROWTYPE;
	v_customer_id NUMBER;
	v_action_type varchar2(20);
BEGIN
	
	v_customer_id := :OLD.customer_id;
	
	IF UPDATING THEN
		v_action_type := 'UPDATE';
	ELSE
		v_action_type := 'DELETE';
	END IF;
	
	SELECT 
		c.customer_id ,
	    c.first_name AS customer_first_name,
	    c.last_name AS customer_last_name,
	    c.street_address AS customer_street_address,
	    c.county AS customer_county,
	    c.city AS customer_city,
	    c.state AS customer_state,
	    c.contact AS customer_contact,
	    c.email_id AS customer_email_id,
	    c.SOURCE AS customer_source,
	    c.registration_date AS customer_registration_date
    INTO v_customer
    FROM customer c
	WHERE c.customer_id = v_customer_id;
	
    INSERT INTO customer_student_history (
        action_date,
        action_type,
        customer_id,
        customer_first_name,
        customer_last_name,
        customer_street_address,
        customer_county,
        customer_city,
        customer_state,
        customer_contact,
        customer_email_id,
        customer_source,
        customer_registration_date,
        student_id,
        student_first_name,
        student_last_name,
        student_date_of_birth,
        student_batch_id,
        student_membership_type_id,
        student_start_date
    )
    VALUES (
        SYSTIMESTAMP,
        v_action_type,
        v_customer.customer_id,
        v_customer.first_name,
        v_customer.last_name,
        v_customer.street_address,
        v_customer.county,
        v_customer.city,
        v_customer.state,
        v_customer.contact,
        v_customer.email_id,
        v_customer.source,
        v_customer.registration_date,
        :OLD.student_id,
        :OLD.first_name,
        :OLD.last_name,
        :OLD.date_of_birth,
        :OLD.batch_id,
        :OLD.membership_type_id,
        :OLD.start_date
    );
END;