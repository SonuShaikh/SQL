-- SELECT * FROM payment
-- SELECT customer_id, COUNT(*) FROM payment GROUP BY customer_id;
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY 2 DESC;
-- SELECT customer_id, staff_id, SUM(amount) FROM payment GROUP BY staff_id,customer_id ORDER BY 1;
-- SELECT DATE(payment_date), SUM(amount) FROM payment GROUP BY DATE(payment_date) ORDER BY 2 DESC;
-- SELECT staff_id, COUNT(*) FROM payment GROUP BY staff_id;
-- SELECT rating, ROUND(AVG(replacement_cost),2) FROM film GROUP BY rating;
-- SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY 2 DESC LIMIT 5;
-- SELECT store_id, COUNT(*) FROM customer GROUP BY store_id HAVING COUNT(*) >= 300
-- SELECT customer_id, COUNT(*) FROM payment GROUP BY customer_id HAVING COUNT(*) >=40;
-- SELECT customer_id, SUM(amount) FROM payment WHERE staff_id = 2 GROUP BY customer_id HAVING sum(amount) > 100
-- SELECT customer_id, SUM(amount) FROM payment WHERE staff_id = 2 GROUP BY customer_id HAVING sum(amount) > 110;
-- SELECT COUNT(*) FROM film WHERE title LIKE 'J%';
-- SELECT first_name ||' '|| last_name FROM customer WHERE first_name LIKE 'E%' AND address_id < 500 ORDER BY customer_id DESC LIMIT 1;