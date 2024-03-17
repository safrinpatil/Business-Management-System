-- Create a Table Type Collection to return a collection of students for a customer
CREATE OR REPLACE TYPE student_id_list AS TABLE OF INTEGER;

-- A function to return collection of students enrolled under a customer
CREATE OR REPLACE FUNCTION get_students(p_customer_id IN INTEGER)
RETURN student_id_list
IS
   student_ids student_id_list := student_id_list(); -- Initialize the collection
BEGIN
   -- Populate the collection with student IDs
   FOR student_rec IN (SELECT student_id FROM students WHERE customer_id = p_customer_id) 
   LOOP
      student_ids.extend;
      student_ids(student_ids.count) := student_rec.student_id;
   END LOOP;

   RETURN student_ids;
END get_students;

--------------------------------------------------------------------

SELECT * FROM STUDENTS  WHERE CUSTOMER_ID =1;

-- Since the return type is  table - the function should be used as a TABLE
SELECT s.column_value student_ids 
FROM TABLE(get_students(1)) s;