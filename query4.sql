--Which states have more than 10 unique customers?
SELECT State FROM 
(
    SELECT State, count(DISTINCT CustomerId) AS TotalCustomers FROM customers WHERE State IS NOT NULL GROUP BY State
) WHERE TotalCustomers > 10;