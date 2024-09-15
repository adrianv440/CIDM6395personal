-- CIDM 6350 Assignment3
-- Patrick Reinschmidt
-- Edwin Ramos
-- Adrian Varela

CREATE DATABASE IF NOT EXISTS assignment3;
use assignment3;

CREATE TABLE Publishers (
pub_id INT PRIMARY KEY,
Publisher VARCHAR(255)
);

CREATE TABLE Book_Info (
ISBN VARCHAR(13) PRIMARY KEY,
BookTitle VARCHAR(255),
Edition INT,
PubYear INT,
nCopies INT,
pub_id INT,
FOREIGN KEY (pub_id) REFERENCES Publishers(pub_id)
);

CREATE TABLE Copies (
ISBN VARCHAR(13),
CopyNumber INT,
MaxBrDays INT,
CpyCondition VARCHAR(50),
PRIMARY KEY (ISBN, CopyNumber),
FOREIGN KEY (ISBN) REFERENCES Book_Info(ISBN)
);

CREATE TABLE Borrowers (
BorrowerID INT PRIMARY KEY,
BrName VARCHAR(255),
BrAddress VARCHAR(255)
);

CREATE TABLE Checkouts (
ISBN VARCHAR(13),
CopyNumber INT,
BorrowerId INT,
outDate DATE,
ReturnDate DATE,
PRIMARY KEY (ISBN, CopyNumber, BorrowerId),
FOREIGN KEY (ISBN, CopyNumber) REFERENCES Copies(ISBN, CopyNumber),
FOREIGN KEY (BorrowerId) REFERENCES Borrowers(BorrowerId)
);

INSERT INTO Publishers
VALUES (1, 'Wyman-Hill'),
(3, 'Hills and Sons');

INSERT INTO Book_Info
VALUES ('507014976-8', 'The Legend of Lizzie Borden', 2, 2016, 2, 3),
('517680829-3', 'Fermats Room', 1, 1998, 3, 1),
('747439731-5', 'The Fantastic Four', 1, 2015, 3, 1);

INSERT INTO Copies
VALUES ('507014976-8', 2, 5, 'Poor'),
('517680829-3', 1, 15, 'New'),
('517680829-3', 2, 15, 'Good'),
('747439731-5', 1, 10, 'Fair');

INSERT INTO Borrowers
VALUES (26, 'Bevan Bantick', '09 Jay Street'),
(28, 'Patty Caunter', '48845 Fuller Drive'),
(35, 'Nalani Eim', '56 Fair Oaks Street'),
(40, 'Lena Hintzer', '0 Buena Vista Drive'),
(89, 'Noak Leinthall', '18523 Jenna Junction');

INSERT INTO Checkouts (ISBN, CopyNumber, BorrowerId, outDate, ReturnDate)
VALUES ('507014976-8', 2, 26, '2021-12-09', '2021-12-14'),
('517680829-3', 2, 26, '2022-05-20', '2022-05-28'),
('517680829-3', 1, 35, '2022-05-27', '2022-06-11'),
('517680829-3', 2, 40, '2022-08-05', '2022-08-10'),
('517680829-3', 1, 89, '2021-02-26', '2021-03-04'),
('747439731-5', 1, 28, '2020-11-17', '2020-11-27'),
('747439731-5', 1, 35, '2022-01-23', '2022-01-28');

