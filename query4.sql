--Which states have more than 10 unique customers?
SELECT State, count(DISTINCT CustomerId) AS total_number_of_customers FROM customers WHERE State IS NOT NULL GROUP BY State 
HAVING total_number_of_customers > 10;