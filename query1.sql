--What are the last names and emails of all customer who made purchased in the store?
SELECT LastName, Email FROM customers 
WHERE EXISTS (SELECT 1 FROM invoices WHERE CustomerId = customers.CustomerId);