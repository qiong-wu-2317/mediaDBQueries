--the data of customer purchase history, which includes customer names, purchase time, track names purchased, and various spending statistics for each customer including each purchase cost, personal purchase rank, total cost, minimum cost, maximum Costs, and average cost.
SELECT 
    (c.FirstName || " " || c.LastName) AS full_name, 
    inv.InvoiceDate,
    group_concat(t.Name, ', ') OVER (PARTITION BY c.CustomerId, ii.InvoiceId) AS tracks_purchased,
    inv.Total as invoce_cost,
    rank() OVER (PARTITION BY c.CustomerId ORDER BY inv.Total DESC) AS personal_cost_rank,
    sum(inv.total) OVER (PARTITION BY c.CustomerId) AS total_cost,
    min(inv.total) OVER (PARTITION BY c.CustomerId) AS min_cost,
    max(inv.total) OVER (PARTITION BY c.CustomerId) AS max_cost,
    round(avg(inv.total) OVER (PARTITION BY c.CustomerId), 2) AS avg_cost
FROM customers AS c
LEFT JOIN invoices AS inv ON c.CustomerId = inv.CustomerId
LEFT JOIN invoice_items AS ii ON inv.InvoiceId = ii.InvoiceId
LEFT JOIN tracks AS t ON ii.TrackId = t.TrackId
GROUP BY c.CustomerId, inv.InvoiceId
ORDER BY total_cost DESC, c.LastName, c.FirstName, personal_cost_rank