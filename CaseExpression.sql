SELECT customer_id ,
CASE
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_Id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END
FROM customer ORDER BY 1;