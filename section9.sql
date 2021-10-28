SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname,author_fname;

SELECT MIN(released_year) FROM books;

SELECT MIN(pages) FROM books;

SELECT MIN(title) FROM books;

SELECT title,pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title,pages FROM books ORDER BY pages LIMIT 1;

SELECT MIN(released_year), author_fname, author_lname FROM books GROUP BY author_lname, author_fname;

SELECT MAX(pages), author_fname, author_lname FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS author, MAX(pages) AS 'longest book' FROM books GROUP BY author_lname, author_fname;