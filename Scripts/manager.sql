-- manager.sql
DROP TABLE MANAGER CASCADE CONSTRAINTS;

CREATE TABLE MANAGER (
    manager_id NUMBER(10) PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(150) NOT NULL UNIQUE,
    password VARCHAR2(255) NOT NULL,
    branch_id NUMBER(10) NOT NULL UNIQUE,
    CONSTRAINT fk_manager_branch
        FOREIGN KEY (branch_id)
        REFERENCES BRANCH(branch_id)
        ON DELETE CASCADE,
    CONSTRAINT chk_manager_email CHECK (email LIKE '%@%.%')
);

INSERT INTO MANAGER VALUES (1, 'Sarah Thompson', 'sarah.thompson@restaurant.com', 'Manager123!', 1);
INSERT INTO MANAGER VALUES (2, 'Michael Chen', 'michael.chen@restaurant.com', 'MgrPass456!', 2);
INSERT INTO MANAGER VALUES (3, 'Jennifer Lopez', 'jennifer.lopez@restaurant.com', 'J3nn!ferM', 3);
INSERT INTO MANAGER VALUES (4, 'Robert Martinez', 'robert.martinez@restaurant.com', 'R0b3rtMgr!', 4);
INSERT INTO MANAGER VALUES (5, 'Lisa Anderson', 'lisa.anderson@restaurant.com', 'L!saM@nager', 5);
INSERT INTO MANAGER VALUES (6, 'David Kim', 'david.kim@restaurant.com', 'D@v!dK!m24', 6);
INSERT INTO MANAGER VALUES (7, 'Maria Garcia', 'maria.garcia@restaurant.com', 'Mar!aGar!a', 7);
INSERT INTO MANAGER VALUES (8, 'James Wilson', 'james.wilson@restaurant.com', 'J@mesW!ls0n', 8);
INSERT INTO MANAGER VALUES (9, 'Patricia Brown', 'patricia.brown@restaurant.com', 'Patr!c!aBr', 9);
INSERT INTO MANAGER VALUES (10, 'John Davis', 'john.davis@restaurant.com', 'J0hnD@v!s24', 10);
INSERT INTO MANAGER VALUES (11, 'Linda Miller', 'linda.miller@restaurant.com', 'L!nd@M!ller', 11);
INSERT INTO MANAGER VALUES (12, 'William Taylor', 'william.taylor@restaurant.com', 'W!ll!@mT@y', 12);
INSERT INTO MANAGER VALUES (13, 'Barbara Moore', 'barbara.moore@restaurant.com', 'B@rb@r@Mo0', 13);
INSERT INTO MANAGER VALUES (14, 'Richard Jackson', 'richard.jackson@restaurant.com', 'R!ch@rdJ@ck', 14);
INSERT INTO MANAGER VALUES (15, 'Susan White', 'susan.white@restaurant.com', 'Sus@nWh!te', 15);
INSERT INTO MANAGER VALUES (16, 'Joseph Harris', 'joseph.harris@restaurant.com', 'J0s3phH@rr', 16);
INSERT INTO MANAGER VALUES (17, 'Jessica Martin', 'jessica.martin@restaurant.com', 'J3ss!c@M@rt', 17);
INSERT INTO MANAGER VALUES (18, 'Thomas Thompson', 'thomas.thompson@restaurant.com', 'Th0m@sTh0m', 18);
INSERT INTO MANAGER VALUES (19, 'Karen Garcia', 'karen.garcia@restaurant.com', 'K@r3nG@rc!', 19);
INSERT INTO MANAGER VALUES (20, 'Charles Martinez', 'charles.martinez@restaurant.com', 'Ch@rl3sM@r', 20);
INSERT INTO MANAGER VALUES (21, 'Nancy Robinson', 'nancy.robinson@restaurant.com', 'N@ncyR0b!n', 21);
INSERT INTO MANAGER VALUES (22, 'Daniel Clark', 'daniel.clark@restaurant.com', 'D@n!3lCl@r', 22);
INSERT INTO MANAGER VALUES (23, 'Betty Rodriguez', 'betty.rodriguez@restaurant.com', 'B3ttyR0dr!', 23);
INSERT INTO MANAGER VALUES (24, 'Matthew Lewis', 'matthew.lewis@restaurant.com', 'M@tth3wL3w', 24);
INSERT INTO MANAGER VALUES (25, 'Dorothy Lee', 'dorothy.lee@restaurant.com', 'D0r0thyL33', 25);
INSERT INTO MANAGER VALUES (26, 'Donald Walker', 'donald.walker@restaurant.com', 'D0n@ldW@lk', 26);
INSERT INTO MANAGER VALUES (27, 'Sandra Hall', 'sandra.hall@restaurant.com', 'S@ndr@H@ll', 27);
INSERT INTO MANAGER VALUES (28, 'Anthony Allen', 'anthony.allen@restaurant.com', 'Anth0nyAll', 28);
INSERT INTO MANAGER VALUES (29, 'Ashley Young', 'ashley.young@restaurant.com', 'Ashl3yY0un', 29);
INSERT INTO MANAGER VALUES (30, 'Mark Hernandez', 'mark.hernandez@restaurant.com', 'M@rkH3rn@n', 30);
INSERT INTO MANAGER VALUES (31, 'Kimberly King', 'kimberly.king@restaurant.com', 'K!mb3rlyK!', 31);
INSERT INTO MANAGER VALUES (32, 'Steven Wright', 'steven.wright@restaurant.com', 'St3v3nWr!g', 32);
INSERT INTO MANAGER VALUES (33, 'Donna Lopez', 'donna.lopez@restaurant.com', 'D0nn@L0p3z', 33);
INSERT INTO MANAGER VALUES (34, 'Paul Hill', 'paul.hill@restaurant.com', 'P@ulH!ll24', 34);
INSERT INTO MANAGER VALUES (35, 'Carol Scott', 'carol.scott@restaurant.com', 'C@r0lSc0tt', 35);
INSERT INTO MANAGER VALUES (36, 'Joshua Green', 'joshua.green@restaurant.com', 'J0shu@Gr33', 36);
INSERT INTO MANAGER VALUES (37, 'Michelle Adams', 'michelle.adams@restaurant.com', 'M!ch3ll3Ad', 37);
INSERT INTO MANAGER VALUES (38, 'Kevin Baker', 'kevin.baker@restaurant.com', 'K3v!nB@k3r', 38);
INSERT INTO MANAGER VALUES (39, 'Emily Nelson', 'emily.nelson@restaurant.com', 'Em!lyN3ls0', 39);
INSERT INTO MANAGER VALUES (40, 'Andrew Carter', 'andrew.carter@restaurant.com', 'Andr3wC@rt', 40);
INSERT INTO MANAGER VALUES (41, 'Melissa Mitchell', 'melissa.mitchell@restaurant.com', 'M3l!ss@M!t', 41);
INSERT INTO MANAGER VALUES (42, 'Brian Perez', 'brian.perez@restaurant.com', 'Br!@nP3r3z', 42);
INSERT INTO MANAGER VALUES (43, 'Deborah Roberts', 'deborah.roberts@restaurant.com', 'D3b0r@hR0b', 43);
INSERT INTO MANAGER VALUES (44, 'George Turner', 'george.turner@restaurant.com', 'G30rg3Turn', 44);
INSERT INTO MANAGER VALUES (45, 'Stephanie Phillips', 'stephanie.phillips@restaurant.com', 'St3ph@n!eP', 45);
INSERT INTO MANAGER VALUES (46, 'Edward Campbell', 'edward.campbell@restaurant.com', 'Edw@rdC@mp', 46);
INSERT INTO MANAGER VALUES (47, 'Rebecca Parker', 'rebecca.parker@restaurant.com', 'R3b3cc@P@r', 47);
INSERT INTO MANAGER VALUES (48, 'Jason Evans', 'jason.evans@restaurant.com', 'J@s0nEv@ns', 48);
INSERT INTO MANAGER VALUES (49, 'Laura Edwards', 'laura.edwards@restaurant.com', 'L@ur@Edw@r', 49);
INSERT INTO MANAGER VALUES (50, 'Ryan Collins', 'ryan.collins@restaurant.com', 'Ry@nC0ll!n', 50);

COMMIT;
