SELECT CONCAT_WS('-', title, author_fname, author_lname) AS 'full name' FROM books;

SELECT CONCAT(SUBSTRING(title, 1,10), '...') FROM books;