-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON books.author_id = authors.id and authors.name = 'George R.R. Martin';
-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors on books.author_id = authors.id and authors.name = 'Milan Kundera';
-- Find all books written by an author from China or the UK.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'United Kingdom' or authors.nationality = 'china';

-- Find out how many books Albert Camus wrote.
SELECT COUNT(books) FROM authors JOIN books ON authors.id  = books.author_id and authors.name  = 'Albert Camus';
-- Find out how many books written before 1980 were by authors not from the US.
SELECT COUNT(books) FROM authors JOIN books ON authors.id = books.author_id WHERE authors.nationality != 'United States of America'
and books.publication_date < 1980;
-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE name LIKE '%J%';
-- Find all books whose titles contain 'the'.
SELECT * FROM books WHERE title LIKE '%the%';
