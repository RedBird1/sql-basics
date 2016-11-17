/* IT 378 Project Phase 2 */

/* Create Table Commands */

/* Create the CUSTOMERS1 data table */
CREATE TABLE CUSTOMERS1
(
	CustNo NUMBER(10),
	FirstName VARCHAR2(25),
	LastName VARCHAR2(25),
	Address VARCHAR2(100),
	City VARCHAR2(45),
	addrState VARCHAR2(2),
	Zip VARCHAR2(5),
	Phone VARCHAR2(14),
		CONSTRAINT CUSTOMERS1_CustNo_pk PRIMARY KEY(CustNo),
		CONSTRAINT CUSTOMERS1_AddrState_leng CHECK(length(AddrAddrState) = 2)
);

/* Create the VEHICLES1 data table */
CREATE TABLE VEHICLES1
(
	SerialNo VARCHAR2(10),
	CustNo NUMBER(10) NOT NULL,
	Year NUMBER(4, 0),
	Model VARCHAR2(25),
	LicenseNo VARCHAR2(6),
	AddrState VARCHAR2(2),
	Cylinder NUMBER(1, 0),
	Make VARCHAR2(20),
		CONSTRAINT VEHICLES1_SerialNo_pk PRIMARY KEY (SerialNo),
		CONSTRAINT CUSTOMERS1_CustNo_fk FOREIGN KEY (CustNo)
			REFERENCES CUSTOMERS1(CustNo)
);

/* Create the REPAIRORDERS1 data table */
CREATE TABLE REPAIRORDERS1
(
	OrdNo VARCHAR2(10),
	SerialNo VARCHAR2(10),
	Odometer VARCHAR2(10),
	repOrdDate DATE DEFAULT SYSDATE,
		CONSTRAINT REPAIRORDERS1_OrdNo_pk PRIMARY KEY (OrdNo),
		CONSTRAINT VEHICLES1_SerialNo_fk FOREIGN KEY (SerialNo)
			REFERENCES VEHICLES1 (SerialNo)
);

/* Create the PARTSUSED data table */
CREATE TABLE PARTSUSED1
(
	OrdNo VARCHAR2(10),
	PartNo VARCHAR2(10),
	QtyUsed VARCHAR2(3),
		CONSTRAINT PARTSUSED1_PartNo_fk FOREIGN KEY (PartNo)
			REFERENCES PARTS1 (PartNo),
		CONSTRAINT REPAIRORDERS1_OrdNo_fk FOREIGN KEY (OrdNo)
			REFERENCES REPAIRORDERS1 (OrdNo)
);

/* Create the Part data table*/
CREATE TABLE PARTS1
(
	PartNo VARCHAR2(10),
	PartDesc VARCHAR2(40),
	UnitsInStock VARCHAR2(12),
	UnitPrice NUMBER(15, 2),
	UnitSize VARCHAR2(10),
		CONSTRAINT PART1_PartNo PRIMARY KEY (PartNo)
);

/* INSERT Commands */

/* Insert data into CUSTOMERS1 Table */
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (1,'Beth','Taylor','2396 Rafter Rd','Seattle','WA',98103,'(206) 221-9021');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (2,'Betty','Wise','4334 153rd NW','Seattle','WA',98178,'(206) 445-6982');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (3,'Bob','Mann','1190 Lorraine Cir.','Monroe','WA',98013,'(206) 326-1234');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (4,'Candy','Kendall','456 Pine St.','Seattle','WA',98105,'(206) 523-1112');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (5,'Harry','Sanders','1280 S. Hill Rd.','Fife','WA',98523,'(360) 444-0092');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (6,'Helen','Sibley','206 McCaffrey','Renton','WA',98006,'(206) 624-0362');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (7,'Homer','Wells','123 Main St.','Seattle','WA',98105,'(206) 524-1461');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (8,'Jerry','Wyatt','16212 123rd Ct.','Seattle','WA',98266,'(206) 524-8145');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (9,'Jim','Glussman','1432 E. Revenna','Seattle','WA',98266,'(206) 445-2139');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (10,'Larry','Styles','9825 S. Crest Lane','Bellevue','WA',98104,'(425) 745-9980');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (11,'Mike','Boren','642 Crest Ave.','Fife','WA',98523,'(360) 444-5678');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (12,'Ron','Thompson','789 122nd St.','Renton','WA',98666,'(360) 747-2222');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (13,'Sharon','Johnson','1223 Meyer Way','Fife','WA',98222,'(360) 333-6666');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (14,'Sheri','Gordon','336 Hill St.','Seattle','WA',98103,'(206) 525-3344');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (15,'Todd','Hayes','1400 NW 88th','Lynnwood','WA',98036,'(206) 775-7689');
INSERT INTO CUSTOMERS1(CustNo,FirstName,LastName,Address,City,AddrState,Zip,Phone) 
	VALUES (16,'Wally','Jones','411 Webber Ave.','Seattle','WA',98105,'(206) 523-9957');
	
/* Insert Data into VEHICLES1 Table */
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('AZXS230I87',2001,'Ford','Skylark','145UKI','WA',4,10);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('BHGY08631Q',1998,'Chevrolet','Blazer','567WER','WA',8,7);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('GHL39789UI',1993,'Honda','Del Sol','123XYZ','WA',4,13);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('IOMEQ54397',2000,'Buick','Regal','367ASZ','WA',8,2);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('JHMCCF673Q',1992,'Honda','Civic Si','367ABC','WA',4,8);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('JHMEC3348H',1985,'Buick','Corolla','345XYZ','WA',6,5);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('JKLP7IIIJF',2001,'Ford','Impala','902PLO','WA',8,2);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('LPQW76200I',2000,'Honda','Accord','123ABC','MT',4,7);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('MNMJ7H6098',1999,'Lincoln','Towne Car','234ABC','WA',8,12);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('MVMN8974PP',1998,'Honda','Civic DX','567TUV','WA',4,9);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('PLJFVC5609',1997,'Toyota','Landcruiser','876GYK','WA',4,16);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('POIU980PLL',2001,'Chevrolet','Cavalier','675THE','OR',4,3);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('POOL98T90P',1998,'Ford','Escort','678RST','WA',4,11);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('QWER9LK982',1999,'Pontiac','FireHawk','669GVI','WA',8,1);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('QWSA870976',2000,'Chevrolet','Cavalier','116UYT','WA',4,14);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('SWQW345RT6',1999,'BMW','320i','789GHI','CA',6,4);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('TGVYY76R43',1995,'Honda','Civic','980QAW','WA',4,15);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('THYDF55639',2000,'Ford','F-100','980QEW','WA',8,5);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('TYYYI87590',2002,'Toyota','Celica','890YUI','ID',6,6);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('V121BHD481',1999,'Toyota','Pick-up','190PGF','WA',6,9);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('VHJK009L88',1997,'Ford','Taurus','456MNO','WA',4,13);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('WWQAA452P0',1996,'Buick','Regal','123DEF','WA',8,10);
INSERT INTO VEHICLES1(SerialNo,Year,Make,Model,LicenseNo,AddrState,Cylinder,CustNo) 
	VALUES ('XCVY760PIQ',2000,'Toyota','Celica','477HSD','WA',4,8);
	
	
/* Insert data into PARTS1 Table */
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (1,'10W-40 oil',145,'1.00','quart');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (2,'oil filter',14,'2.00','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (3,'Antifreeze',10,'3.95','quart');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (4,'Spark Plugs',45,'0.99','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (5,'Transmission Fluid',15,'1.50','quart');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (6,'10W-30 oil',95,'0.95','quart');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (7,'Brake Lining',25,'5.00','quart');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (8,'Shock',75,'6.00','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (9,'Muffler',10,'15.00','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (10,'Tail Pipe',85,'4.00','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (11,'Head Gasket',32,'9.00','dozen');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (12,'Timing Chain',6,'22.50','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (13,'Battery',13,'55.00','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (14,'Radiator',3,'60.00','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (15,'Radiator Hose',24,'3.00','dozen');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (16,'Rotor',4,'16.00','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (17,'Tire',36,'46.00','item');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (18,'Headlight',6,'5.00','case');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (19,'Tail Light',7,'3.00','dozen');
INSERT INTO PARTS1(PartNo,PartDesc,UnitsInStock,UnitPrice,UnitSize) 
	VALUES (20,'Gearbox',2,'25.00','item');
	
/* Insert data into REPAIRORDERS1 */
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (1,50000,TO_DATE('10/5/2005','MM-DD-YYYY' ),'AZXS230I87');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (2,30000,TO_DATE('10/5/2005','MM-DD-YYYY' ),'IOMEQ54397');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (3,6000,TO_DATE('10/7/2005','MM-DD-YYYY' ),'JKLP7IIIJF');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (4,75000,TO_DATE('10/8/2005','MM-DD-YYYY' ),'AZXS230I87');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (5,15000,TO_DATE('10/10/2005','MM-DD-YYYY' ),'TYYYI87590');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (6,55000,TO_DATE('10/10/2005','MM-DD-YYYY' ),'BHGY08631Q');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (7,25500,TO_DATE('10/11/2005','MM-DD-YYYY' ),'V121BHD481');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (8,125000,TO_DATE('10/12/2005','MM-DD-YYYY' ),'PLJFVC5609');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (9,60800,TO_DATE('10/15/2005','MM-DD-YYYY' ),'XCVY760PIQ');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (10,11000,TO_DATE('10/16/2005','MM-DD-YYYY' ),'THYDF55639');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (11,55060,TO_DATE('10/18/2005','MM-DD-YYYY' ),'MNMJ7H6098');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (12,25600,TO_DATE('10/20/2005','MM-DD-YYYY' ),'THYDF55639');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (13,56000,TO_DATE('10/20/2005','MM-DD-YYYY' ),'QWER9LK982');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (14,22000,TO_DATE('10/22/2005','MM-DD-YYYY' ),'QWER9LK982');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (15,14800,TO_DATE('10/25/2005','MM-DD-YYYY' ),'JKLP7IIIJF');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (16,46000,TO_DATE('10/25/2005','MM-DD-YYYY' ),'THYDF55639');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (17,71500,TO_DATE('10/30/2005','MM-DD-YYYY' ),'MNMJ7H6098');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (18,15800,TO_DATE('11/1/2005','MM-DD-YYYY' ),'MVMN8974PP');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (19,28525,TO_DATE('11/2/2005','MM-DD-YYYY' ),'POIU980PLL');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (20,32560,TO_DATE('11/2/2005','MM-DD-YYYY' ),'QWSA870976');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (21,72700,TO_DATE('11/5/2005','MM-DD-YYYY' ),'IOMEQ54397');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (22,18900,TO_DATE('11/8/2005','MM-DD-YYYY' ),'POOL98T90P');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (23,46590,TO_DATE('11/8/2005','MM-DD-YYYY' ),'SWQW345RT6');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (24,34800,TO_DATE('11/12/2005','MM-DD-YYYY' ),'TGVYY76R43');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (25,61800,TO_DATE('11/15/2005','MM-DD-YYYY' ),'JHMEC3348H');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (26,55000,TO_DATE('11/20/2005','MM-DD-YYYY' ),'V121BHD481');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (27,30800,TO_DATE('11/22/2005','MM-DD-YYYY' ),'WWQAA452P0');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (28,17600,TO_DATE('11/22/2005','MM-DD-YYYY' ),'XCVY760PIQ');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (29,20600,TO_DATE('11/25/2005','MM-DD-YYYY' ),'AZXS230I87');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (30,22590,TO_DATE('11/27/2005','MM-DD-YYYY' ),'BHGY08631Q');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (31,23000,TO_DATE('2/3/2006','MM-DD-YYYY' ),'BHGY08631Q');
INSERT INTO REPAIRORDERS1(OrdNo,Odometer,reporddate,SerialNo) 
	VALUES (32,15000,TO_DATE('12/1/2005','MM-DD-YYYY' ),'BHGY08631Q');


/* Insert data into PARTSUSED1 */
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (1,2,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (1,3,4);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (2,3,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (2,4,5);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (3,2,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (3,3,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (3,4,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (3,20,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (5,5,5);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (5,6,5);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (5,8,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (5,14,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (5,16,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (6,7,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (6,8,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (7,1,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (8,1,4);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (8,2,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (8,3,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (8,4,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (9,9,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (9,10,4);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (10,4,4);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (11,3,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (11,4,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (12,1,4);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (12,7,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (13,7,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (13,8,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (14,3,6);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (14,6,4);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (14,14,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (15,4,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (15,20,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (16,9,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (16,14,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (17,7,4);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (17,13,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (18,1,5);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (18,4,6);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (19,8,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (20,5,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (20,7,4);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (21,15,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (21,16,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (21,17,3);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (21,18,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (22,1,5);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (22,2,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (23,4,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (23,16,3);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (23,20,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (24,3,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (25,10,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (25,13,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (26,14,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (27,4,6);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (27,7,4);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (28,19,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (29,4,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (29,9,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (30,2,1);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (30,3,2);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (30,6,6);
INSERT INTO PARTSUSED1(OrdNo,PartNo,QtyUsed) 
	VALUES (32,8,2);