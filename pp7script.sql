/*Create EMPLOYEES Table*/
CREATE TABLE EMPLOYEES
(
Emp#  NUMBER(5, 0) NOT NULL,
LastName VARCHAR2(40) NOT NULL,
FirstName VARCHAR2(40) NOT NULL,
Job_class VARCHAR2(2) NOT NULL,
EmpDate DATE default sysdate,
EndDate DATE
);

/* Truncate to verify structure */
TRUNCATE TABLE EMPLOYEES;

/* Delete the EMPLOYEES table */
DROP TABLE EMPLOYEES;

/* Recover the EMPLOYEES table */
FLASHBACK TABLE EMPLOYEES
	TO BEFORE DROP;
	
/* Permanently delete EMPLOYEES table */
DROP TABLE EMPLOYEES PURGE;


/* ADVANCED CHALLENGE */
/* Add two new columns to ACCTMANAGER table */
ALTER TABLE ACCTMANAGER
	ADD (Comm_id NUMBER(2, 0) NOT NULL default 10,
	Ben_id NUMBER(2,0));

/* Create STORE_REPS table */
CREATE TABLE STORE_REPS
(
rep_ID NUMBER(5) PRIMARY KEY,
last VARCHAR2(15),
first VARCHAR2(10),
comm CHAR(1) default 'Y'
);	
	
/* Alter STORE_REPS table */
ALTER TABLE STORE_REPS
	MODIFY (first NOT NULL) 
	MODIFY (last NOT NULL);

/* Add column base salary */
ALTER TABLE STORE_REPS
	ADD (base_Salary NUMBER(7,2),
	CONSTRAINT greaterZero CHECK (base_Salary > 0));
	
/* ADVANCED CHALLENGE */
/* Create PROJECT table */
CREATE TABLE PROJECT
(
Proj# NUMBER(5, 0),
p_name VARCHAR2(15) NOT NULL,
P_desc VARCHAR2(15) NOT NULL,
p_budget NUMBER(9, 2) NOT NULL,
	CONSTRAINT PROJECT_Proj#_pk PRIMARY KEY (Proj#),
	CONSTRAINT PROJECT_p_name_unique UNIQUE(p_name)
);

/* Create WORK_ORDERS table */
CREATE TABLE WORK_ORDERS
(
Wo# NUMBER(5,0),
Proj# NUMBER(5,0) NOT NULL,
Wo_desc VARCHAR2(20) NOT NULL,
Wo_assigned VARCHAR2(20),
Wo_hours NUMBER(5,0) NOT NULL,
Wo_start DATE,
Wo_due DATE,
Wo_complete VARCHAR2(1),
	CONSTRAINT WORK_ORDERS_Wo#_pk PRIMARY KEY (Wo#),
	CONSTRAINT WORK_ORDERS_Proj#_fk FOREIGN KEY (Proj#)
		REFERENCES PROJECT(Proj#),
	CONSTRAINT WORK_ORDERS_Wo_desc_unique UNIQUE (Wo_desc),
	CONSTRAINT WORK_ORDERS_Wo_hours_check CHECK (Wo_hours > 0),
	CONSTRAINT WORK_ORDERS_Wo_completed_check CHECK (Wo_complete IN ('y','n'))
);






	
	
