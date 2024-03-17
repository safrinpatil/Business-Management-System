CREATE OR REPLACE PROCEDURE manage_business(
    p_action VARCHAR2, -- 'ADD', 'MODIFY', or 'DELETE'
    p_business_id IN INTEGER,
    p_business_name IN VARCHAR2,
    p_business_description IN VARCHAR2,
    p_street_address IN VARCHAR2,
    p_county IN VARCHAR2,
    p_city IN VARCHAR2,
    p_state IN VARCHAR2,
    p_contact IN VARCHAR2,
    p_email_id IN VARCHAR2,
    p_is_active IN CHAR,
    p_business_services_id IN INTEGER,
    p_service_level_id IN INTEGER,
    p_service_name IN VARCHAR2,
    p_service_description IN VARCHAR2,
    p_price IN DECIMAL

)
IS
    v_business_id INTEGER;
BEGIN
    IF p_action = 'ADD' THEN
    
    	v_business_id := seq_business_id.NEXTVAL;
    
        -- Add a new business
        INSERT INTO business (business_id, name, description, street_address, county, city, state, contact, email_id, is_active)
        VALUES (v_business_id, p_business_name, p_business_description, p_street_address, p_county, p_city, p_state, p_contact, p_email_id, p_is_active);

        -- Add a new business service
        INSERT INTO business_services (business_services_id, name, description, business_id, service_level_id, price)
        VALUES (seq_business_services_id.NEXTVAL, p_service_name, p_service_description, v_business_id, p_service_level_id, p_price);

    ELSIF p_action = 'MODIFY' THEN
        -- Modify an existing business
        UPDATE business
        SET name = p_business_name, description = p_business_description, street_address = p_street_address, county = p_county, city = p_city, state = p_state, contact = p_contact, email_id = p_email_id, is_active = p_is_active
        WHERE business_id = p_business_id;

        -- Modify an existing business service
        UPDATE business_services
        SET name = p_service_name, description = p_service_description, service_level_id = p_service_level_id, price = p_price
        WHERE business_services_id = p_business_services_id;

    ELSIF p_action = 'DELETE' THEN
        -- Delete the business services
        DELETE FROM business_services
        WHERE business_services_id = p_business_services_id;

        -- Delete the business
        DELETE FROM business
        WHERE business_id = p_business_id;
    END IF;
    COMMIT;
END manage_business;

------------------------------------------------------

SELECT * FROM business;
-- DELETE FROM business WHERE BUSINESS_ID = 41

SELECT * FROM business_services;
-- DElETE FROM business_services where business_services_id = 61

-------------

-- Add a new business and business services
CALL manage_business('ADD', NULL, 'New Business', 'Business Description', '123 Main St', 'County', 'City', 'State', 'Contact Person', 'business@example.com', 'Y', NULL, 1, 'Service Name', 'Service Description', 100.00);

-- Modify an existing business and business services
CALL manage_business('MODIFY', 42, 'Modified Business', 'Modified Description', '456 Elm St', 'County', 'City', 'State', 'New Contact', 'modified@example.com', 'N', 62, 1,'Modified Service', 'Modified Description', 150.00);

-- Delete an existing business and business services
CALL manage_business('DELETE', 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
