ALTER SESSION SET CURRENT_SCHEMA = PURPLE;

/*
 -- Wipe off the tables
DROP TABLE customer CASCADE CONSTRAINTS;
DROP TABLE students CASCADE CONSTRAINTS;
DROP TABLE batches CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE service_levels CASCADE CONSTRAINTS;
DROP TABLE business_services CASCADE CONSTRAINTS;
DROP TABLE business CASCADE CONSTRAINTS;
DROP TABLE services CASCADE CONSTRAINTS;
DROP TABLE service_category CASCADE CONSTRAINTS;
DROP TABLE MEMBERSHIP_TYPE  CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE_TYPE  CASCADE CONSTRAINTS;

-- Drop Sequence for Service Category
DROP SEQUENCE seq_service_category_id;

-- Drop Sequence for Services
DROP SEQUENCE seq_services_id;

-- Drop Sequence for Business
DROP SEQUENCE seq_business_id;

-- Drop Sequence for Service Levels
DROP SEQUENCE seq_service_levels_id;

-- Drop Sequence for Services Offered
DROP SEQUENCE seq_business_services_id;

-- Drop Sequence for Employee Type
DROP SEQUENCE seq_employee_type_id;

-- Drop Sequence for Employee
DROP SEQUENCE seq_employee_id;

-- Drop Sequence for Batches
DROP SEQUENCE seq_batches_id;

-- Drop Sequence for Customer
DROP SEQUENCE seq_customer_id;

-- Drop Sequence for Membership Type
DROP SEQUENCE seq_membership_type_id;

-- Drop Sequence for Students
DROP SEQUENCE seq_students_id;

 */

-- Service Category
-- DROP TABLE service_category CASCADE CONSTRAINTS;
CREATE TABLE service_category
(
    category_id INTEGER PRIMARY KEY,
    name VARCHAR2(50) UNIQUE NOT NULL,
    description VARCHAR2(1000)
);

-- Services
--DROP TABLE services CASCADE CONSTRAINTS;
CREATE TABLE services
(
    service_id INTEGER PRIMARY KEY,
    name VARCHAR2(50) UNIQUE NOT NULL,
    description VARCHAR2(1000),
    category_id INTEGER NOT NULL,
    CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES service_category(category_id)
);

-- Business
--DROP TABLE business CASCADE CONSTRAINTS;
CREATE TABLE business
(
    business_id INTEGER PRIMARY KEY,
    name VARCHAR2(50) UNIQUE NOT NULL,
    description VARCHAR2(2000),
    street_address VARCHAR2(500),
    county VARCHAR2(50),
    city VARCHAR2(50),
    state VARCHAR2(50),
    contact VARCHAR2(50) NOT NULL,
    email_id VARCHAR2(50) NOT NULL,
    is_active CHAR(1) DEFAULT 'Y',  -- Added an is_active column
    CONSTRAINT chk_business_email_id CHECK (REGEXP_LIKE(email_id, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'))
);

-- Service Levels
--DROP TABLE service_levels CASCADE CONSTRAINTS;
CREATE TABLE service_levels
(
    service_level_id INTEGER PRIMARY KEY,
    name VARCHAR2(50),
    description VARCHAR2(1000),
    service_id INTEGER,  -- Added a service_id reference
    CONSTRAINT fk_service_id FOREIGN KEY (service_id) REFERENCES services(service_id)
);

-- Services Offered
-- DROP TABLE business_services CASCADE CONSTRAINTS;
CREATE TABLE business_services
(
    business_services_id INTEGER PRIMARY KEY,
    name VARCHAR2(100),
    description VARCHAR2(1000),
    business_id INTEGER,
    service_level_id INTEGER,
    price DECIMAL(10, 2),  -- Added a price column
    CONSTRAINT fk_so_business_id FOREIGN KEY (business_id) REFERENCES business(business_id),
    CONSTRAINT fk_services_service_level_id FOREIGN KEY (service_level_id) REFERENCES service_levels(service_level_id)
);

-- Employee Type
-- DROP TABLE employee_type CASCADE CONSTRAINTS;
CREATE TABLE employee_type
(
    employee_type_id INTEGER PRIMARY KEY,
    employee_type VARCHAR2(50),
    description VARCHAR2(1000),
    is_fulltime CHAR(1) DEFAULT 'N',  -- Added a default value
    is_active CHAR(1) DEFAULT 'Y'  -- Added an is_active column
);

-- Employee
-- DROP TABLE employee CASCADE CONSTRAINTS;
CREATE TABLE employee
(
    employee_id INTEGER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    employee_type_id INTEGER,
    contact VARCHAR2(15),
    years_experience INTEGER,
    business_id INTEGER,
    is_active CHAR(1) DEFAULT 'Y',  -- Added an is_active COLUMN
    date_of_hire DATE,
    email_id VARCHAR2(50) NOT NULL,
    CONSTRAINT chk_employee_email_id CHECK (REGEXP_LIKE(email_id, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$')),
    CONSTRAINT fk_employee_business_id FOREIGN KEY (business_id) REFERENCES business(business_id),
    CONSTRAINT fk_employee_type_id FOREIGN KEY (employee_type_id) REFERENCES employee_type(employee_type_id)
);

-- Batches
-- DROP TABLE batches CASCADE CONSTRAINTS;
CREATE TABLE batches
(
    batch_id INTEGER PRIMARY KEY,
    batch_name VARCHAR2(200),
    total_students INTEGER,
    start_date DATE,
    end_date DATE,
    business_services_id INTEGER,
    instructor_id INTEGER,
    CONSTRAINT fk_batches_bus_services_id FOREIGN KEY (business_services_id) REFERENCES business_services(business_services_id),
    CONSTRAINT fk_batches_instructor_id FOREIGN KEY (instructor_id) REFERENCES employee(employee_id)
);

-- Customer
-- DROP TABLE customer CASCADE CONSTRAINTS;
CREATE TABLE customer
(
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    street_address VARCHAR2(500),
    county VARCHAR2(50),
    city VARCHAR2(50),
    state VARCHAR2(50),
    contact VARCHAR2(50) NOT NULL,
    email_id VARCHAR2(50) NOT NULL,
    source VARCHAR2(50),
    registration_date DATE DEFAULT SYSDATE,  -- Added a date_registered COLUMN
    CONSTRAINT chk_customer_email_id CHECK (REGEXP_LIKE(email_id, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'))
);

-- Membership Type
-- DROP TABLE membership_type CASCADE CONSTRAINTS;
CREATE TABLE membership_type
(
    membership_type_id INTEGER PRIMARY KEY,
    membership_name VARCHAR2(50),
    description VARCHAR2(1000),
    discount_per INT DEFAULT 0  -- Renamed and added a default value
);

-- Students
-- DROP TABLE students CASCADE CONSTRAINTS;
CREATE TABLE students
(
    student_id INTEGER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    date_of_birth DATE,
    customer_id INTEGER NOT NULL,
    batch_id INTEGER NOT NULL,
    membership_type_id INTEGER,  -- Added a membership type reference
    start_date DATE,  -- Added a start date column
    CONSTRAINT fk_students_customer_id FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    CONSTRAINT fk_students_batch_id FOREIGN KEY (batch_id) REFERENCES batches(batch_id),
    CONSTRAINT fk_students_membership_type_id FOREIGN KEY (membership_type_id) REFERENCES membership_type(membership_type_id)
);


--------------------------------------------------------------------------------------
-- SEQUENCE CREATION
-- Service Category
CREATE SEQUENCE seq_service_category_id START WITH 1 INCREMENT BY 1;
ALTER TABLE service_category MODIFY category_id DEFAULT seq_service_category_id.NEXTVAL;

-- Services
CREATE SEQUENCE seq_services_id START WITH 1 INCREMENT BY 1;
ALTER TABLE services MODIFY service_id DEFAULT seq_services_id.NEXTVAL;

-- Business
CREATE SEQUENCE seq_business_id START WITH 1 INCREMENT BY 1;
ALTER TABLE business MODIFY business_id DEFAULT seq_business_id.NEXTVAL;

-- Service Levels
CREATE SEQUENCE seq_service_levels_id START WITH 1 INCREMENT BY 1;
ALTER TABLE service_levels MODIFY service_level_id DEFAULT seq_service_levels_id.NEXTVAL;

-- Services Offered
CREATE SEQUENCE seq_business_services_id START WITH 1 INCREMENT BY 1;
ALTER TABLE business_services MODIFY business_services_id DEFAULT seq_business_services_id.NEXTVAL;

-- Employee Type
CREATE SEQUENCE seq_employee_type_id START WITH 1 INCREMENT BY 1;
ALTER TABLE employee_type MODIFY employee_type_id DEFAULT seq_employee_type_id.NEXTVAL;

-- Employee
CREATE SEQUENCE seq_employee_id START WITH 1 INCREMENT BY 1;
ALTER TABLE employee MODIFY employee_id DEFAULT seq_employee_id.NEXTVAL;

-- Batches
CREATE SEQUENCE seq_batches_id START WITH 1 INCREMENT BY 1;
ALTER TABLE batches MODIFY batch_id DEFAULT seq_batches_id.NEXTVAL;

-- Customer
CREATE SEQUENCE seq_customer_id START WITH 1 INCREMENT BY 1;
ALTER TABLE customer MODIFY customer_id DEFAULT seq_customer_id.NEXTVAL;

-- Membership Type
--DROP SEQUENCE seq_membership_type_id
CREATE SEQUENCE seq_membership_type_id START WITH 1 INCREMENT BY 1;
ALTER TABLE membership_type MODIFY membership_type_id DEFAULT seq_membership_type_id.NEXTVAL;

-- Students
CREATE SEQUENCE seq_students_id START WITH 1 INCREMENT BY 1;
ALTER TABLE students MODIFY student_id DEFAULT seq_students_id.NEXTVAL;

