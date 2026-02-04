-- customer.sql
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;

CREATE TABLE CUSTOMER (
    customer_id NUMBER(10) PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(150) NOT NULL UNIQUE,
    password VARCHAR2(255) NOT NULL,
    phone_no VARCHAR2(15) NOT NULL,
    CONSTRAINT chk_customer_email CHECK (email LIKE '%@%.%')
);

INSERT INTO CUSTOMER VALUES (1, 'John Smith', 'john.smith@email.com', 'Pass123!', '555-0101');
INSERT INTO CUSTOMER VALUES (2, 'Emma Johnson', 'emma.j@gmail.com', 'SecurePass456', '555-0102');
INSERT INTO CUSTOMER VALUES (3, 'Michael Brown', 'mbrown@yahoo.com', 'MyP@ssw0rd', '555-0103');
INSERT INTO CUSTOMER VALUES (4, 'Sophia Davis', 'sophia.davis@outlook.com', 'Sophie2024!', '555-0104');
INSERT INTO CUSTOMER VALUES (5, 'William Wilson', 'w.wilson@hotmail.com', 'Will!am123', '555-0105');
INSERT INTO CUSTOMER VALUES (6, 'Olivia Martinez', 'olivia.m@email.com', 'Olive2024', '555-0106');
INSERT INTO CUSTOMER VALUES (7, 'James Anderson', 'james.a@gmail.com', 'JamesP@ss', '555-0107');
INSERT INTO CUSTOMER VALUES (8, 'Ava Taylor', 'ava.taylor@yahoo.com', 'AvaTay123!', '555-0108');
INSERT INTO CUSTOMER VALUES (9, 'Robert Thomas', 'robert.t@outlook.com', 'RobPass456', '555-0109');
INSERT INTO CUSTOMER VALUES (10, 'Isabella Garcia', 'isabella.g@email.com', 'Bella!2024', '555-0110');
INSERT INTO CUSTOMER VALUES (11, 'David Martinez', 'david.m123@gmail.com', 'David@Pass', '555-0111');
INSERT INTO CUSTOMER VALUES (12, 'Mia Rodriguez', 'mia.rodriguez@yahoo.com', 'MiaR0dr!g', '555-0112');
INSERT INTO CUSTOMER VALUES (13, 'Joseph Lee', 'joseph.lee@hotmail.com', 'JoeL33!', '555-0113');
INSERT INTO CUSTOMER VALUES (14, 'Charlotte Walker', 'charlotte.w@email.com', 'Char!0tte', '555-0114');
INSERT INTO CUSTOMER VALUES (15, 'Daniel Hall', 'daniel.hall@gmail.com', 'DanH@ll24', '555-0115');
INSERT INTO CUSTOMER VALUES (16, 'Amelia Allen', 'amelia.allen@outlook.com', 'Amel!a123', '555-0116');
INSERT INTO CUSTOMER VALUES (17, 'Matthew Young', 'matt.young@yahoo.com', 'M@ttY0ung', '555-0117');
INSERT INTO CUSTOMER VALUES (18, 'Harper King', 'harper.king@email.com', 'HarpK!ng24', '555-0118');
INSERT INTO CUSTOMER VALUES (19, 'Christopher Wright', 'chris.wright@gmail.com', 'Chr!sW123', '555-0119');
INSERT INTO CUSTOMER VALUES (20, 'Evelyn Lopez', 'evelyn.lopez@hotmail.com', 'EveLop3z!', '555-0120');
INSERT INTO CUSTOMER VALUES (21, 'Andrew Hill', 'andrew.hill@email.com', 'AndrewH!24', '555-0121');
INSERT INTO CUSTOMER VALUES (22, 'Abigail Scott', 'abigail.s@gmail.com', 'Ab!Sc0tt', '555-0122');
INSERT INTO CUSTOMER VALUES (23, 'Joshua Green', 'joshua.green@yahoo.com', 'JoshGr33n!', '555-0123');
INSERT INTO CUSTOMER VALUES (24, 'Emily Adams', 'emily.adams@outlook.com', 'Em!lyAd24', '555-0124');
INSERT INTO CUSTOMER VALUES (25, 'Ryan Baker', 'ryan.baker@email.com', 'RyanB@ker', '555-0125');
INSERT INTO CUSTOMER VALUES (26, 'Elizabeth Nelson', 'liz.nelson@gmail.com', 'L!zNels0n', '555-0126');
INSERT INTO CUSTOMER VALUES (27, 'Nathan Carter', 'nathan.c@hotmail.com', 'Nat3Cart!', '555-0127');
INSERT INTO CUSTOMER VALUES (28, 'Sofia Mitchell', 'sofia.mitchell@yahoo.com', 'Sof!aM!tch', '555-0128');
INSERT INTO CUSTOMER VALUES (29, 'Alexander Perez', 'alex.perez@email.com', 'Al3xP3r3z!', '555-0129');
INSERT INTO CUSTOMER VALUES (30, 'Avery Roberts', 'avery.roberts@gmail.com', 'Av3ry!Rob', '555-0130');
INSERT INTO CUSTOMER VALUES (31, 'Ethan Turner', 'ethan.turner@outlook.com', 'Eth@nTurn', '555-0131');
INSERT INTO CUSTOMER VALUES (32, 'Ella Phillips', 'ella.phillips@yahoo.com', 'Ell@Ph!ll', '555-0132');
INSERT INTO CUSTOMER VALUES (33, 'Benjamin Campbell', 'ben.campbell@email.com', 'B3nC@mp24', '555-0133');
INSERT INTO CUSTOMER VALUES (34, 'Scarlett Parker', 'scarlett.p@gmail.com', 'Sc@rl3ttP', '555-0134');
INSERT INTO CUSTOMER VALUES (35, 'Logan Evans', 'logan.evans@hotmail.com', 'Log@nEv@n', '555-0135');
INSERT INTO CUSTOMER VALUES (36, 'Grace Edwards', 'grace.edwards@email.com', 'Gr@c3Edw', '555-0136');
INSERT INTO CUSTOMER VALUES (37, 'Jacob Collins', 'jacob.collins@yahoo.com', 'J@c0bColl', '555-0137');
INSERT INTO CUSTOMER VALUES (38, 'Chloe Stewart', 'chloe.stewart@gmail.com', 'Chl03St3w!', '555-0138');
INSERT INTO CUSTOMER VALUES (39, 'Samuel Sanchez', 'sam.sanchez@outlook.com', 'S@mS@nch3z', '555-0139');
INSERT INTO CUSTOMER VALUES (40, 'Victoria Morris', 'victoria.m@email.com', 'V!ct0r!aM', '555-0140');
INSERT INTO CUSTOMER VALUES (41, 'Henry Rogers', 'henry.rogers@gmail.com', 'H3nryR0g!', '555-0141');
INSERT INTO CUSTOMER VALUES (42, 'Zoey Reed', 'zoey.reed@hotmail.com', 'Z03yR33d!', '555-0142');
INSERT INTO CUSTOMER VALUES (43, 'Sebastian Cook', 'sebastian.cook@yahoo.com', 'S3b@st!an', '555-0143');
INSERT INTO CUSTOMER VALUES (44, 'Lily Morgan', 'lily.morgan@email.com', 'L!lyM0rg@n', '555-0144');
INSERT INTO CUSTOMER VALUES (45, 'Owen Bell', 'owen.bell@gmail.com', 'Ow3nB3ll!', '555-0145');
INSERT INTO CUSTOMER VALUES (46, 'Hannah Murphy', 'hannah.murphy@outlook.com', 'H@nn@hMur', '555-0146');
INSERT INTO CUSTOMER VALUES (47, 'Luke Bailey', 'luke.bailey@yahoo.com', 'Luk3B@!l3y', '555-0147');
INSERT INTO CUSTOMER VALUES (48, 'Addison Rivera', 'addison.r@email.com', 'Add!s0nR!v', '555-0148');
INSERT INTO CUSTOMER VALUES (49, 'Gabriel Cooper', 'gabriel.cooper@gmail.com', 'G@br!3lC0', '555-0149');
INSERT INTO CUSTOMER VALUES (50, 'Natalie Richardson', 'natalie.rich@hotmail.com', 'N@t@l!eR!ch', '555-0150');

COMMIT;
