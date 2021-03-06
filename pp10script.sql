/* PP10 */

/* #1 title of each book and the name and phone number of the contact at the publishers office*/
SELECT p.name, p.phone, b.title
	FROM PUBLISHER p JOIN BOOKS b USING(PubId);


SELECT p.name, p.phone, b.title
	FROM PUBLISHER p, BOOKS b
	WHERE p.PubID = b.PubId;

/* #2 Determine which orders haven't yet shipped and name of customer on order */
/* Sort by date */
SELECT o.Order#, c.FirstName, c.LastName, o.OrderDate
	FROM ORDERS o INNER JOIN CUSTOMERS c USING(Customer#)
	WHERE o.ShipDate = null
	ORDER by o.OrderDate DESC;

SELECT o.ORDER#, c.FirstName, c.LastName, o.OrderDate
	FROM ORDERS o, CUSOMERS c
	WHERE o.Customer# = c.Customer#
		AND o.shipDate = null
	ORDER by o.OrderDate DESC;
	
/* #4 Determine which books customer jake Lucas has purchased */
SELECT UNIQUE b.Title, c.FirstName, c.LastName
	FROM CUSTOMERS c JOIN ORDERS o USING(customer#)
		JOIN ORDERITEMS oi USING(order#)
		JOIN BOOKS b USING(isbn)
  WHERE c.FirstName = 'JAKE' 
  AND c.LastName = 'LUCAS';
  
SELECT UNIQUE b.Title, c.FirstName, c.LastName
	FROM CUSTOMERS c, ORDERS o, ORDERITEMS oi, BOOKS b
	WHERE c.Customer# = o.Customer#
		AND o.Order# = oi.Order#
		AND oi.ISBN = b.ISBN
		AND c.FirstName = 'JAKE'
		AND c.LastName = 'LUCAS';
		
/* #5 Determine profit of each book sold to Jake Lucas*/
SELECT UNIQUE b.Title, c.FirstName, c.LastName,(oi.paidEach - b.cost) AS "Profit"
	FROM CUSTOMERS c JOIN ORDERS o USING(customer#)
		JOIN ORDERITEMS oi USING(order#)
		JOIN BOOKS b USING(isbn)
  WHERE c.FirstName = 'JAKE' 
  AND c.LastName = 'LUCAS'
  ORDER BY Profit DESC;


/* #8 */
SELECT c.FirstName, c.LastName, a.FName, a.LName
  FROM CUSTOMERS c, ORDERS o, ORDERITEMS oi, BOOKAUTHOR ba, AUTHOR a  
	WHERE c.Customer# = o.Customer#
		AND o.Order# = oi.Order#
		AND oi.ISBN = ba.ISBN
		AND a.AuthorID = ba.AuthorID
		AND c.FirstName = 'BECCA'
		AND c.LastName = 'NELSON';
		
/* Chapter 11 */

/* #1 Determine how many books are in the Cooking category */
SELECT COUNT(ISBN) 
	FROM BOOKS b
	WHERE b.Category = "Cooking";

/* #4 Determine total profit generated by sales to customer 1017 */
SELECT SUM(b.retail - b.cost) "Profit", COUNT(*) "COUNT" 
	FROM CUSTOMERS c, ORDERS o, ORDERITEMS oi, BOOKS b
	WHERE c.Customer# = o.Customer#
		And c.Customer# = '1017'
		AND o.Order# = oi.Order#
		AND oi.ISBN = b.ISBN;
	
	
	

/* #5 List the retail price of the least expensive book in the computer category. */

/* #6 Determine average profit generated by orders. */

/* #7 Determine how many orders have been placed by each customer. */

/* #8 Determine the average retail price of books by publisher name and cat */
/* include only the categories children and computer and the groups with an average real price greater than 50$. */

/* #9 List the customers living in Georgia or Florida who have recently placed an order totalling more than $80 */














		

