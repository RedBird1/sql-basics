/* IT 378 Practice problem 8 */

/* Insert the new record in the ORDER table */
INSERT INTO ORDERS (ORDER#, CUSTOMER#, ORDERDATE)
	VALUES (1021, 1009, '20-JUL-09');
	
/* Modify the zip code in order 1017 to 33222 */
UPDATE ORDERS 
SET SHIPZIP=33222
	WHERE ORDER# = 1017;
	
/* Commit and save changes permanently to the database */
COMMIT;
SAVEPOINT firstSave;

	
/* Insert new record in the ORDER table */
INSERT INTO ORDERS (ORDER#, CUSTOMER#, ORDERDATE)
	VALUES (1022, 2000, '6-AUG-09');

/* Save before deleting the record */	
SAVEPOINT beforeDelete;

/* Delete record with Order# 1005 */	
DELETE FROM ORDERS 
	WHERE ORDER# = 1005;

/* Revert to before the delete */	
ROLLBACK beforeDelete;

/* ADVANCED CHALLENGE */

/* Create the CATEGORY table */
CREATE TABLE CATEGORY
(
CATCODE VARCHAR2(3),
CATDESC VARCHAR2(11) NOT NULL,
	CONSTRAINT catcodeleng check (length(CATCODE) = 3),
	CONSTRAINT catdescleng check (length(CATDESC) = 11),
	CONSTRAINT CATEGORY_CATCODE_pk PRIMARY KEY (CATCODE)
);

/* Populate the CATEGORY table */
INSERT INTO CATEGORY(CATCODE, CATDESC) 
	VALUES('BUS', 'BUSINESS');
INSERT INTO CATEGORY(CATCODE, CATDESC)
	VALUES ('CHN','CHILDREN');
INSERT INTO CATEGORY(CATCODE, CATDESC) 
	VALUES ('BUS', 'BUSINESS');
INSERT INTO CATEGORY(CATCODE, CATDESC) 
	VALUES('COK','COOKING');
INSERT INTO CATEGORY(CATCODE, CATDESC) 
	VALUES('COM','COMPUTER');
INSERT INTO CATEGORY(CATCODE, CATDESC) 
	VALUES('FAL','FAMILY LIFE');
INSERT INTO CATEGORY(CATCODE, CATDESC) 
	VALUES('FIT','FITNESS');
INSERT INTO CATEGORY(CATCODE, CATDESC) 
	VALUES('SEH','SELF HELP');
INSERT INTO CATEGORY(CATCODE, CATDESC) 
	VALUES('LET','LITERATURE');

/* Save population */
COMMIT;

ALTER TABLE BOOKS
	ADD CATCODE VARCHAR2(3),
	CONSTRAINT catecodeleng check(length(CATCODE) = 3)),
	CONSTRAINT BOOKS_CATCODE_fk FOREIGN KEY(CATCODE) 
		REFERENCES CATEGORY(CATCODE);

UPDATE BOOKS(CATEGORY)
	SET CATCODE=(SELECT CATCODE FROM TABLE CATEGORY WHERE CATDESC = CATEGORY); 
	

		
ALTER TABLE BOOKS
	DROP COLUMN CATCODE;
	
	
	
	

