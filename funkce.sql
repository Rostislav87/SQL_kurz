-- Najít všechny zaměstnance
SELECT *
FROM employees;

-- Seřadit všechny zaměstnance podle pozic
SELECT *
FROM employees
ORDER BY role;

-- Seřadit všechny zaměstnance podle pozic, příjmení, jména
SELECT *
FROM employees
ORDER BY role, last_name, first_name; 

-- Prvních 5 zákazníků v tabulce customers
SELECT *
FROM customers
LIMIT 5;

-- Vypsat jen sloupec pro křestní jméno a příjmení v tabulce employees
SELECT first_name, last_name
FROM employees;

-- Vypsat všechny zaměstnance jen se sloupci jméno, příjmení a role jako pracovni_pozice
SELECT first_name, last_name, role AS pracovni_pozice
FROM employees;

-- Vypsat jaké různé pozice máme v naší firmě
SELECT DISTINCT role
FROM employees;

-- Funkce:
-- Kolik mame celkem zakazniku?
SELECT COUNT(customer_id)
FROM customers;

-- Kolik mame celkem vedoucich prodejen?
SELECT COUNT(role)
FROM employees
WHERE role = "Vedouci";

-- Najdi vsechny zamestnance kteri jsou narozeni po roce 1988
SELECT COUNT(emp_id)
FROM employees
WHERE birth_date > "1988-01-01";

-- Jaky byl celkovu zisk vsech pobocek dohromady?
SELECT SUM(total_sales)
FROM sales;

-- Jaky je prumerny zisk pobocky?
SELECT AVG(total_sales)
FROM sales;

-- Agregatni funkce:
-- Jaky je celkovy zisk dle jednotlivych vedoucich?
SELECT SUM(total_sales), shop_mgr_id
FROM sales
GROUP BY shop_mgr_id;

-- Soucet vsech zakazniku dle pobocky
SELECT COUNT(customer_id), shop_id
FROM customers
GROUP BY shop_id;

-- Kolik mame celkem prodejcu a vedoucich?
SELECT COUNT(emp_id), role
FROM employees
GROUP BY role;