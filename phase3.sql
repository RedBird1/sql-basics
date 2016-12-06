/* List the customer name and phone number for every customer that owns a BMW, Honda or Toyota. */
SELECT c.CustFName, c.CustLName, c.custphone, v.make
	FROM CUSTOMER c, VEHICLE v
	WHERE v.CustNO = c.CustNO
  AND v.make IN ('BMW', 'Toyota','Honda');



/* List the part number and part description for every part that has less than 10 in stock. */
SELECT p.PartNo, p.PartDesc, p.PartStk
	FROM PART p
	WHERE (p.PartStk < 10);

/* List the customer name and vehicle serial number for those customers who have had more than one repair order. */
SELECT c.CustFName, v.vin, COUNT(ro.RepOrdNo)
	FROM CUSTOMER c, VEHICLE v, REPAIRORDER ro
	WHERE c.CustNo = v.CustNo
		AND v.vin = ro.vin
	  GROUP BY c.CustFName, v.vin
	  HAVING COUNT(ro.RepOrdNo) > 1;

/* List the repair order number, customer first name, last name */
/* Vehicle make, and date of all repair orders within the month of November 2005. */
/* Sort the results by date, and then by customer last name. */
SELECT ro.RepOrdNo, c.CustFName, c.CustLName, v.make, ro.RepOrdDate
	FROM CUSTOMER c, VEHICLE v, REPAIRORDER ro
	WHERE c.CustNo = v.CustNo
	AND v.vin = ro.vin
	and ro.reporddate BETWEEN '01-NOV-05' AND '30-NOV-05'
	ORDER BY ro.RepOrdDate, c.CustLName;


/* List the value of the parts inventory currently in stock. */
/* For each part, list the part number, unit cost, quantity in stock */
/* and  total value of the quantity in stock (quantity in stock X unit cost). */
SELECT DISTINCT p.PartNo, p.PartPPU, p.PartStk, (p.PartStk * p.PartPPU) "Total Value"
	FROM PART p
	WHERE p.PartStk > 0;
