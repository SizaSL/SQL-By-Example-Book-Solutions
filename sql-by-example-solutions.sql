--Ch 1.4.1
--1.1
SELECT license_grade, fname + ' ' + lname
FROM Captain
WHERE fname + ' ' + lname = 'Otheno Vollage';

--1.2
SELECT fname + ' ' + lname, license_grade, capt_id, dob
FROM Captain
WHERE dob = (SELECT MIN(dob) FROM Captain);

--1.3
SELECT COUNT(fname)
FROM Captain
WHERE license_grade = 1;

--1.4
SELECT COUNT(fname)
FROM Captain
WHERE dob > '1970-12-31';

--Ch 1.6.1
--Exp 1.1
SELECT ship_no, m.manufacturer_id, name
FROM Ship AS s
JOIN Manufacturer AS m ON s.manufacturer_id = m.manufacturer_id
WHERE ship_no = 37;

--Exp 1.2
SELECT *
FROM Ship AS s
JOIN Manufacturer AS m ON s.manufacturer_id = m.manufacturer_id
WHERE name = 'General Ship Builders';

--Exp 1.3
SELECT *
FROM Ship AS s
JOIN Manufacturer AS m ON s.manufacturer_id = m.manufacturer_id
WHERE m.state = 'CA';

--Ch 1.6.2
--Exe 2.1
SELECT m.name
FROM Ship AS s
JOIN Manufacturer AS m ON s.manufacturer_id = m.manufacturer_id
WHERE s.class = 2;

--Exe 2.2
SELECT m.name
FROM Ship AS s
JOIN Manufacturer AS m ON s.manufacturer_id = m.manufacturer_id
WHERE s.capacity >= 100000;

--Exe 2.3
SELECT *
FROM Ship AS s
RIGHT JOIN Manufacturer AS m ON s.manufacturer_id = m.manufacturer_id
WHERE purch_date > '1975-12-31' AND state NOT IN ('CA', 'NY', 'WA', 'CT', 'AK');

--Exe 2.4
SELECT m.name
FROM Manufacturer AS m
WHERE m.manufacturer_id NOT IN (SELECT DISTINCT manufacturer_id FROM Ship);
