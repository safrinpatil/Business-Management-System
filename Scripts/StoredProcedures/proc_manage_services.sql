CREATE OR REPLACE PROCEDURE manage_services(
    p_action VARCHAR2, -- 'ADD', 'MODIFY', or 'DELETE'
    p_service_id IN INTEGER,
    p_service_name IN VARCHAR2,
    p_service_description IN VARCHAR2,
    p_category_id IN INTEGER,
    p_category_name IN VARCHAR2,
    p_category_description IN VARCHAR2,
    p_service_level_id IN INTEGER,
    p_service_level_name IN VARCHAR2,
    p_service_level_description IN VARCHAR2
)
IS
BEGIN
    IF p_action = 'ADD' THEN
        -- Add a new service category
        INSERT INTO service_category (category_id, name, description)
        VALUES (seq_service_category_id.NEXTVAL, p_category_name, p_category_description);

        -- Add a new service
        INSERT INTO services (service_id, name, description, category_id)
        VALUES (seq_services_id.NEXTVAL, p_service_name, p_service_description, seq_service_category_id.CURRVAL);

        -- Add a new service level
        INSERT INTO service_levels (service_level_id, name, description, service_id)
        VALUES (seq_service_levels_id.NEXTVAL, p_service_level_name, p_service_level_description, seq_services_id.CURRVAL);

    ELSIF p_action = 'MODIFY' THEN
        -- Modify an existing service level
        UPDATE service_levels
        SET name = p_service_level_name, description = p_service_level_description
        WHERE service_level_id = p_service_level_id;

        -- Modify an existing service
        UPDATE services
        SET name = p_service_name, description = p_service_description, category_id = p_category_id
        WHERE service_id = p_service_id;

        -- Modify an existing service category
        UPDATE service_category
        SET name = p_category_name, description = p_category_description
        WHERE category_id = p_category_id;

    ELSIF p_action = 'DELETE' THEN
        -- Delete the service level
        DELETE FROM service_levels
        WHERE service_level_id = p_service_level_id;

        -- Delete the service
        DELETE FROM services
        WHERE service_id = p_service_id;

        -- Delete the service category
        DELETE FROM service_category
        WHERE category_id = p_category_id;
    END IF;
    COMMIT;
END manage_services;

----------------------------------------------------

SELECT * FROM service_category;
SELECT * FROM services;
SELECT * FROM service_levels;

-- Add a new service level
CALL manage_services('ADD', NULL, 'New Service', 'Service Description', NULL, 'New Category', 'Category Description', NULL, 'New Level', 'Level Description');

-- Modify an existing service level
CALL manage_services('MODIFY', 41, 'Modified Service', 'Modified Description', 21, 'Modified Category', 'Modified Description', 81, 'Modified Level', 'Modified Description');

-- Delete an existing service level
CALL manage_services('DELETE', 41, NULL, NULL, 21, NULL, NULL, 81, NULL, NULL);
