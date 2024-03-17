CREATE OR REPLACE PROCEDURE manage_batches(
    p_action VARCHAR2, -- 'ADD', 'MODIFY', or 'DELETE'
    p_batch_id IN INTEGER,
    p_batch_name IN VARCHAR2,
    p_total_students IN INTEGER,
    p_start_date IN DATE,
    p_end_date IN DATE,
    p_business_services_id IN INTEGER,
    p_instructor_id IN INTEGER
)
IS
BEGIN
    IF p_action = 'ADD' THEN
        -- Add a new batch
        INSERT INTO batches (batch_id, batch_name, total_students, start_date, end_date, business_services_id, instructor_id)
        VALUES (seq_batches_id.NEXTVAL, p_batch_name, p_total_students, p_start_date, p_end_date, p_business_services_id, p_instructor_id);

    ELSIF p_action = 'MODIFY' THEN
        -- Modify an existing batch
        UPDATE batches
        SET batch_name = p_batch_name, total_students = p_total_students, start_date = p_start_date, end_date = p_end_date, business_services_id = p_business_services_id, instructor_id = p_instructor_id
        WHERE batch_id = p_batch_id;

    ELSIF p_action = 'DELETE' THEN
        -- Delete the batch
        DELETE FROM batches
        WHERE batch_id = p_batch_id;
    END IF;
    COMMIT;
END manage_batches;


----------------------------------------------------------

SELECT * FROM batches;

-- Add a new batch
CALL manage_batches('ADD', NULL, 'Batch A', 20, TO_DATE('2023-11-04', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 1, 2);

-- Modify an existing batch
CALL manage_batches('MODIFY', 161, 'Modified Batch A', 25, TO_DATE('2023-11-05', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 1, 3);

-- Delete an existing batch
CALL manage_batches('DELETE', 161, NULL, NULL, NULL, NULL, NULL, NULL);
