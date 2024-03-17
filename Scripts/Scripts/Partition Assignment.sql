-- New script in Safa - Project DB.
-- Date: Oct 29, 2023
-- Time: 5:21:18 PM
-- Author: mpal


SELECT min(date_of_birth) FROM students;

--DROP TABLE students_part;
CREATE TABLE students_part
(
    student_id INTEGER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    date_of_birth DATE,
    customer_id INTEGER NOT NULL,
    batch_id INTEGER NOT NULL,
    membership_type_id INTEGER,  -- Added a membership type reference
    start_date DATE,  -- Added a start date COLUMN
    CONSTRAINT fk_1students_customer_id FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    CONSTRAINT fk_1students_batch_id FOREIGN KEY (batch_id) REFERENCES batches(batch_id),
    CONSTRAINT fk_1students_mem_type_id FOREIGN KEY (membership_type_id) REFERENCES membership_type(membership_type_id)
)
PARTITION BY RANGE (date_of_birth)
(
    PARTITION students_lt_2005 VALUES LESS THAN (TO_DATE('2005-01-01', 'YYYY-MM-DD')),
    PARTITION students_2005 VALUES LESS THAN (TO_DATE('2006-01-01', 'YYYY-MM-DD')),
    PARTITION students_2006 VALUES LESS THAN (TO_DATE('2007-01-01', 'YYYY-MM-DD')),
    PARTITION students_2007 VALUES LESS THAN (TO_DATE('2008-01-01', 'YYYY-MM-DD')),
    PARTITION students_2008 VALUES LESS THAN (TO_DATE('2009-01-01', 'YYYY-MM-DD')),
    PARTITION students_2019 VALUES LESS THAN (TO_DATE('2010-01-01', 'YYYY-MM-DD')),
    PARTITION students_2010 VALUES LESS THAN (TO_DATE('2011-01-01', 'YYYY-MM-DD')),
    PARTITION students_2011 VALUES LESS THAN (TO_DATE('2012-01-01', 'YYYY-MM-DD')),
    PARTITION students_2012 VALUES LESS THAN (TO_DATE('2013-01-01', 'YYYY-MM-DD')),
    PARTITION students_2013 VALUES LESS THAN (TO_DATE('2014-01-01', 'YYYY-MM-DD')),
    PARTITION students_2014 VALUES LESS THAN (TO_DATE('2015-01-01', 'YYYY-MM-DD')),
    PARTITION students_2015 VALUES LESS THAN (TO_DATE('2016-01-01', 'YYYY-MM-DD')),
    PARTITION students_max_value VALUES LESS THAN (MAXVALUE)
);

SELECT * FROM USER_TAB_PARTITIONS;

INSERT INTO students_part
SELECT * FROM students;

SELECT * FROM PURPLE.STUDENTS_PART ;
SELECT * FROM PURPLE.STUDENTS ;


SELECT * FR
----------------------------------------------------------------
-- birth year wise services availed by students

SELECT EXTRACT(YEAR FROM sysdate), count(services) 
FROM services;

select EXTRACT(YEAR FROM sysdate), to_char(sysdate, 'YYYY')
FROM dual;

SELECT TO_DATE(sysdate, 'YYYY-MM-DD') FROM dual


EXPLAIN PLAN FOR
SELECT * FROM STUDENTS_PART sp  
WHERE date_of_birth < '01-01-2006';
SELECT * FROM  TABLE(DBMS_XPLAN.DISPLAY);

-------------------------------

EXPLAIN PLAN FOR
WITH student AS (
	SELECT 
		s.*,
		EXTRACT(YEAR FROM s.date_of_birth) AS student_birth_year
	FROM PURPLE.STUDENTS_PART s
	WHERE DATE_OF_BIRTH < TO_DATE('01-01-2009','DD-MM-YYYY') 
),

birthyearwise_student_services AS (
	SELECT 
		s.name AS service_name, 
		student_birth_year, 
		count(*) AS total_students
	FROM services s
		JOIN service_levels sl ON sl.service_id = s.service_id
		JOIN business_services bs ON bs.service_level_id = sl.service_level_id 
		JOIN batches b ON b.business_services_id = bs.business_services_id 
		JOIN student st ON st.batch_id = b.batch_id
	GROUP BY s.name, student_birth_year 
	ORDER BY service_name, student_birth_year, total_students DESC
)

SELECT * 
FROM birthyearwise_student_services ;

SELECT * FROM  TABLE(DBMS_XPLAN.DISPLAY);


