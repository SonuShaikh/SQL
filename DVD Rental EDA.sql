SELECT DISTINCT(fa.actor_id), first_name, COUNT(f.film_id) AS total_files 
FROM film_actor fa  
JOIN film f ON fa.film_id = f.film_id
JOIN actor a ON fa.actor_id = a.actor_id
GROUP BY fa.actor_id, a.first_name
ORDER BY actor_id;