-- CIDM 6350 Assignment3
-- Patrick Reinschmidt
-- Edwin Ramos
-- Adrian Varela

Use assignment3;

SELECT Book_Info.ISBN, Book_Info.BookTitle, Book_Info.Edition, Book_Info.PubYear, Copies.CopyNumber, Copies.CpyCondition, Copies.MaxBrDays, Publishers.pub_id, Publishers.Publisher, 
Borrowers.BorrowerId, Borrowers.BrName, Borrowers.BrAddress, Checkouts.outDate, Checkouts.ReturnDate
FROM Book_Info
JOIN Copies ON Book_Info.ISBN = Copies.ISBN
JOIN Publishers ON Book_Info.pub_id = Publishers.pub_id
JOIN Checkouts ON Book_Info.ISBN = Checkouts.ISBN
JOIN Borrowers ON Checkouts.BorrowerId = Borrowers.BorrowerId; 
DESC Publishers;
DESC Book_Info;
DESC Copies;
DESC Borrowers;
DESC Checkouts;
SELECT * FROM Publishers;
SELECT * FROM Book_Info;
SELECT * FROM Copies;
SELECT * FROM Borrowers;
SELECT * FROM Checkouts;