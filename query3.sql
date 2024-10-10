--What are the total number of unique customers for each state, ordered alphabetically by state?
SELECT State, count(DISTINCT CustomerId) AS TotalCustomers FROM customers WHERE State IS NOT NULL GROUP BY State ORDER BY State;

