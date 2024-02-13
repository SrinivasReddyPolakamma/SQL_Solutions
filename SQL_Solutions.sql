--  Problem 1 - Last absent date for each employee
SELECT
	employee_id, MAX(record_date) AS record_date
FROM attendance
WHERE present = 0
GROUP BY employee_id


-- Problem 2 - List all cities with state
\SELECT 
	c.id as location_id, 
	c.name as location_name, 
	s.id as parent_location_id, 
	s.name as parent_location_name
FROM locations c
LEFT JOIN locations s
ON c.parent_location_id = s.id

-- Problem 3 - Total number of days present and absent.
SELECT
	employee_id,
	SUM(CASE WHEN present = 1 THEN 1 ELSE 0 END) AS number_of_days_present,
	SUM(CASE WHEN present = 0 THEN 1 ELSE 0 END) AS number_of_days_absent
FROM attendance2
GROUP BY employee_id
