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
	FROM ORDERS o INNER JOIN CUSTOMERS c 
	USING(Customer#)
	WHERE o.ShipDate = null
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
  ORDER by Profit ASC;



/* #8 */
		
  
  

