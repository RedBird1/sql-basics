/*List the customer name and phone number for every customer that owns a BMW, Honda or Toyota.*/
SELECT c.FirstName, c.LastName, c.phone, v.make
	FROM CUSTOMERS1 c, VEHICLES1 v
	WHERE v.CustNO = c.CustNO
  AND v.make IN ('BMW', 'Toyota','Honda');
	
	

/*List the part number and part description for every part that has less than 10 in stock.*/
SELECT p.PartNo, p.PartDesc, p.UnitsInStock
	FROM PARTS1 p
	WHERE (p.UnitsInStock < 10);

/*List the customer name and vehicle serial number for those customers who have had more than one repair order.*/
SELECT c.FirstName, v.SerialNo, COUNT(ro.RepOrdNo)
	FROM CUSTOMERS1 c, VEHICLES1 v, REPAIRORDER11 ro
	WHERE c.CustNo = v.CustNo
		AND v.SerialNo = ro.SerialNo
	  GROUP BY c.FirstName, v.SerialNo 
	  HAVING COUNT(ro.RepOrderNo) > 1;

/*List the repair order number, customer first name, last name */ 
/*Vehicle make, and date of all repair orders within the month of November 2005. */
/* Sort the results by date, and then by customer last name.*/
SELECT ro.ORDERNo, c.FirstName, c.Lastname, v. make, ro.reporddate
	FROM CUSTOMERS1 c, VEHICLES1 v, REPAIRORDERS1 ro
	WHERE c.CustNo = v.CustNo
	AND v.SerialNo = ro.SerialNo
	and ro.reporddate BETWEEN '01-NOV-05' AND '30-NOV-05'
	ORDER BY ro.RepOrdDate, c.LastName;


/*List the value of the parts inventory currently in stock.*/ 
/*For each part, list the part number, unit cost, quantity in stock */
/*and the total value of the quantity in stock (quantity in stock X unit cost).*/
SELECT p.PartNo, p.UnitPrice, p.UnitsInStock, (p.UnitsInStock * p.UnitPrice) "Total Value"
	FROM PARTS1 p
	WHERE p.UnitsInStock > 0;