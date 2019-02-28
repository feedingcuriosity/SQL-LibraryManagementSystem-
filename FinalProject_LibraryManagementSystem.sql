CREATE DATABASE LibraryManagementSystem

-- 1 -- LIBRARY BRANCH TABLE
CREATE TABLE LIBRARY_BRANCH (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName nvarchar(50) NOT NULL,
	Address nvarchar(50)
);

INSERT INTO LIBRARY_BRANCH
	(BranchName)
	VALUES
	('Sharpstown'),
	('Central'),
	('Northgate'),
	('Wedgewood')
;

-- 2 -- BOOKS TABLE
CREATE TABLE BOOKS (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title nvarchar(500) NOT NULL,
	PublisherName nvarchar(500)
);

INSERT INTO BOOKS
	(Title, PublisherName)
	VALUES
	('The Lost Tribe', 'Picador USA'),
	('Where the Crawdads Sing', 'G.P. Putnams Sons'),
	('The Chef', 'Little, Brown and Company'),
	('Never Tell', 'Harper Paperbacks'),
	('Devils Daughter', 'Avon'), --Wasn't able to keep "'"
	('Mission Critical', 'Berkley'), 
	('The Silent Patient', 'Celadon Books'),
	('Black Leopard, Red Wolf', 'Riverhead Books'),
	('The Threat', 'Simon & Schuster'),
	('Becoming', 'Crown Publishing Group'),
	('Educated', 'Random House'),
	('Spearhead', 'Ballantine Books'),
	('Bad Blood', 'Knopf'),
	('Grateful American','Thomas Nelson'),
	('Sapiens','Harper'), 
	('Born A Crime', 'Spiegel & Grau'),  
	('White Fragility', 'Beacon Press'),
	('Killers of the Flower Moon',' Doubleday'), 
	('The Body Keeps the Score', 'Penguin Books'),
	('Life-Changing Magic: A Journal - Spark Joy Every Day', 'Ten Speed Press')
;

INSERT INTO BOOKS
	(Title, PublisherName)
	VALUES
	('IT', 'Scribner'),
	('The Shining', 'Anchor')
;

-- 3 -- PUBLISHER TABLE 

CREATE TABLE PUBLISHER (
	PublisherName nvarchar(100) PRIMARY KEY
);
	--Add PublisherName from books table to prevent re-work
INSERT INTO PUBLISHER
	SELECT DISTINCT PublisherName
	FROM BOOKS
;

ALTER TABLE PUBLISHER
	ADD Address nvarchar(50),
	Phone INT
;

-- 4 -- BOOK_AUTHORS TABLE
 
CREATE TABLE BOOK_AUTHORS (
	BookID INT,
	AuthorName nvarchar(100)
);

INSERT INTO BOOK_AUTHORS
	(BookID, AuthorName)
	VALUES
	(1, 'Edward Marriott'),
	(2, 'Delia Owens'),
	(3, 'James Patterson'),
	(4, 'Lisa Gardner'),
	(5, 'Lisa Kleypas'),
	(6, 'Mark Greaney'),
	(7, 'Alex Michaelides'),
	(8, 'Marlon James'),
	(9, 'David Poyer'),
	(10, 'Michelle Obama'),
	(11, 'Tara Westover'),
	(12, 'Adam Makos'),
	(13, 'John Carreyrou'),
	(14, 'Gary Sinise'),
	(15, 'Yuval Noah Harari'),
	(16, 'Trevor Noah'),
	(17, 'Robin DiAngelo'),
	(18, 'David Grann'),
	(19, 'Bessel van der Kolk'),
	(20, 'Marie Kondo')
;

INSERT INTO BOOK_AUTHORS
	(BookID, AuthorName)
	VALUES
	(21, 'Stephen King'),
	(22, 'Stephen King')
;

-- 5 -- BOOK_COPIES TABLE

CREATE TABLE BOOK_COPIES (
	BookID INT,
	BranchID INT,
	Number_Of_Copies INT
);

	--Assumed 2 copies of every book at each library branch
INSERT INTO BOOK_COPIES
	(BookID, BranchID, Number_Of_Copies)
	VALUES
	(1, 1, 2),
	(1, 2, 2),
	(1, 3, 2),
	(1, 4, 2),
	(2, 1, 2),
	(2, 2, 2),
	(2, 3, 2),
	(2, 4, 2),
	(3, 1, 2),
	(3, 2, 2),
	(3, 3, 2),
	(3, 4, 2),
	(4, 1, 2),
	(4, 2, 2),
	(4, 3, 2),
	(4, 4, 2),
	(5, 1, 2),
	(5, 2, 2),
	(5, 3, 2),
	(5, 4, 2),
	(6, 1, 2),
	(6, 2, 2),
	(6, 3, 2),
	(6, 4, 2),
	(7, 1, 2),
	(7, 2, 2),
	(7, 3, 2),
	(7, 4, 2),
	(8, 1, 2),
	(8, 2, 2),
	(8, 3, 2),
	(8, 4, 2),
	(9, 1, 2),
	(9, 2, 2),
	(9, 3, 2),
	(9, 4, 2),
	(10, 1, 2),
	(10, 2, 2),
	(10, 3, 2),
	(10, 4, 2),
	(11, 1, 2),
	(11, 2, 2),
	(11, 3, 2),
	(11, 4, 2),
	(12, 1, 2),
	(12, 2, 2),
	(12, 3, 2),
	(12, 4, 2),
	(13, 1, 2),
	(13, 2, 2),
	(13, 3, 2),
	(13, 4, 2),
	(14, 1, 2),
	(14, 2, 2),
	(14, 3, 2),
	(14, 4, 2),
	(15, 1, 2),
	(15, 2, 2),
	(15, 3, 2),
	(15, 4, 2),
	(16, 1, 2),
	(16, 2, 2),
	(16, 3, 2),
	(16, 4, 2),
	(17, 1, 2),
	(17, 2, 2),
	(17, 3, 2),
	(17, 4, 2),
	(18, 1, 2),
	(18, 2, 2),
	(18, 3, 2),
	(18, 4, 2),
	(19, 1, 2),
	(19, 2, 2),
	(19, 3, 2),
	(19, 4, 2),
	(20, 1, 2),
	(20, 2, 2),
	(20, 3, 2),
	(20, 4, 2),
	(21, 1, 2),
	(21, 2, 2),
	(21, 3, 2),
	(21, 4, 2),
	(22, 1, 2),
	(22, 2, 2),
	(22, 3, 2),
	(22, 4, 2)
;


-- 6 -- BORROWER TABLE 
CREATE TABLE BORROWER (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY(1, 1),
	Name nvarchar(50),
	Address nvarchar(50),
	Phone varchar(50),
);

INSERT INTO BORROWER
	(Name, Address, Phone)
	VALUES
	('Zoie Mckinney','482 Brewery Court Chelmsford, MA 01824', 9783712730),
	('Eddie Acosta','7441 Taylor Ave. Chelmsford, MA 01824', 9787583202),
	('Howard Perry', '8 Purple Finch Lane Chelmsford, MA 01824', 9784373642),
	('Evie Humphrey', '583 High Noon St. Chelmsford, MA 01824', 9787911360),
	('Jordon Black', '917 Homestead Court Chelmsford, MA 01824', 9786567960),
	('Joe Cameron', '612 Border Court Chelmsford, MA 01824', 9782922326),
	('Nayeli Vincent', '489 Cherry Dr. Chelmsford, MA 01824', 9782606943),
	('Addison Goodman', '5 Mayfield Rd. Chelmsford, MA 01824', 9787727625),
	('Frida Yang', '243 Marlborough St. Chelmsford, MA 01824', 9786384949),
	('Maddison Walton', '8214 East Yukon Drive Chelmsford, MA 01824', 9782516778),
	('Julian Zhang', '138 Marvon St. Chelmsford, MA 01824', 9786707158),
	('Bailee Anderson', '57 Nichols Lane Chelmsford, MA 01824', 9782071910),
	('Mariah Frazier','3 Forest Lane Chelmsford, MA 01824', 9782043910)
;


-- 7 -- BOOK_LOANS TABLE 

CREATE TABLE BOOK_LOANS (
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	CardNo INT NOT NULL,
	DateOut DATE NOT NULL,
	DateDue AS DATEADD(day,21,DateOut),
);

INSERT INTO BOOK_LOANS
	(BookID, BranchID, CardNo, DateOut)
	VALUES
	(5, 3, 1, '2019-02-07'),
	(21,3,1,'2019-02-07'),
	(11,3,1,'2019-02-07'),
	(10,3,1,'2019-02-07'),
	(7,3,1,'2019-02-07'),
	(13,3,1,'2019-02-07'),
	(6,1,2,'2019-02-16'),
	(3,1,2,'2019-02-16'),
	(17,1,2,'2019-02-16'),
	(14,1,2,'2019-02-16'),
	(19,1,2,'2019-02-16'),
	(1,1,2,'2019-02-16'),
	(1,1,3,'2019-02-20'),
	(20,1,4,'2019-02-18'),
	(20,1,5,'2019-02-18'),
	(20,2,6,'2019-02-13'),
	(20,2,7,'2019-02-14'),
	(20,3,8,'2019-02-22'),
	(20,3,9,'2019-02-10'),
	(20,4,10,'2019-02-10'),
	(21, 4, 10, '2019-02-10'),
	(1,4,10,'2019-02-10'),
	(22,4,10,'2019-02-10'),
	(5,4,11,'2019-02-17'),
	(8,4,11,'2019-02-17'),
	(3,4,11,'2019-02-17'),
	(10,4,12,'2019-02-19'),
	(14,4,12,'2019-02-19'),
	(13,4,12,'2019-02-19'),
	(17,4,12,'2019-02-19'),
	(5,3,9,'2019-02-25'),
	(6,3,9,'2019-02-25'),
	(2,3,9,'2019-02-25'),
	(9,3,9,'2019-02-25'),
	(15,2,7,'2019-02-27'),
	(14,2,7,'2019-02-27'),
	(11,2,7,'2019-02-27'),
	(13,2,7,'2019-02-27'),
	(22,3,8,'2019-02-3'),
	(8,3,8,'2019-02-3'),
	(4,1,3,'2019-02-23'),
	(5,1,3,'2019-02-23'),
	(1,1,3,'2019-02-23'),
	(8,1,3,'2019-02-23'),
	(14,1,3,'2019-02-23'),
	(13,1,3,'2019-02-23'),
	(11,1,4,'2019-02-7'),
	(12,1,4,'2019-02-7'),
	(2,1,4,'2019-02-7'),
	(7,1,4,'2019-02-7')
;

	--Check that more than 2 books are not check out/branch.*/
SELECT* FROM BOOK_LOANS
ORDER BY DateDue
;

-- STORED PROCEDURES --

-- 1 -- How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
USE LibraryManagementSystem
GO
CREATE PROCEDURE dbo.uspNumberOfCopiesOwned @Title nvarchar(30) = NULL, @BranchName nvarchar(30) = NULL
AS
SET NOCOUNT ON
SELECT Number_Of_Copies, Title, BranchName
FROM BOOK_COPIES
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
INNER JOIN BOOKS ON BOOKS.BookID = BOOK_COPIES.BookID
WHERE Title LIKE '%' + ISNULL (@Title, Title)
AND BranchName LIKE '%' + ISNULL (@BranchName, BranchName)
GO

EXEC dbo.uspNumberOfCopiesOwned @Title = 'The Lost Tribe', @BranchName = 'Sharpstown'

-- 2 -- How many copies of the book titled "The Lost Tribe" are owned by each library branch?
EXEC dbo.uspNumberOfCopiesOwned @Title = 'The Lost Tribe'

-- 3 -- Retrieve the names of all borrowers who do not have any books checked out.
USE LibraryManagementSystem
GO
CREATE PROCEDURE dbo.uspBorrowersNoBooks
AS
SET NOCOUNT ON
SELECT NAME
FROM BOOK_LOANS
FULL JOIN BORROWER ON BORROWER.CardNo = BOOK_LOANS.CardNo
WHERE BOOK_LOANS.CardNo IS NULL
GO

EXEC dbo.uspBorrowersNoBooks

-- 4 -- For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrowers address.
USE LibraryManagementSystem
GO
CREATE PROCEDURE dbo.uspBooksDueTodayAtBranch @BranchName varchar(30) = NULL
AS
SET NOCOUNT ON
SELECT Title, Name, BORROWER.Address, DateDue, BranchName
FROM BOOK_LOANS
INNER JOIN BOOKS ON BOOKS.BookID = BOOK_LOANS.BookID
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_LOANS.BranchID
INNER JOIN BORROWER ON BORROWER.CardNo = BOOK_LOANS.CardNo
WHERE BranchName = ISNULL(@BranchName,BranchName) AND DateDue = DATEADD(DAY, DATEDIFF(DAY,0,GETDATE()),0)
GO

EXEC dbo.uspBooksDueTodayAtBranch @BranchName='Sharpstown'

-- 5 -- For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
USE LibraryManagementSystem
GO
CREATE PROCEDURE dbo.uspNumberOfBooksLoanedAtBranch
AS
SET NOCOUNT ON
SELECT BranchName, COUNT(BookID) AS NumberOfBooksLoanedOut
FROM BOOK_LOANS
LEFT JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_LOANS.BranchID
GROUP BY BranchName
GO

EXEC dbo.uspNumberOfBooksLoanedAtBranch

-- 6 -- Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out.
USE LibraryManagementSystem
GO
CREATE PROCEDURE dbo.uspBorrowerWithMoreThanFiveBooks
AS
SET NOCOUNT ON
SELECT NAME, ADDRESS, COUNT(Book_Loans.CardNo) AS NumberOfBooksCheckedOut
FROM BOOK_LOANS
INNER JOIN BORROWER ON BORROWER.CardNo = BOOK_LOANS.CardNo
GROUP BY NAME, ADDRESS
HAVING COUNT(Book_Loans.CardNo)> 5
GO

EXEC dbo.uspBorrowerWithMoreThanFiveBooks

-- 7 -- For each book authored by "Stephen King", retrieve the title and the number of copies owend by the library branch whose name is "Central".
USE LibraryManagementSystem
GO
CREATE PROCEDURE dbo.BranchCopiesOwnedByAuthor @AuthorName varchar(30) = Null, @BranchName varchar(30) = Null
AS
SET NOCOUNT ON
SELECT Title, Number_Of_Copies, AuthorName, BranchName
FROM BOOKS
INNER JOIN BOOK_AUTHORS ON BOOK_AUTHORS.BookID = BOOKS.BookID
INNER JOIN BOOK_COPIES ON BOOK_COPIES.BookID = BOOKs.BookID
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
WHERE AuthorName = ISNULL(@AuthorName, AuthorName) AND BranchName = ISNULL(@BranchName, BranchName)
GO

EXEC dbo.BranchCopiesOwnedByAuthor @AuthorName='Stephen King', @BranchName= 'Central'