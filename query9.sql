--query lists each customer's full name, their the total cost of purchases, time of first purchase and ranks them based on total cost and the time of their first purchase
SELECT 
    (FirstName || " " || LastName) AS full_name, 
    first_consumption_time, 
    total_cost,
    RANK() OVER (ORDER BY total_cost DESC) AS cost_ranking,
    RANK() OVER (ORDER BY first_consumption_time) AS time_rank
FROM (
	SELECT 
        c.CustomerId, 
        c.FirstName, 
        c.LastName, 
        MIN(inv.InvoiceDate) AS first_consumption_time, 
        SUM(ii.UnitPrice * ii.Quantity) AS total_cost
    FROM customers AS c
    LEFT JOIN invoices AS inv ON c.CustomerId = inv.CustomerId
    LEFT JOIN invoice_items AS ii ON inv.InvoiceId = ii.InvoiceId
    GROUP BY c.CustomerId
) AS customer_invoice_cost
ORDER BY LastName, FirstName;