/* COMP508 PAIRED ASSIGNMENT */ 
/* Mohammed Ismail (1804017) and Letisia Pangata’a (15897475)*/ 

/* 1. EMPLOYEES TABLE */ 
/* LIST OF EMPLOYEES */ 

CREATE TABLE EMPLOYEES (
EMPLOYEE_ID NUMBER(10) NOT NULL PRIMARY KEY,
FIRST_NAME VARCHAR(255) NOT NULL,
LAST_NAME VARCHAR(255) NOT NULL,
PHONE_NUMBER NUMBER(15),
EMAIL_ADDRESS VARCHAR(60),
STREET_ADDRESS VARCHAR(255),
SUBURB VARCHAR(255),
CITY VARCHAR(60),
POST_CODE NUMBER(8),
COUNTRY VARCHAR(50)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO EMPLOYEES(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS, STREET_ADDRESS, SUBURB, CITY, POST_CODE, COUNTRY)
VALUES ('0000000001', 'Sarah', 'Lin', '64092758021', 'sarahlin95@gmail.com', '48th Freeland Avenue', 'Mount Roskill', 'Central Auckland', '1041', 'New Zealand');

INSERT INTO EMPLOYEES(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS, STREET_ADDRESS, SUBURB, CITY, POST_CODE, COUNTRY)
VALUES ('0000000002', 'Jeremy', 'Hagan', '64225318764', 'jeremy_hagan@outlook.com', '501/30 Beach Road', 'City Centre', 'Auckland City', '1010', 'New Zealand');

INSERT INTO EMPLOYEES(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS, STREET_ADDRESS, SUBURB, CITY, POST_CODE, COUNTRY)
VALUES ('0000000003', 'May', 'Ma', '6421021600', 'may_ma@gmail.com', '147 Nelson Street', 'City Centre', 'Auckland City', '1010', 'New Zealand');

INSERT INTO EMPLOYEES(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS, STREET_ADDRESS, SUBURB, CITY, POST_CODE, COUNTRY)
VALUES ('0000000004', 'Rory', 'Hunt', '64219665093', 'rory_hunt_personal@outlook.com', '27/2 Larch Street', 'Avondale', 'Auckland', '0600', 'New Zealand');

INSERT INTO EMPLOYEES(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL_ADDRESS, STREET_ADDRESS, SUBURB, CITY, POST_CODE, COUNTRY)
VALUES ('0000000005', 'Linda', 'Wells', '64225819043', 'lindawells2000@gmail.com', '32 Wiremu Street', 'Mount Eden', 'Central Auckland', '1041', 'New Zealand');


/* 2. ADMINS TABLE */ 
/* LIST OF ADMINS */ 

CREATE TABLE ADMINS (
ADMIN_EMPLOYEE_ID NUMBER(10) NOT NULL,
CONSTRAINT ADMIN_EMPLOYEE_ID FOREIGN KEY (ADMIN_EMPLOYEE_ID)
REFERENCES EMPLOYEES(EMPLOYEE_ID)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO ADMINS(ADMIN_EMPLOYEE_ID)
VALUES ('0000000001');

INSERT INTO ADMINS(ADMIN_EMPLOYEE_ID)
VALUES ('0000000002');

INSERT INTO ADMINS(ADMIN_EMPLOYEE_ID)
VALUES ('0000000003');

INSERT INTO ADMINS(ADMIN_EMPLOYEE_ID)
VALUES ('0000000004');

INSERT INTO ADMINS(ADMIN_EMPLOYEE_ID)
VALUES ('0000000005');


/* 3. PHOTO SESSION DATABASE TABLE */ 
/* PHOTO SESSION DATABASE */ 

CREATE TABLE PHOTO_SESSION_DATABASE (
PHOTO_SESSION_DATABASE_ID NUMBER(10) NOT NULL PRIMARY KEY,
START_TIME TIMESTAMP(9),
END_TIME TIMESTAMP(9),
SESSION_DATE DATE,
POSTAL_CHARGE NUMBER(10),
COUNTRY VARCHAR(50)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO PHOTO_SESSION_DATABASE(PHOTO_SESSION_DATABASE_ID, START_TIME, END_TIME, SESSION_DATE, POSTAL_CHARGE, COUNTRY)
VALUES ('0000000001',  TO_DATE('2022-01-05 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-01-05 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-01-05', 'YYYY-MM-DD'), '5.00', 'New Zealand');

INSERT INTO PHOTO_SESSION_DATABASE(PHOTO_SESSION_DATABASE_ID, START_TIME, END_TIME, SESSION_DATE, POSTAL_CHARGE, COUNTRY)
VALUES ('0000000002',  TO_DATE('2022-03-28 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-03-28 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-03-28', 'YYYY-MM-DD'), '8.50', 'New Zealand');

INSERT INTO PHOTO_SESSION_DATABASE(PHOTO_SESSION_DATABASE_ID, START_TIME, END_TIME, SESSION_DATE, POSTAL_CHARGE, COUNTRY)
VALUES ('0000000003',  TO_DATE('2022-05-09 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-05-09 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-05-09', 'YYYY-MM-DD'), '5.10', 'New Zealand');

INSERT INTO PHOTO_SESSION_DATABASE(PHOTO_SESSION_DATABASE_ID, START_TIME, END_TIME, SESSION_DATE, POSTAL_CHARGE, COUNTRY)
VALUES ('0000000004',  TO_DATE('2022-07-11 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-07-11 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-07-11', 'YYYY-MM-DD'), '15.80', 'New Zealand');

INSERT INTO PHOTO_SESSION_DATABASE(PHOTO_SESSION_DATABASE_ID, START_TIME, END_TIME, SESSION_DATE, POSTAL_CHARGE, COUNTRY)
VALUES ('0000000005',  TO_DATE('2022-09-21 05:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-09-21 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2022-09-21', 'YYYY-MM-DD'), '9.00', 'New Zealand');


/* 4. PHOTO SESSIONS TABLE */ 
/* LIST OF PHOTO SESSIONS */ 

CREATE TABLE PHOTO_SESSIONS (
PHOTO_SESSION_ID NUMBER(10) NOT NULL PRIMARY KEY,
AVAILABLE_DATE DATE,
SESSION_TIME TIMESTAMP(9),
PRICE NUMBER(10),
FK_EMPLOYEE_ID NUMBER(10),
CONSTRAINT FK_EMPLOYEE_ID FOREIGN KEY (FK_EMPLOYEE_ID)
REFERENCES EMPLOYEES(EMPLOYEE_ID),
FK_CUSTOMER_ID NUMBER(10),
CONSTRAINT FK_CUSTOMER_ID FOREIGN KEY (FK_CUSTOMER_ID)
REFERENCES CUSTOMERS(CUSTOMER_ID),
FK_PHOTO_SESSION_DATABASE_ID NUMBER(10),
CONSTRAINT FK_PHOTO_SESSION_DATABASE_ID FOREIGN KEY(FK_PHOTO_SESSION_DATABASE_ID)
REFERENCES PHOTO_SESSION_DATABASE(PHOTO_SESSION_DATABASE_ID)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO PHOTO_SESSIONS(PHOTO_SESSION_ID, AVAILABLE_DATE, SESSION_TIME, PRICE, FK_EMPLOYEE_ID, FK_CUSTOMER_ID, FK_PHOTO_SESSION_DATABASE_ID)
VALUES ('0000000010',  TO_DATE('2023-07-18 05:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH24:MI:SS'), '2050', '0000000001', '0000000001', '0000000001');

INSERT INTO PHOTO_SESSIONS(PHOTO_SESSION_ID, AVAILABLE_DATE, SESSION_TIME, PRICE, FK_EMPLOYEE_ID, FK_CUSTOMER_ID, FK_PHOTO_SESSION_DATABASE_ID)
VALUES ('0000000011',  TO_DATE('2023-10-09 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023/10/09 13:00:00', 'YYYY/MM/DD HH24:MI:SS'), '6050', '0000000001', '0000000002', '0000000002');

INSERT INTO PHOTO_SESSIONS(PHOTO_SESSION_ID, AVAILABLE_DATE, SESSION_TIME, PRICE, FK_EMPLOYEE_ID, FK_CUSTOMER_ID, FK_PHOTO_SESSION_DATABASE_ID)
VALUES ('0000000012',  TO_DATE('2023-12-20 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023/12/20 15:00:00', 'YYYY/MM/DD HH24:MI:SS'), '7050', '0000000002', '0000000003', '0000000003');

INSERT INTO PHOTO_SESSIONS(PHOTO_SESSION_ID, AVAILABLE_DATE, SESSION_TIME, PRICE, FK_EMPLOYEE_ID, FK_CUSTOMER_ID, FK_PHOTO_SESSION_DATABASE_ID)
VALUES ('0000000013',  TO_DATE('2024-03-11 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024/03/11 16:00:00', 'YYYY/MM/DD HH24:MI:SS'), '3050', '0000000003', '0000000004', '0000000004');

INSERT INTO PHOTO_SESSIONS(PHOTO_SESSION_ID, AVAILABLE_DATE, SESSION_TIME, PRICE, FK_EMPLOYEE_ID, FK_CUSTOMER_ID, FK_PHOTO_SESSION_DATABASE_ID)
VALUES ('0000000014',  TO_DATE('2024-06-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024/06/05 16:00:00', 'YYYY/MM/DD HH24:MI:SS'), '8050', '0000000003', '0000000005', '0000000005');


/* 5. CUSTOMERS TABLE */ 
/* LIST OF CUSTOMERS */ 

CREATE TABLE CUSTOMERS (
CUSTOMER_ID NUMBER(10) NOT NULL PRIMARY KEY,
ACCOUNT_NO NUMBER(6),
FIRST_NAME VARCHAR(255),
LAST_NAME VARCHAR(255),
PHONE_NO NUMBER(15),
EMAIL_ADDRESS VARCHAR2(60),
PAYMENT_DETAILS VARCHAR(100),
STREET_ADDRESS VARCHAR2(255),
FK_PHOTO_CS_SESSION_ID NUMBER(10),
CONSTRAINT FK_PHOTO_CS_SESSION_ID FOREIGN KEY (FK_PHOTO_CS_SESSION_ID)
REFERENCES PHOTO_SESSIONS(PHOTO_SESSION_ID),
FK_CS_ORGANISATION_ID NUMBER(10),
CONSTRAINT FK_CS_ORGANISATION_ID FOREIGN KEY (FK_CS_ORGANISATION_ID)
REFERENCES ORGANIZATION(ORGANIZATION_ID),
FK_CS_INDIVIDUAL_ID NUMBER(10),
CONSTRAINT FK_CS_INDIVIDUAL_ID FOREIGN KEY (FK_CS_INDIVIDUAL_ID)
REFERENCES INDIVIDUAL(INDIVIDUAL_ID)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO CUSTOMERS(CUSTOMER_ID, ACCOUNT_NO, FIRST_NAME, LAST_NAME, PHONE_NO, EMAIL_ADDRESS, PAYMENT_DETAILS, STREET_ADDRESS, FK_PHOTO_CS_SESSION_ID, FK_CS_ORGANISATION_ID, FK_CS_INDIVIDUAL_ID)
VALUES ('0000000001', '0000000001', 'SARAH', 'LIN', '64226521982', 'SARAH_LIN19@GMAIL.COM', 'PAID BY PAYPAL', '14 ATIU PLACE, FAVONA, AUCKLAND 2024', '0000000010', '0000000001', '0000000001');

INSERT INTO CUSTOMERS(CUSTOMER_ID, ACCOUNT_NO, FIRST_NAME, LAST_NAME, PHONE_NO, EMAIL_ADDRESS, PAYMENT_DETAILS, STREET_ADDRESS, FK_PHOTO_CS_SESSION_ID, FK_CS_ORGANISATION_ID, FK_CS_INDIVIDUAL_ID)
VALUES ('0000000002', '0000000002', 'MARIA', 'RODRIGUEZ', '6421021982', 'MARIA_MARIA@OUTLOOK.COM', 'PAID BY EFTPOS', '7-5 Lee Street, Parnell, Auckland 1052', '0000000011', '0000000002', '0000000002');

INSERT INTO CUSTOMERS(CUSTOMER_ID, ACCOUNT_NO, FIRST_NAME, LAST_NAME, PHONE_NO, EMAIL_ADDRESS, PAYMENT_DETAILS, STREET_ADDRESS, FK_PHOTO_CS_SESSION_ID, FK_CS_ORGANISATION_ID, FK_CS_INDIVIDUAL_ID)
VALUES ('0000000003', '0000000003', 'KENNY', 'HOGAN', '6422092876', 'KENNY_H@PLUMBING_BY_KENNY.CO.NZ', 'PAID BY EFTPOS', '17A Glenfell Place, Epsom, Auckland 1023', '0000000012', '0000000003', '0000000003');

INSERT INTO CUSTOMERS(CUSTOMER_ID, ACCOUNT_NO, FIRST_NAME, LAST_NAME, PHONE_NO, EMAIL_ADDRESS, PAYMENT_DETAILS, STREET_ADDRESS, FK_PHOTO_CS_SESSION_ID, FK_CS_ORGANISATION_ID, FK_CS_INDIVIDUAL_ID)
VALUES ('0000000004', '0000000004', 'LISA', 'KENTIGAN', '6421002129', 'LISAKENTIGAN@ANZ.CO.NZ', 'PAID BY EFTPOS', '20A Kipling Avenue, Epsom, Auckland 1023', '0000000013', '0000000004', '0000000004');

INSERT INTO CUSTOMERS(CUSTOMER_ID, ACCOUNT_NO, FIRST_NAME, LAST_NAME, PHONE_NO, EMAIL_ADDRESS, PAYMENT_DETAILS, STREET_ADDRESS, FK_PHOTO_CS_SESSION_ID, FK_CS_ORGANISATION_ID, FK_CS_INDIVIDUAL_ID)
VALUES ('0000000005', '0000000005', 'JOE', 'DIGGINS', '6422283291', 'DIGGINSBYJOE@OUTLOOK.COM', 'PAID BY EFTPOS', '37 Inkerman Street, Onehunga, Auckland 1061', '0000000014', '0000000005', '0000000005');


/* 6. LOCATION PHOTOGRAPHY SESSION TABLE */ 
/* SPECIFIED LOCATION PHOTOGRAPHY SESSIONS */ 

CREATE TABLE LOCATION_PHOTOGRAPHY_SESSION (
FK_LOCATION_ID NUMBER(10),
CONSTRAINT FK_LOCATION_ID FOREIGN KEY (FK_LOCATION_ID)
REFERENCES LOCATIONS(LOCATION_ID),
FK_PHOTO_SESSION_ID NUMBER(10),
CONSTRAINT FK_PHOTO_SESSION_ID FOREIGN KEY (FK_PHOTO_SESSION_ID)
REFERENCES PHOTO_SESSIONS(PHOTO_SESSION_ID)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO LOCATION_PHOTOGRAPHY_SESSION(FK_LOCATION_ID, FK_PHOTO_SESSION_ID)
VALUES ('0000000001',  '0000000010');

INSERT INTO LOCATION_PHOTOGRAPHY_SESSION(FK_LOCATION_ID, FK_PHOTO_SESSION_ID)
VALUES ('0000000002',  '0000000011');

INSERT INTO LOCATION_PHOTOGRAPHY_SESSION(FK_LOCATION_ID, FK_PHOTO_SESSION_ID)
VALUES ('0000000003',  '0000000012');

INSERT INTO LOCATION_PHOTOGRAPHY_SESSION(FK_LOCATION_ID, FK_PHOTO_SESSION_ID)
VALUES ('0000000004',  '0000000013');

INSERT INTO LOCATION_PHOTOGRAPHY_SESSION(FK_LOCATION_ID, FK_PHOTO_SESSION_ID)
VALUES ('0000000005',  '0000000014');


/* 7. LOCATIONS TABLE */ 
/* LIST OF LOCATION INFORMATION, TIMES AND COST */ 

CREATE TABLE LOCATIONS (
LOCATION_ID NUMBER(10) NOT NULL PRIMARY KEY,
LOCATION_PRICE NUMBER(10),
LOCATION_TIME TIMESTAMP(9),
LOCATION_ADDRESS VARCHAR(50)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO LOCATIONS(LOCATION_ID, LOCATION_PRICE, LOCATION_TIME, LOCATION_ADDRESS)
VALUES ('0000000001',  '5000', TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH24:MI:SS'), '670 Manukau Road, One Tree Hill, Auckland 1051');

INSERT INTO LOCATIONS(LOCATION_ID, LOCATION_PRICE, LOCATION_TIME, LOCATION_ADDRESS)
VALUES ('0000000002',  '8000', TO_TIMESTAMP('2023/10/09 13:00:00', 'YYYY/MM/DD HH24:MI:SS'), '171 Halsey Street, Auckland CBD, Auckland 1010');

INSERT INTO LOCATIONS(LOCATION_ID, LOCATION_PRICE, LOCATION_TIME, LOCATION_ADDRESS)
VALUES ('0000000003',  '3000', TO_TIMESTAMP('2023/12/20 15:00:00', 'YYYY/MM/DD HH24:MI:SS'), '16 Gore Street, Auckland CBD, Auckland 1010');

INSERT INTO LOCATIONS(LOCATION_ID, LOCATION_PRICE, LOCATION_TIME, LOCATION_ADDRESS)
VALUES ('0000000004',  '1000', TO_TIMESTAMP('2024/03/11 16:00:00', 'YYYY/MM/DD HH24:MI:SS'), '33-43 Princes Street, Auckland CBD, Auckland 1010');

INSERT INTO LOCATIONS(LOCATION_ID, LOCATION_PRICE, LOCATION_TIME, LOCATION_ADDRESS)
VALUES ('0000000005',  '10000', TO_TIMESTAMP('2024/06/05 16:00:00', 'YYYY/MM/DD HH24:MI:SS'), '110 Jack Lachlan Drive, Beachlands 2571');


/* 8. INDIVIDUAL TABLE */ 
/* REFERENTIAL ACCESS TO AN INDIVIDUAL CUSTOMER */ 

CREATE TABLE INDIVIDUAL (
INDIVIDUAL_ID NUMBER(10) NOT NULL PRIMARY KEY,
CONSTRAINT INDIVIDUAL_ID FOREIGN KEY (INDIVIDUAL_ID)
REFERENCES CUSTOMERS(CUSTOMER_ID)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO INDIVIDUAL(INDIVIDUAL_ID)
VALUES ('0000000001');

INSERT INTO INDIVIDUAL(INDIVIDUAL_ID)
VALUES ('0000000002');

INSERT INTO INDIVIDUAL(INDIVIDUAL_ID)
VALUES ('0000000003');

INSERT INTO INDIVIDUAL(INDIVIDUAL_ID)
VALUES ('0000000004');

INSERT INTO INDIVIDUAL(INDIVIDUAL_ID)
VALUES ('0000000005');


/* 9. ORGANIZATION TABLE */ 
/* REFERENTIAL ACCESS TO ORGANIZATION INFORMATION VIA CUSTOMER. */ 

CREATE TABLE ORGANIZATION (
ORGANIZATION_ID NUMBER(5) NOT NULL PRIMARY KEY,
ORGANIZATION_NAME VARCHAR(50),
ORGANIZATION_ADDRESS VARCHAR(50)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO ORGANIZATION(ORGANIZATION_ID, ORGANIZATION_NAME, ORGANIZATION_ADDRESS)
VALUES ('0000000001', 'LINDA WEDDING SERVICES LTD', '57 Richard Farrell Avenue, Remuera, Auckland 1050');

INSERT INTO ORGANIZATION(ORGANIZATION_ID, ORGANIZATION_NAME, ORGANIZATION_ADDRESS)
VALUES ('0000000002', 'MICROSOFT CORPORATION LTD', '5/22 Viaduct Harbour Avenue, Auckland 1010');

INSERT INTO ORGANIZATION(ORGANIZATION_ID, ORGANIZATION_NAME, ORGANIZATION_ADDRESS)
VALUES ('0000000003', 'ANZ BANK CORPORATION LTD', '205 Queen Street, Auckland CBD, Auckland 1010');

INSERT INTO ORGANIZATION(ORGANIZATION_ID, ORGANIZATION_NAME, ORGANIZATION_ADDRESS)
VALUES ('0000000004', 'JOE PLUMBING SERVICES LTD', '5/1 Porters Avenue, Eden Terrace, Auckland 1024');

INSERT INTO ORGANIZATION(ORGANIZATION_ID, ORGANIZATION_NAME, ORGANIZATION_ADDRESS)
VALUES ('0000000005', 'SELF-EMPLOYED FREELANCER', '32 Dryden Street, Grey Lynn, Auckland 1021');


/* 10. PHOTOGRAPHS TABLE */ 
/* LIST OF PHOTOGRAPHS details */ 

CREATE TABLE PHOTOGRAPHS (
PHOTO_ID NUMBER(10) NOT NULL PRIMARY KEY,
THUMBNAIL VARCHAR(255),
COLOUR VARCHAR(30),
FINISH_TYPE VARCHAR(30),
QUANTITY NUMBER(10),
PRICE NUMBER(10),
PHOTO_SIZE NUMBER(10),
SOURCE VARCHAR(255),
FK_DATABASE_PHOTO_SESSION_ID NUMBER(10),
CONSTRAINT FK_DATABASE_PHOTO_SESSION_ID FOREIGN KEY (FK_DATABASE_PHOTO_SESSION_ID)
REFERENCES PHOTO_SESSION_DATABASE(PHOTO_SESSION_DATABASE_ID)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO PHOTOGRAPHS(PHOTO_ID, THUMBNAIL, COLOUR, FINISH_TYPE, QUANTITY, PRICE, PHOTO_SIZE, SOURCE, FK_DATABASE_PHOTO_SESSION_ID)
VALUES ('0000000001',  'PHOTO1.PNG', 'YES', 'GLOSS', '20', '900', '80', 'GOOGLE DRIVE', '0000000001');

INSERT INTO PHOTOGRAPHS(PHOTO_ID, THUMBNAIL, COLOUR, FINISH_TYPE, QUANTITY, PRICE, PHOTO_SIZE, SOURCE, FK_DATABASE_PHOTO_SESSION_ID)
VALUES ('0000000002',  'PHOTO2.PNG', 'YES', 'GLOSS', '90', '4210', '90', 'GOOGLE DRIVE', '0000000002');

INSERT INTO PHOTOGRAPHS(PHOTO_ID, THUMBNAIL, COLOUR, FINISH_TYPE, QUANTITY, PRICE, PHOTO_SIZE, SOURCE, FK_DATABASE_PHOTO_SESSION_ID)
VALUES ('0000000003',  'PHOTO3.PNG', 'YES', 'GLOSS', '80', '4000', '120', 'GOOGLE DRIVE', '0000000003');

INSERT INTO PHOTOGRAPHS(PHOTO_ID, THUMBNAIL, COLOUR, FINISH_TYPE, QUANTITY, PRICE, PHOTO_SIZE, SOURCE, FK_DATABASE_PHOTO_SESSION_ID)
VALUES ('0000000004',  'PHOTO4.PNG', 'YES', 'MATTE', '10', '200', '50', 'GOOGLE DRIVE', '0000000004');

INSERT INTO PHOTOGRAPHS(PHOTO_ID, THUMBNAIL, COLOUR, FINISH_TYPE, QUANTITY, PRICE, PHOTO_SIZE, SOURCE, FK_DATABASE_PHOTO_SESSION_ID)
VALUES ('0000000005',  'PHOTO5.PNG', 'YES', 'MATTE', '5', '100', '50', 'GOOGLE DRIVE', '0000000005');

/* 11. PHOTOGRAPH_EXTRACTED_PHOTO TABLE */ 
/* EXTRACTED PHOTOGRAPH INFORMATION */ 

CREATE TABLE PHOTOGRAPH_EXTRACTED_PHOTO (
FK_PHOTO_EXTRACTED_PHOTO_ID NUMBER(30),
CONSTRAINT FK_PHOTO_EXTRACTED_PHOTO_ID FOREIGN KEY (FK_PHOTO_EXTRACTED_PHOTO_ID)
REFERENCES PHOTOGRAPHS(PHOTO_ID),
FK_PHOTO_EXTRACTED_ID NUMBER(10),
CONSTRAINT FK_PHOTO_EXTRACTED_ID FOREIGN KEY (FK_PHOTO_EXTRACTED_ID)
REFERENCES EXTRACTED_PHOTO(EXTRACTED_PHOTO_ID)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO PHOTOGRAPH_EXTRACTED_PHOTO(FK_PHOTO_EXTRACTED_PHOTO_ID, FK_PHOTO_EXTRACTED_ID)
VALUES ('0000000001', '0000000001');

INSERT INTO PHOTOGRAPH_EXTRACTED_PHOTO(FK_PHOTO_EXTRACTED_PHOTO_ID, FK_PHOTO_EXTRACTED_ID)
VALUES ('0000000002',  '0000000002');

INSERT INTO PHOTOGRAPH_EXTRACTED_PHOTO(FK_PHOTO_EXTRACTED_PHOTO_ID, FK_PHOTO_EXTRACTED_ID)
VALUES ('0000000003',  '0000000003');

INSERT INTO PHOTOGRAPH_EXTRACTED_PHOTO(FK_PHOTO_EXTRACTED_PHOTO_ID, FK_PHOTO_EXTRACTED_ID)
VALUES ('0000000004',  '0000000004');

INSERT INTO PHOTOGRAPH_EXTRACTED_PHOTO(FK_PHOTO_EXTRACTED_PHOTO_ID, FK_PHOTO_EXTRACTED_ID)
VALUES ('0000000005',  '0000000005');

/* 12. EXTRACTED PHOTO TABLE */ 
/* DETAILED EXTRACT PHOTO INFORMATION */ 

CREATE TABLE EXTRACTED_PHOTO (
EXTRACTED_PHOTO_ID NUMBER(10) NOT NULL PRIMARY KEY
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO EXTRACTED_PHOTO(EXTRACTED_PHOTO_ID)
VALUES ('0000000001');

INSERT INTO EXTRACTED_PHOTO(EXTRACTED_PHOTO_ID)
VALUES ('0000000002');

INSERT INTO EXTRACTED_PHOTO(EXTRACTED_PHOTO_ID)
VALUES ('0000000003');

INSERT INTO EXTRACTED_PHOTO(EXTRACTED_PHOTO_ID)
VALUES ('0000000004');

INSERT INTO EXTRACTED_PHOTO(EXTRACTED_PHOTO_ID)
VALUES ('0000000005');


/* 13. PICKUP TABLE */ 
/* PICKUP DETAILS */

CREATE TABLE PICKUP (
PICKUP_ORDER_ID NUMBER(10),
CONSTRAINT PICKUP_ORDER_ID FOREIGN KEY (PICKUP_ORDER_ID)
REFERENCES CUSTOMERS_ORDER(CUSTOMER_ORDER_ID)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO PICKUP(PICKUP_ORDER_ID)
VALUES ('0000000001');

INSERT INTO PICKUP(PICKUP_ORDER_ID)
VALUES ('0000000002');

INSERT INTO PICKUP(PICKUP_ORDER_ID)
VALUES ('0000000003');

INSERT INTO PICKUP(PICKUP_ORDER_ID)
VALUES ('0000000004');

INSERT INTO PICKUP(PICKUP_ORDER_ID)
VALUES ('0000000005');

/* 14. CUSTOMER'S ORDER TABLE */ 
/* DETAILS OF CUSTOMER ORDERS */ 

CREATE TABLE CUSTOMERS_ORDER (
CUSTOMER_ORDER_ID NUMBER(10) NOT NULL PRIMARY KEY,
TOTAL_ORDER_PRICE NUMBER(10),
ITEM_DESC VARCHAR(255),
COST_OF_PRINTS NUMBER(10),
FK_DELIVERY_ORDER_ID NUMBER(10),
CONSTRAINT FK_DELIVERY_ORDER_ID FOREIGN KEY (FK_DELIVERY_ORDER_ID)
REFERENCES DELIVERY(ORDER_ID),
FK_CO_CUSTOMER_ID NUMBER(10),
CONSTRAINT FK_CO_CUSTOMER_ID FOREIGN KEY (FK_CO_CUSTOMER_ID)
REFERENCES CUSTOMER(CUSTOMER_ID)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO CUSTOMERS_ORDER(CUSTOMER_ORDER_ID, TOTAL_ORDER_PRICE, ITEM_DESC, COST_OF_PRINTS, FK_DELIVERY_ORDER_ID, FK_CO_CUSTOMER_ID)
VALUES ('0000000001', '2500', 'PORTRAIT', '200', '0000000001', '0000000001');

INSERT INTO CUSTOMERS_ORDER(CUSTOMER_ORDER_ID, TOTAL_ORDER_PRICE, ITEM_DESC, COST_OF_PRINTS, FK_DELIVERY_ORDER_ID, FK_CO_CUSTOMER_ID)
VALUES ('0000000002', '500', 'TWO SHOT', '200', '0000000002', '0000000002');

INSERT INTO CUSTOMERS_ORDER(CUSTOMER_ORDER_ID, TOTAL_ORDER_PRICE, ITEM_DESC, COST_OF_PRINTS, FK_DELIVERY_ORDER_ID, FK_CO_CUSTOMER_ID)
VALUES ('0000000003', '350', 'COUPLES SHOT', '500', '0000000003', '0000000003');

INSERT INTO CUSTOMERS_ORDER(CUSTOMER_ORDER_ID, TOTAL_ORDER_PRICE, ITEM_DESC, COST_OF_PRINTS, FK_DELIVERY_ORDER_ID, FK_CO_CUSTOMER_ID)
VALUES ('0000000004', '500', 'GROUP SHOT', '200', '0000000004', '0000000004');

INSERT INTO CUSTOMERS_ORDER(CUSTOMER_ORDER_ID, TOTAL_ORDER_PRICE, ITEM_DESC, COST_OF_PRINTS, FK_DELIVERY_ORDER_ID, FK_CO_CUSTOMER_ID)
VALUES ('0000000005', '200', 'PORTRAIT', '300', '0000000005', '0000000005');

/* 15. DELIVERY TABLE */
/* LIST OF DELIVERY INFORMATION */

CREATE TABLE DELIVERY (
ORDER_ID NUMBER(10) NOT NULL PRIMARY KEY,
COUNTRY VARCHAR(50),
CITY VARCHAR(50),
SUBURB VARCHAR(50),
STREET VARCHAR(255),
POST_CODE NUMBER(10),
DELIVERY_START_DATE DATE,
DELIVERY_END_DATE DATE,
POSTAL_CHARGE NUMBER(10)
);

/* INSERT DATA SQL SCRIPT */ 

INSERT INTO DELIVERY(ORDER_ID, COUNTRY, CITY, SUBURB, STREET, POST_CODE, DELIVERY_START_DATE, DELIVERY_END_DATE, POSTAL_CHARGE)
VALUES ('0000000001', 'NEW ZEALAND', 'AUCKLAND', 'GREY LYNN', '32 Dryden Street', '2024', TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), '11.50');

INSERT INTO DELIVERY(ORDER_ID, COUNTRY, CITY, SUBURB, STREET, POST_CODE, DELIVERY_START_DATE, DELIVERY_END_DATE, POSTAL_CHARGE)
VALUES ('0000000002', 'NEW ZEALAND', 'AUCKLAND', 'ONEHUNGA', '37 Inkerman Street', '1061', TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), '15.50');

INSERT INTO DELIVERY(ORDER_ID, COUNTRY, CITY, SUBURB, STREET, POST_CODE, DELIVERY_START_DATE, DELIVERY_END_DATE, POSTAL_CHARGE)
VALUES ('0000000003', 'NEW ZEALAND', 'AUCKLAND', 'AUCKLAND CBD', '205 Queen Street', '1010', TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), '5.50');

INSERT INTO DELIVERY(ORDER_ID, COUNTRY, CITY, SUBURB, STREET, POST_CODE, DELIVERY_START_DATE, DELIVERY_END_DATE, POSTAL_CHARGE)
VALUES ('0000000004', 'NEW ZEALAND', 'AUCKLAND', 'EDEN TERRACE', '5/1 Porters Avenue', '1024', TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), '5.50');

INSERT INTO DELIVERY(ORDER_ID, COUNTRY, CITY, SUBURB, STREET, POST_CODE, DELIVERY_START_DATE, DELIVERY_END_DATE, POSTAL_CHARGE)
VALUES ('0000000005', 'NEW ZEALAND', 'AUCKLAND', 'REMUERA', '57 Richard Farrell Avenue', '1050', TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), TO_TIMESTAMP('2023/07/18 10:00:00', 'YYYY/MM/DD HH:MI:SS'), '11.50');
