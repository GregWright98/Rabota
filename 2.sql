CREATE TABLE avtors(idAvtor int, Name varchar(100) NOT null, PRIMARY KEY(idAvtor))
CREATE TABLE books(idBook int, Book varchar(100) NOT null, idAvtor int NOT null, idSoAvtor1 int, idSoAvtor2 int, idSoAvtor3 int, idSoAvtor4 int, idSoAvtor5 int, PRIMARY KEY(idBook))

SELECT DISTINCT avtors.Name FROM avtors INNER JOIN books ON avtors.idAvtor = books.idAvtor WHERE avtors.idAvtor IN (SELECT books.idAvtor FROM books WHERE books.idAvtor GROUP BY books.idAvtor HAVING COUNT(*) <= 6)