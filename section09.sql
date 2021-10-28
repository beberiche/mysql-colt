SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname,author_fname;

SELECT MIN(released_year) FROM books;

SELECT MIN(pages) FROM books;

SELECT MIN(title) FROM books;

SELECT title,pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title,pages FROM books ORDER BY pages LIMIT 1;

SELECT MIN(released_year), author_fname, author_lname FROM books GROUP BY author_lname, author_fname;

SELECT MAX(pages), author_fname, author_lname FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author, MAX(pages) AS 'longest book' FROM books GROUP BY author_lname, author_fname;

SELECT SUM(released_year) FROM books;

SELECT AVG(released_year) FROM books;

SELECT AVG(pages) FROM books;

SELECT COUNT(*) FROM books;

SELECT COUNT(*), released_year FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT author_fname, author_lname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' - ', author_lname) AS fullname, MAX(pages) FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year