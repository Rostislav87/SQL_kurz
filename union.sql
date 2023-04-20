-- Vyhledej vsechny zamestnance a zakazniky
SELECT last_name AS names
FROM employees
UNION
SELECT customer_id 
FROM customers;

-- Najdi jmena vsech dodavatelu a jejich zbozi a jmeno a prijmeni zakazniku
SELECT supplier_name, supply_type
FROM suppliers
UNION
SELECT customer_id, customer_last_name
FROM customers;