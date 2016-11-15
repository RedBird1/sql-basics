/* PP10 */

/* title of each book and the name and phone number of the contact at the publishers office*/
/* Traditional Approach */
SELECT p.name, p.phone, b.title
	FROM PUBLISHER p JOIN BOOKS b USING(PubId);

/* using WHERE clause */
SELECT p.name, p.phone, b.title
	FROM PUBLISHER p, BOOKS b
	WHERE p.PubID = b.PubId;
		