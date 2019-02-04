/*
 * Assignment 1
 * Dominick Arnaldo
 */
 
/* #1 */
SELECT * FROM sakila.actor WHERE first_name="PENELOPE";

/* #2*/
SELECT * FROM sakila.actor
JOIN sakila.film f
	ON f.title = "ZOOLANDER FICTION"
JOIN sakila.film_actor a
	ON a.film_id = f.film_id;

/* #3 */
SELECT f.title 
FROM sakila.film f
JOIN sakila.film_actor a
	ON f.film_id = a.film_id
JOIN sakila.actor actor
	ON actor.first_name = "JENNIFER" AND actor.last_name = "DAVIS" AND actor.actor_id = a.actor_id;
    
/* #4 */
SELECT f.title 
FROM sakila.film f
JOIN sakila.inventory i
	ON f.film_id = i.film_id
JOIN sakila.rental r
	ON r.inventory_id = i.inventory_id AND r.customer_id = 11 AND r.return_date IS NULL;
    
/* #5 */
SELECT f.title
FROM sakila.film f
JOIN sakila.film_category fc
	ON f.film_id = fc.film_id 
JOIN category c
	ON c.category_id = fc.category_id AND c.name = "Animation";
    
/* #6 */

SELECT p.amount
FROM sakila.payment p
JOIN sakila.rental r
	ON r.rental_id = p.rental_id AND r.customer_id = 95
JOIN sakila.inventory i
	ON i.inventory_id = r.inventory_id
JOIN sakila.film f
	ON f.film_id = i.film_id AND f.title = "CLOSER BANG";
    
/* #7 */
SELECT st.first_name, st.last_name
FROM sakila.staff st
JOIN sakila.rental r
	ON st.staff_id = r.staff_id
JOIN sakila.inventory i
	ON i.inventory_id = r.inventory_id
JOIN sakila.film f
	ON f.film_id = i.film_id AND f.title = "CHAINSAW UPTOWN"
JOIN sakila.customer c
	ON c.customer_id = r.customer_id AND c.first_name = "MARIE" AND c.last_name = "TURNER";
