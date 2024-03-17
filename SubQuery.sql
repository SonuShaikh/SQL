SELECT film_id,title
FROM film
WHERE film_Id IN
(SELECT inventory.film_id 
FROM inventory
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN 	'2005-05-29' AND '2005-05-30')