-- write your queries here

SELECT * FROM owners
FULL JOIN vehicles
ON owners.id = vehicles.owner_id;


SELECT first_name, last_name, COUNT(*)                                                 
FROM owners
JOIN vehicles                                                          
ON owners.id = vehicles.owner_id                           
GROUP BY owners.id           
ORDER BY first_name;





SELECT first_name, last_name, ROUND(AVG(price)), COUNT(*)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
HAVING COUNT(*)>1 AND ROUND(AVG(price))>10000
ORDER by first_name DESC;