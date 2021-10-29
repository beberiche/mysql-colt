-- CHAR
-- fixed text data
-- ex) CHAR(4)
-- if data's length bigger than 4
-- data is truncated at 4 character
-- if data's length smaller than 4
-- data is filled with space until 4 character

-- VARCHAR
-- flexible text data
-- ex) VARCHAR(4)
-- if data's length bigger than 4
-- data is truncated at 4 character
-- if data's length smaller than 4
-- data isn't filled with space

-- INT
-- whole numbers
-- integer

-- DECIMAL
-- numeric with decimal
-- ex) DECIMAL(total number of digits, digits after decimal)
-- fixed point type
-- calculations are exact
-- store larger numbers and more need memory than FLOAT & DOUBLE

-- FLOAT
-- numeric with decimal
-- floting point type
-- calculations are approximate
-- memory needed 4bytes / precision issue ~7 digits

-- DOUBLE
-- numeric with decimal
-- floting point type
-- calculations are approximate 
-- memory needed 8bytes / precision issue ~15 digits

-- DATE
-- Values with date but no time. yy-mm-dd

-- TIME
-- Values with a time but no date. hh:mm:ss

-- DATETIME
-- Values with a date and time. yy-mm-dd hh:mm:ss
-- range : 1000-01-01 00:00:00 to 9999-12-31 23:59:59


-- TIMESTAMP
-- Values with a date and time. 
-- range 1970-01-01 00:00:01 UTC to 2038-01-19 03:14:07 UTC
-- take a less space than DATETIME (if use same data values, TIMESTAMP maybe need only half bites.



INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES ('Microwave', CURDATE(), CURTIME(), NOW());

"2017-04-21"
CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate))
"April 21st 2017"

SELECT DATE_FORMAT(birthdt, '%m/%d/%y') FROM people;

SELECT DATEDIFF(NOW(),birthdate) FROM people;

SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;

CREATE TABLE comments (content VARCHAR(100), created_at TIMESTAMP DEFAULT NOW());

CREATE TABLE comments2 (content VARCHAR(100), changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP);



-- CHALLENGE

CREATE TABLE inventory (item_name VARCHAR(100), price decimal(8,2), quantity INT)

SELECT CURTIME();

SELECT CURDATE();

SELECT DAYOFWEEK(CURRENT_DATE);

SELECT DAYNAME(CURRENT_DATE);

SELECT DATE_FORMAT(now(), '%m/%d/%Y');

SELECT DATE_FORMAT(now(), '%M %D at %l:%i');

CREATE TABLE tweets (content VARCHAR(140), username VARCHAR(20), created_at TIMESTAMP DEFAULT NOW());




















