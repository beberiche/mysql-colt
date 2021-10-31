SELECT * FROM books WHERE released_year != 2001;

SELECT title FROM books WHERE title LIKE 'W%';

SELECT * FROM books  WHERE released_year  <= 2000 ORDER BY released_year;

3 < -10;
-10 < -9;
42 <= 42;
'h' < 'p';
'p' < 'h';
'Q' <= 'q';


-- AND
SELECT * FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;

1 < 5 && 7 = 9;
-10 > -20 && 0 <= 0;
-40 <= 0 AND 10 > 40;
54 <= 54 && 'a' = 'A';

SELECT * FROM books WHERE author_lname = 'Eggers' AND released_year > 2010 AND title LIKE '%novel%';

-- OR

SELECT * FROM books WHERE author_lname = 'Eggers' OR released_year > 2010;

-- BETWEEN

SELECT * fROM books WHERE released_year >= 2004 && released_year <= 2015;

SELECT * fROM books WHERE released_year BETWEEN 2004 AND 2015;

SELECT * fROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year;

SELECT CAST('2017-05-02' AS DATETIME);

SELECT name,birthdt FROM people WHERE birthdt BETWEEN CAST('1980-01-01'AS DATETIME) AND CAST('2000-01-01' AS DATETIME);


-- IN

SELECT title, author_lname FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, author_lname FROM books WHERE released_year IN (2017,1985);

SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 !=0 ORDER BY released_year;

-- CASE
SELECT title, released_year, CASE WHEN released_year >= 2000 THEN 'Modern Lit' ELSE '20th Century Lit' END AS GENRE FROM books;

SELECT title, stock_quantity, CASE WHEN stock_quantity >= 100 THEN '***' WHEN stock_quantity >= 51 THEN '**' ELSE '*' END AS STOCK FROM books ORDER BY stock_quantity;

SELECT title, stock_quantity, 
    CASE 
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*' 
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**' 
        WHEN stock_quantity BETWEEN 101 AND 150 THEN '***' 
        ELSE '****'
    END AS STOCK 
FROM books ORDER BY stock_quantity;


-- CHALLENGE

0,1,1;

SELECT * FROM books WHERE released_year < 1980;

SELECT * FROM books WHERE author_lname IN ('Eggers', 'Chabon');

SELECT * FROM books WHERE author_lname = 'Lahiri' && released_year >= 2000;

SELECT * FROM books WHERE pages BETWEEN 100 AND 200;

SELECT * FROM books WHERE author_lname LIKE 'C%' || author_lname LIKE 'S%';

SELECT title, author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title LIKE '%Kids%' || title LIKE '%Heartbreaking Work%' THEN 'Memoir'
        ELSE 'Novel'
    END AS 'TYPE'
FROM books;

SELECT title, author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        WHEN COUNT(*) = 2 THEN '2 books'
        ELSE '3 books'
    END AS 'COUNT'
FROM books GROUP BY author_lname, author_fname;

SELECT title, author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books GROUP BY author_lname, author_fname;

SELECT title, COUNT(author_lname) FROM books; GROUP BY author_lname, author_fname;