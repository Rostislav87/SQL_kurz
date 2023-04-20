-- Praha
INSERT INTO employees VALUES(1, "Alena", "Klímová", "1992-6-3", "CEO", NULL, NULL);

INSERT INTO employees VALUES(6, "Lucie", "Wimmerová", "1952-4-23", "Vedoucí", NULL, 1);

INSERT INTO shops VALUES(1, "Praha", 6);

UPDATE employees
SET shop_id = 1
WHERE emp_id =6;

INSERT INTO employees VALUES(2, "Petr", "Tichý", "1991-2-12", "Prodejce", 1, 6);

-- Brno
INSERT INTO employees VALUES(3, "Rudolf", "Nedbal", "1956-2-22", "Vedoucí", NULL, 1);

INSERT INTO shops VALUES(2, "Brno", 3);

UPDATE employees
SET shop_id = 2
WHERE emp_id = 3;

INSERT INTO employees VALUES(5, "Ondřej", "Hořejší", "1976-1-28", "Prodejce", 2, 3);
INSERT INTO employees VALUES(9, "Vojtěch", "Škopek", "1988-5-6", "Prodejce", 2, 3);

-- Plzeň
INSERT INTO employees VALUES(8, "Karel", "Olšák", "1996-2-29", "Vedoucí", NULL, 1);

INSERT INTO shops VALUES(3, "Plzeň", 8);

UPDATE employees
SET shop_id = 3
WHERE emp_id = 8;

INSERT INTO employees VALUES(4, "Jan", "Gal", "1988-8-19", "Prodejce", 3, 8);
INSERT INTO employees VALUES(7, "Zuzana", "Zlámalová", "1991-8-11", "Prodejce", 3, 8);

-- Zákazníci
INSERT INTO customers VALUES("Marek", "Novák", 1);
INSERT INTO customers VALUES("Jana", "Petrová", 3);
INSERT INTO customers VALUES("Jaromír", "Milda", 1);
INSERT INTO customers VALUES("Petra", "Rydlová", 3);
INSERT INTO customers VALUES("Šimon", "Smutný", 1);
INSERT INTO customers VALUES("Jan", "Šťastný", 2);
INSERT INTO customers VALUES("Alice", "Hovadová", 2);

-- Dodavatelé
INSERT INTO suppliers VALUES(1, "Konfekce Praha", "Doplňky");
INSERT INTO suppliers VALUES(2, "Kabáty Cimrman", "Kabáty");
INSERT INTO suppliers VALUES(1, "Dámský velkoobchod", "Spodní prádlo");
INSERT INTO suppliers VALUES(3, "Konfekce Praha", "Kalhoty");

-- Prodeje
INSERT INTO sales VALUES(6, 1, 960000);
INSERT INTO sales VALUES(3, 2, 160000);
INSERT INTO sales VALUES(8, 3, 340000);
