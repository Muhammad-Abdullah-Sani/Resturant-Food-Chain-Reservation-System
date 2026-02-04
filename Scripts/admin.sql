-- admin.sql
DROP TABLE ADMIN CASCADE CONSTRAINTS;

CREATE TABLE ADMIN (
    admin_id NUMBER(10) PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(150) NOT NULL UNIQUE,
    password VARCHAR2(255) NOT NULL,
    CONSTRAINT chk_admin_email CHECK (email LIKE '%@%.%')
);

INSERT INTO ADMIN VALUES (1, 'Alice Johnson', 'alice.johnson@admin.com', 'Admin123!Secure');
INSERT INTO ADMIN VALUES (2, 'Bob Williams', 'bob.williams@admin.com', 'B0bAdm!n2024');
INSERT INTO ADMIN VALUES (3, 'Carol Davis', 'carol.davis@admin.com', 'C@r0lAdm!nP@ss');
INSERT INTO ADMIN VALUES (4, 'David Miller', 'david.miller@admin.com', 'D@v!dM!ll3rAdmin');
INSERT INTO ADMIN VALUES (5, 'Eve Wilson', 'eve.wilson@admin.com', 'Ev3W!ls0nAdm!n');
INSERT INTO ADMIN VALUES (6, 'Frank Moore', 'frank.moore@admin.com', 'Fr@nkM00r3Admin');
INSERT INTO ADMIN VALUES (7, 'Grace Taylor', 'grace.taylor@admin.com', 'Gr@c3T@yl0rAdm');
INSERT INTO ADMIN VALUES (8, 'Henry Anderson', 'henry.anderson@admin.com', 'H3nryAnd3rs0n!');
INSERT INTO ADMIN VALUES (9, 'Irene Thomas', 'irene.thomas@admin.com', 'Ir3n3Th0m@sAdm');
INSERT INTO ADMIN VALUES (10, 'Jack Jackson', 'jack.jackson@admin.com', 'J@ckJ@cks0n!Adm');
INSERT INTO ADMIN VALUES (11, 'Kelly White', 'kelly.white@admin.com', 'K3llyWh!t3Admin');
INSERT INTO ADMIN VALUES (12, 'Larry Harris', 'larry.harris@admin.com', 'L@rryH@rr!sAdm');
INSERT INTO ADMIN VALUES (13, 'Monica Martin', 'monica.martin@admin.com', 'M0n!c@M@rt!nAdm');
INSERT INTO ADMIN VALUES (14, 'Nathan Thompson', 'nathan.thompson@admin.com', 'N@th@nTh0mp!');
INSERT INTO ADMIN VALUES (15, 'Olivia Garcia', 'olivia.garcia@admin.com', 'Ol!v!@G@rc!aAdm');
INSERT INTO ADMIN VALUES (16, 'Peter Martinez', 'peter.martinez@admin.com', 'P3t3rM@rt!n3zAdm');
INSERT INTO ADMIN VALUES (17, 'Quinn Robinson', 'quinn.robinson@admin.com', 'Qu!nnR0b!ns0n!');
INSERT INTO ADMIN VALUES (18, 'Rachel Clark', 'rachel.clark@admin.com', 'R@ch3lCl@rkAdm');
INSERT INTO ADMIN VALUES (19, 'Samuel Rodriguez', 'samuel.rodriguez@admin.com', 'S@mu3lR0dr!g!');
INSERT INTO ADMIN VALUES (20, 'Tina Lewis', 'tina.lewis@admin.com', 'T!n@L3w!sAdmin');
INSERT INTO ADMIN VALUES (21, 'Ulysses Lee', 'ulysses.lee@admin.com', 'Ulyss3sL33Adm!n');
INSERT INTO ADMIN VALUES (22, 'Veronica Walker', 'veronica.walker@admin.com', 'V3r0n!c@W@lkAdm');
INSERT INTO ADMIN VALUES (23, 'Walter Hall', 'walter.hall@admin.com', 'W@lt3rH@llAdm!n');
INSERT INTO ADMIN VALUES (24, 'Xenia Allen', 'xenia.allen@admin.com', 'X3n!@All3nAdm!n');
INSERT INTO ADMIN VALUES (25, 'Yolanda Young', 'yolanda.young@admin.com', 'Y0l@nd@Y0ungAdm');
INSERT INTO ADMIN VALUES (26, 'Zachary King', 'zachary.king@admin.com', 'Z@ch@ryK!ngAdm');
INSERT INTO ADMIN VALUES (27, 'Amanda Wright', 'amanda.wright@admin.com', 'Am@nd@Wr!ghtAdm');
INSERT INTO ADMIN VALUES (28, 'Brian Lopez', 'brian.lopez@admin.com', 'Br!@nL0p3zAdm!n');
INSERT INTO ADMIN VALUES (29, 'Catherine Hill', 'catherine.hill@admin.com', 'C@th3r!n3H!llA');
INSERT INTO ADMIN VALUES (30, 'Derek Scott', 'derek.scott@admin.com', 'D3r3kSc0ttAdm!n');
INSERT INTO ADMIN VALUES (31, 'Eleanor Green', 'eleanor.green@admin.com', 'El3@n0rGr33nAdm');
INSERT INTO ADMIN VALUES (32, 'Felix Adams', 'felix.adams@admin.com', 'F3l!xAd@msAdm!n');
INSERT INTO ADMIN VALUES (33, 'Gina Baker', 'gina.baker@admin.com', 'G!n@B@k3rAdmin');
INSERT INTO ADMIN VALUES (34, 'Harold Nelson', 'harold.nelson@admin.com', 'H@r0ldN3ls0nAdm');
INSERT INTO ADMIN VALUES (35, 'Iris Carter', 'iris.carter@admin.com', 'Ir!sC@rt3rAdm!n');
INSERT INTO ADMIN VALUES (36, 'Jeremy Mitchell', 'jeremy.mitchell@admin.com', 'J3r3myM!tchAdm');
INSERT INTO ADMIN VALUES (37, 'Kendra Perez', 'kendra.perez@admin.com', 'K3ndr@P3r3zAdm');
INSERT INTO ADMIN VALUES (38, 'Leonard Roberts', 'leonard.roberts@admin.com', 'L30n@rdR0b3rts');
INSERT INTO ADMIN VALUES (39, 'Megan Turner', 'megan.turner@admin.com', 'M3g@nTurn3rAdm');
INSERT INTO ADMIN VALUES (40, 'Norman Phillips', 'norman.phillips@admin.com', 'N0rm@nPh!ll!ps');
INSERT INTO ADMIN VALUES (41, 'Ophelia Campbell', 'ophelia.campbell@admin.com', 'Oph3l!@C@mpAdm');
INSERT INTO ADMIN VALUES (42, 'Patrick Parker', 'patrick.parker@admin.com', 'P@tr!ckP@rk3r');
INSERT INTO ADMIN VALUES (43, 'Queenie Evans', 'queenie.evans@admin.com', 'Qu33n!3Ev@nsAdm');
INSERT INTO ADMIN VALUES (44, 'Ronald Edwards', 'ronald.edwards@admin.com', 'R0n@ldEdw@rdsA');
INSERT INTO ADMIN VALUES (45, 'Sylvia Collins', 'sylvia.collins@admin.com', 'Sylv!@C0ll!nsA');
INSERT INTO ADMIN VALUES (46, 'Theodore Stewart', 'theodore.stewart@admin.com', 'Th30d0r3St3wAdm');
INSERT INTO ADMIN VALUES (47, 'Uma Sanchez', 'uma.sanchez@admin.com', 'Um@S@nch3zAdmin');
INSERT INTO ADMIN VALUES (48, 'Vincent Morris', 'vincent.morris@admin.com', 'V!nc3ntM0rr!sA');
INSERT INTO ADMIN VALUES (49, 'Wendy Rogers', 'wendy.rogers@admin.com', 'W3ndyR0g3rsAdm');
INSERT INTO ADMIN VALUES (50, 'Xavier Reed', 'xavier.reed@admin.com', 'X@v!3rR33dAdmin');

COMMIT;
