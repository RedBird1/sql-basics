/*Select all data contained in the BOOKs table */
SELECT * FROM BOOKS;

/* Listing publisher name, Contact Person, publisher phone */
SELECT name, contact AS "Contact Person", phone 
	FROM PUBLISHER;

/* Every customer that has placed an order with book store */
SELECT DISTINCT Customer# FROM ORDERS;

/* Advanced Challenge */
SELECT Lastname ||', '|| Firstname AS "Name",
	City || ', ' || State AS "Location"
	FROM CUSTOMERS;

SELECT title AS "Title",
	(retail - cost) / cost * 100 AS "Profit %"
	FROM BOOKS;
	
/* CH8 */
SELECT title AS "Title" FROM BOOKS
	WHERE category NOT = 'fit';

	
	
