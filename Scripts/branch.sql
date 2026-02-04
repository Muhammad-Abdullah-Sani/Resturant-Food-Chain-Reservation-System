-- branch.sql
DROP TABLE BRANCH CASCADE CONSTRAINTS;

CREATE TABLE BRANCH (
    branch_id NUMBER(10) PRIMARY KEY,
    branch_name VARCHAR2(100) NOT NULL,
    location VARCHAR2(200) NOT NULL,
    contact VARCHAR2(15) NOT NULL
);

INSERT INTO BRANCH VALUES (1, 'Downtown Plaza', '123 Main Street, New York, NY 10001', '212-555-0101');
INSERT INTO BRANCH VALUES (2, 'Westside Garden', '456 West Avenue, Los Angeles, CA 90001', '213-555-0102');
INSERT INTO BRANCH VALUES (3, 'Eastside Bistro', '789 East Boulevard, Chicago, IL 60601', '312-555-0103');
INSERT INTO BRANCH VALUES (4, 'Northpoint Diner', '321 North Road, Houston, TX 77001', '713-555-0104');
INSERT INTO BRANCH VALUES (5, 'Southgate Grill', '654 South Street, Phoenix, AZ 85001', '602-555-0105');
INSERT INTO BRANCH VALUES (6, 'Riverside Restaurant', '987 River Drive, Philadelphia, PA 19101', '215-555-0106');
INSERT INTO BRANCH VALUES (7, 'Lakeside Cafe', '147 Lake View, San Antonio, TX 78201', '210-555-0107');
INSERT INTO BRANCH VALUES (8, 'Mountain View', '258 Hill Street, San Diego, CA 92101', '619-555-0108');
INSERT INTO BRANCH VALUES (9, 'Ocean Breeze', '369 Beach Road, Dallas, TX 75201', '214-555-0109');
INSERT INTO BRANCH VALUES (10, 'Forest Inn', '741 Woods Lane, San Jose, CA 95101', '408-555-0110');
INSERT INTO BRANCH VALUES (11, 'City Center', '852 Urban Plaza, Austin, TX 78701', '512-555-0111');
INSERT INTO BRANCH VALUES (12, 'Park Avenue', '963 Park Drive, Jacksonville, FL 32099', '904-555-0112');
INSERT INTO BRANCH VALUES (13, 'Harbor View', '159 Port Street, Fort Worth, TX 76101', '817-555-0113');
INSERT INTO BRANCH VALUES (14, 'Garden District', '267 Flora Road, Columbus, OH 43085', '614-555-0114');
INSERT INTO BRANCH VALUES (15, 'Sunset Boulevard', '378 Sunset Ave, Charlotte, NC 28201', '704-555-0115');
INSERT INTO BRANCH VALUES (16, 'Maple Street', '489 Maple Lane, San Francisco, CA 94101', '415-555-0116');
INSERT INTO BRANCH VALUES (17, 'Oak Plaza', '591 Oak Avenue, Indianapolis, IN 46201', '317-555-0117');
INSERT INTO BRANCH VALUES (18, 'Pine Grove', '612 Pine Street, Seattle, WA 98101', '206-555-0118');
INSERT INTO BRANCH VALUES (19, 'Cedar Heights', '723 Cedar Road, Denver, CO 80201', '303-555-0119');
INSERT INTO BRANCH VALUES (20, 'Willow Creek', '834 Willow Way, Washington, DC 20001', '202-555-0120');
INSERT INTO BRANCH VALUES (21, 'Birch Corner', '945 Birch Boulevard, Boston, MA 02101', '617-555-0121');
INSERT INTO BRANCH VALUES (22, 'Elm Street Eatery', '156 Elm Avenue, Nashville, TN 37201', '615-555-0122');
INSERT INTO BRANCH VALUES (23, 'Cherry Blossom', '267 Cherry Lane, El Paso, TX 79901', '915-555-0123');
INSERT INTO BRANCH VALUES (24, 'Magnolia Garden', '378 Magnolia Drive, Detroit, MI 48201', '313-555-0124');
INSERT INTO BRANCH VALUES (25, 'Rosewood Diner', '489 Rosewood Street, Memphis, TN 38101', '901-555-0125');
INSERT INTO BRANCH VALUES (26, 'Palmetto Grill', '591 Palm Avenue, Portland, OR 97201', '503-555-0126');
INSERT INTO BRANCH VALUES (27, 'Cypress Cafe', '612 Cypress Road, Oklahoma City, OK 73101', '405-555-0127');
INSERT INTO BRANCH VALUES (28, 'Redwood Restaurant', '723 Redwood Way, Las Vegas, NV 89101', '702-555-0128');
INSERT INTO BRANCH VALUES (29, 'Hickory House', '834 Hickory Lane, Louisville, KY 40201', '502-555-0129');
INSERT INTO BRANCH VALUES (30, 'Aspen Bistro', '945 Aspen Street, Baltimore, MD 21201', '410-555-0130');
INSERT INTO BRANCH VALUES (31, 'Spruce Kitchen', '156 Spruce Avenue, Milwaukee, WI 53201', '414-555-0131');
INSERT INTO BRANCH VALUES (32, 'Poplar Place', '267 Poplar Boulevard, Albuquerque, NM 87101', '505-555-0132');
INSERT INTO BRANCH VALUES (33, 'Sycamore Square', '378 Sycamore Drive, Tucson, AZ 85701', '520-555-0133');
INSERT INTO BRANCH VALUES (34, 'Juniper Junction', '489 Juniper Road, Fresno, CA 93701', '559-555-0134');
INSERT INTO BRANCH VALUES (35, 'Ash Avenue', '591 Ash Street, Sacramento, CA 95814', '916-555-0135');
INSERT INTO BRANCH VALUES (36, 'Walnut Way', '612 Walnut Avenue, Long Beach, CA 90801', '562-555-0136');
INSERT INTO BRANCH VALUES (37, 'Pecan Plaza', '723 Pecan Lane, Kansas City, MO 64101', '816-555-0137');
INSERT INTO BRANCH VALUES (38, 'Chestnut Corner', '834 Chestnut Street, Mesa, AZ 85201', '480-555-0138');
INSERT INTO BRANCH VALUES (39, 'Beech Boulevard', '945 Beech Road, Virginia Beach, VA 23450', '757-555-0139');
INSERT INTO BRANCH VALUES (40, 'Hawthorn Heights', '156 Hawthorn Way, Atlanta, GA 30301', '404-555-0140');
INSERT INTO BRANCH VALUES (41, 'Laurel Lane', '267 Laurel Drive, Colorado Springs, CO 80901', '719-555-0141');
INSERT INTO BRANCH VALUES (42, 'Acacia Avenue', '378 Acacia Boulevard, Raleigh, NC 27601', '919-555-0142');
INSERT INTO BRANCH VALUES (43, 'Cottonwood Cafe', '489 Cottonwood Street, Omaha, NE 68101', '402-555-0143');
INSERT INTO BRANCH VALUES (44, 'Dogwood Diner', '591 Dogwood Avenue, Miami, FL 33101', '305-555-0144');
INSERT INTO BRANCH VALUES (45, 'Ironwood Inn', '612 Ironwood Lane, Oakland, CA 94601', '510-555-0145');
INSERT INTO BRANCH VALUES (46, 'Basswood Bistro', '723 Basswood Road, Minneapolis, MN 55401', '612-555-0146');
INSERT INTO BRANCH VALUES (47, 'Linden Lounge', '834 Linden Way, Tulsa, OK 74101', '918-555-0147');
INSERT INTO BRANCH VALUES (48, 'Alder Alley', '945 Alder Street, Cleveland, OH 44101', '216-555-0148');
INSERT INTO BRANCH VALUES (49, 'Buckeye Bar', '156 Buckeye Avenue, Wichita, KS 67201', '316-555-0149');
INSERT INTO BRANCH VALUES (50, 'Sequoia Station', '267 Sequoia Boulevard, Arlington, TX 76010', '817-555-0150');

COMMIT;
