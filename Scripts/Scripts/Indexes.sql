-- New script in Safa - Project DB.
-- Date: Oct 14, 2023
-- Time: 4:02:11 PM
-- Author: mpal

ALTER SESSION SET CURRENT_SCHEMA = PURPLE;

SELECT count(*) FROM customer;
SELECT count(*) FROM employee;
SELECT count(*) FROM students;
SELECT count(*) FROM batches;

----------------------------------------------------------
-- Use Case: Find all the businesses along the services they offer,  with their corresponding prices
EXPLAIN PLAN FOR
select b.BUSINESS_ID , b.name,
		s.service_id, s.name AS SERVICE_NAME, 
		sl.service_level_id, sl.name AS SERVICE_LEVEL_NAME,
		bs.name AS BUSINESS_SERVICE_NAME, bs.price AS RATE
from services s 
	JOIN service_levels sl ON s.service_id = sl.service_id
	JOIN business_services bs ON bs.service_level_id = sl.service_level_id
	JOIN business b ON bs.business_id = b.business_id
WHERE s.name = 'Fitness' AND bs.price = 100
order by b.business_id, s.service_id, sl.service_level_id;

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);

-- What kind OF Queries will be fired USING such query AS the base
-- 1. information for a particular business/service/ rate < 100

CREATE INDEX IX_BS_PRICE ON business_services(price) ;
DROP INDEX IX_BS_PRICE ON business_services(price) ;



----------------------------------------------------------

EXPLAIN PLAN FOR
SELECT pni.* 
FROM PERSONS pni
	JOIN MOVIE_JOBS mj ON pni.PERSON_GUID = mj.PERSON_GUID 
WHERE birth_year IS NOT NULL AND birth_year between 1980 AND 1985
	AND mj.JOB_CODE = 'DRTR'
ORDER by birth_year;

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);


EXPLAIN PLAN FOR
SELECT pni.* 
FROM PERSONS_NO_IX pni
	JOIN MOVIE_JOBS mj ON pni.PERSON_GUID = mj.PERSON_GUID 
WHERE birth_year IS NOT NULL AND birth_year between 1980 AND 1985
	AND mj.JOB_CODE = 'DRTR'
ORDER by birth_year;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);