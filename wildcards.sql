-- Najdi vsechny dodavatele, kteri jsou z Prahy
SELECT *
FROM suppliers
WHERE supplier_name LIKE "%Praha%";

-- Najdi vsechny zeny mezi zakazniky
SELECT *
FROM customers
WHERE customer_last_name LIKE "%ova";

-- Najdi vsechny zamestnance narozene v unoru
SELECT * 
FROM employees
WHERE birth_date LIKE "%____-02%";
