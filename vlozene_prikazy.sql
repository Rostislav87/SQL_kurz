-- Najdi jmeno a prijmeni vedoucich, kteri meli obrat nad 200.000 czk
SELECT first_name, last_name
FROM employees
WHERE emp_id IN (
	SELECT shop_mgr_id
	FROM sales
	WHERE total_sales > 200000
);

-- Najdi jmeno a prijmeni zakazniku, kteri nakoupili v Praze
SELECT customer_id, customer_last_name
FROM customers
WHERE shop_id IN (
	SELECT shop_id
    FROM shops
    WHERE shop_id = 1
);
