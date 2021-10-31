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