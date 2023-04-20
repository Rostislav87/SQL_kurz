-- Najdi všechny zaměstnance
SELECT * 
FROM employees;

-- Najdi všechny zaměstnance a seřaď je podle pozice
SELECT * 
FROM employees
ORDER BY role ; -- ORDER BY role DESC;

-- Najdi všechny zaměstnance podle pozice, příjmení a jména
SELECT *
FROM employees
ORDER BY role, last_name, first_name;

-- Najdi prvních 5 zákazníků v tabulce zákazníci
SELECT *
FROM customers
LIMIT 5;

-- Vypsat jen sloupec pro křestní jméno a příjmení v tabulce zaměstanci
SELECT first_name, last_name
FROM employees;

-- Vypsat všechny zaměstnance jen se sloupci jméno, příjmení a pozice jako pracovni_pozice
SELECT first_name, last_name, role AS pracovni_pozice
FROM employees;

-- Vypsat jaké různé pozice máme v naší firmě
SELECT DISTINCT role
FROM employees;

-- Funkce:
-- Kolik máme zákazníků celkem?
SELECT COUNT(customer_id)
FROM customers;

-- Kolik máme vedoucích prodejen celkem?
SELECT COUNT(role)
FROM employees
WHERE role = "Vedoucí";

-- Najdi všechny zaměstnance, kteří jsou narozeni po roce 1988
SELECT COUNT(emp_id)
FROM employees
WHERE birth_date > "1988-01-01";

-- Jaký byl celkový zisk všech prodejen dohromady?
SELECT SUM(total_sales)
FROM sales;

-- Jaký je průměrný zisk prodejny?
SELECT AVG(total_sales)
FROM sales;

-- Agregátní funkce:
-- Jaký je celkový zisk dle jednotlivých vedoucích?alter
SELECT SUM(total_sales), shop_mgr_id
FROM sales
GROUP BY shop_mgr_id;

-- Součet všech zákazníků dle pobočky?
SELECT COUNT(customer_id), shop_id
FROM customers
GROUP BY shop_id;

-- Kolik máme celkem prodejců a vedoucích?
SELECT COUNT(emp_id), role
FROM employees
GROUP BY role;