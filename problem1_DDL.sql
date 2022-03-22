CREATE TABLE EMPLOYEE (
	SSN VARCHAR(20) NOT NULL,
    FNAME VARCHAR(255) NOT NULL,
    LNAME VARCHAR(255) NOT NULL,
    BDATE DATE NOT NULL,
    ADDRESS VARCHAR(2048),
    GENDER ENUM('M','F'), 
    SALARY FLOAT(24),
    DNO SMALLINT NOT NULL,
    
    PRIMARY KEY (SSN)
);

CREATE TABLE DEPARTMENT (
	DNUMBER SMALLINT NOT NULL,
    DNAME VARCHAR(255) NOT NULL,    
    MGR_SSN VARCHAR(20) NOT NULL,
    MGR_START_DATE DATE,
    
    FOREIGN KEY (MGR_SSN) REFERENCES EMPLOYEE(SSN),
    PRIMARY KEY (DNUMBER)
);

CREATE TABLE PROJECT (
	PNUMBER SMALLINT NOT NULL,
    PNAME VARCHAR(255) NOT NULL,
    PLOCATION VARCHAR(2048) NOT NULL,
    DNO SMALLINT NOT NULL,
    
    FOREIGN KEY (DNO) REFERENCES DEPARTMENT (DNUMBER),
    PRIMARY KEY (PNUMBER)
);

ALTER TABLE EMPLOYEE ADD FOREIGN KEY (DNO) REFERENCES DEPARTMENT (DNUMBER);
