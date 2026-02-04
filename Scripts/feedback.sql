-- feedback.sql
DROP TABLE FEEDBACK CASCADE CONSTRAINTS;

CREATE TABLE FEEDBACK (
    feedback_id NUMBER(10) PRIMARY KEY,
    feedback_date DATE DEFAULT SYSDATE NOT NULL,
    cust_comment VARCHAR2(1000),
    rating NUMBER(2,1),
    customer_id NUMBER(10) NOT NULL,
    branch_id NUMBER(10) NOT NULL,
    CONSTRAINT fk_customerF
        FOREIGN KEY (customer_id)
        REFERENCES CUSTOMER(customer_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_branchF
        FOREIGN KEY (branch_id)
        REFERENCES BRANCH(branch_id)
        ON DELETE CASCADE,
    CONSTRAINT chk_ratingF CHECK (rating >= 1.0 AND rating <= 5.0)
);

INSERT INTO FEEDBACK VALUES (1, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 'Excellent service and amazing food quality!', 5.0, 1, 1);
INSERT INTO FEEDBACK VALUES (2, TO_DATE('2024-11-02', 'YYYY-MM-DD'), 'Great ambiance, will definitely come back.', 4.5, 2, 1);
INSERT INTO FEEDBACK VALUES (3, TO_DATE('2024-11-03', 'YYYY-MM-DD'), 'Food was good but service was a bit slow.', 3.5, 3, 2);
INSERT INTO FEEDBACK VALUES (4, TO_DATE('2024-11-04', 'YYYY-MM-DD'), 'Outstanding experience! Highly recommend.', 5.0, 4, 2);
INSERT INTO FEEDBACK VALUES (5, TO_DATE('2024-11-05', 'YYYY-MM-DD'), 'Decent food, reasonable prices.', 4.0, 5, 3);
INSERT INTO FEEDBACK VALUES (6, TO_DATE('2024-11-06', 'YYYY-MM-DD'), 'Love the atmosphere and friendly staff.', 4.5, 6, 3);
INSERT INTO FEEDBACK VALUES (7, TO_DATE('2024-11-07', 'YYYY-MM-DD'), 'Average experience, nothing special.', 3.0, 7, 4);
INSERT INTO FEEDBACK VALUES (8, TO_DATE('2024-11-08', 'YYYY-MM-DD'), 'Perfect place for family dinner!', 5.0, 8, 4);
INSERT INTO FEEDBACK VALUES (9, TO_DATE('2024-11-09', 'YYYY-MM-DD'), 'Good food but a bit noisy.', 3.5, 9, 5);
INSERT INTO FEEDBACK VALUES (10, TO_DATE('2024-11-10', 'YYYY-MM-DD'), 'Wonderful dining experience!', 4.5, 10, 5);
INSERT INTO FEEDBACK VALUES (11, TO_DATE('2024-11-11', 'YYYY-MM-DD'), 'Best restaurant in the area!', 5.0, 11, 6);
INSERT INTO FEEDBACK VALUES (12, TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'Food quality exceeded expectations.', 4.5, 12, 6);
INSERT INTO FEEDBACK VALUES (13, TO_DATE('2024-11-13', 'YYYY-MM-DD'), 'Nice place, could improve wait times.', 3.5, 13, 7);
INSERT INTO FEEDBACK VALUES (14, TO_DATE('2024-11-14', 'YYYY-MM-DD'), 'Absolutely loved everything!', 5.0, 14, 7);
INSERT INTO FEEDBACK VALUES (15, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 'Good value for money.', 4.0, 15, 8);
INSERT INTO FEEDBACK VALUES (16, TO_DATE('2024-11-16', 'YYYY-MM-DD'), 'Staff was very attentive and courteous.', 4.5, 16, 8);
INSERT INTO FEEDBACK VALUES (17, TO_DATE('2024-11-17', 'YYYY-MM-DD'), 'Food was cold when served.', 2.5, 17, 9);
INSERT INTO FEEDBACK VALUES (18, TO_DATE('2024-11-18', 'YYYY-MM-DD'), 'Great variety on the menu!', 4.5, 18, 9);
INSERT INTO FEEDBACK VALUES (19, TO_DATE('2024-11-19', 'YYYY-MM-DD'), 'Excellent customer service!', 5.0, 19, 10);
INSERT INTO FEEDBACK VALUES (20, TO_DATE('2024-11-20', 'YYYY-MM-DD'), 'Clean and well-maintained facility.', 4.5, 20, 10);
INSERT INTO FEEDBACK VALUES (21, TO_DATE('2024-11-21', 'YYYY-MM-DD'), 'Satisfactory experience overall.', 4.0, 21, 11);
INSERT INTO FEEDBACK VALUES (22, TO_DATE('2024-11-22', 'YYYY-MM-DD'), 'Disappointing food quality.', 2.0, 22, 11);
INSERT INTO FEEDBACK VALUES (23, TO_DATE('2024-10-25', 'YYYY-MM-DD'), 'Perfect for special occasions!', 5.0, 23, 12);
INSERT INTO FEEDBACK VALUES (24, TO_DATE('2024-10-26', 'YYYY-MM-DD'), 'Lovely place, great service.', 4.5, 24, 12);
INSERT INTO FEEDBACK VALUES (25, TO_DATE('2024-10-27', 'YYYY-MM-DD'), 'Food portions were generous.', 4.0, 25, 13);
INSERT INTO FEEDBACK VALUES (26, TO_DATE('2024-10-28', 'YYYY-MM-DD'), 'Very pleasant dining experience.', 4.5, 26, 13);
INSERT INTO FEEDBACK VALUES (27, TO_DATE('2024-10-29', 'YYYY-MM-DD'), 'Prices are a bit high.', 3.0, 27, 14);
INSERT INTO FEEDBACK VALUES (28, TO_DATE('2024-10-30', 'YYYY-MM-DD'), 'Incredible food presentation!', 5.0, 28, 14);
INSERT INTO FEEDBACK VALUES (29, TO_DATE('2024-10-31', 'YYYY-MM-DD'), 'Good experience, will return.', 4.0, 29, 15);
INSERT INTO FEEDBACK VALUES (30, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 'Staff needs better training.', 2.5, 30, 15);
INSERT INTO FEEDBACK VALUES (31, TO_DATE('2024-11-02', 'YYYY-MM-DD'), 'Amazing atmosphere and decor!', 5.0, 31, 16);
INSERT INTO FEEDBACK VALUES (32, TO_DATE('2024-11-03', 'YYYY-MM-DD'), 'Tasty food, quick service.', 4.5, 32, 16);
INSERT INTO FEEDBACK VALUES (33, TO_DATE('2024-11-04', 'YYYY-MM-DD'), 'Comfortable seating arrangements.', 4.0, 33, 17);
INSERT INTO FEEDBACK VALUES (34, TO_DATE('2024-11-05', 'YYYY-MM-DD'), 'Exceeded my expectations!', 5.0, 34, 17);
INSERT INTO FEEDBACK VALUES (35, TO_DATE('2024-11-06', 'YYYY-MM-DD'), 'Not bad, but not great either.', 3.0, 35, 18);
INSERT INTO FEEDBACK VALUES (36, TO_DATE('2024-11-07', 'YYYY-MM-DD'), 'Fantastic meal, five stars!', 5.0, 36, 18);
INSERT INTO FEEDBACK VALUES (37, TO_DATE('2024-11-08', 'YYYY-MM-DD'), 'Fresh ingredients, delicious taste.', 4.5, 37, 19);
INSERT INTO FEEDBACK VALUES (38, TO_DATE('2024-11-09', 'YYYY-MM-DD'), 'Good food but parking is difficult.', 3.5, 38, 19);
INSERT INTO FEEDBACK VALUES (39, TO_DATE('2024-11-10', 'YYYY-MM-DD'), 'One of the best restaurants around!', 5.0, 39, 20);
INSERT INTO FEEDBACK VALUES (40, TO_DATE('2024-11-11', 'YYYY-MM-DD'), 'Friendly staff, great service.', 4.5, 40, 20);
INSERT INTO FEEDBACK VALUES (41, TO_DATE('2024-11-12', 'YYYY-MM-DD'), 'Enjoyed the meal very much.', 4.5, 41, 21);
INSERT INTO FEEDBACK VALUES (42, TO_DATE('2024-11-13', 'YYYY-MM-DD'), 'Could use more vegetarian options.', 3.5, 42, 21);
INSERT INTO FEEDBACK VALUES (43, TO_DATE('2024-11-14', 'YYYY-MM-DD'), 'Superb quality and presentation!', 5.0, 43, 22);
INSERT INTO FEEDBACK VALUES (44, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 'Nice place for casual dining.', 4.0, 44, 22);
INSERT INTO FEEDBACK VALUES (45, TO_DATE('2024-11-16', 'YYYY-MM-DD'), 'Wait time was too long.', 2.5, 45, 23);
INSERT INTO FEEDBACK VALUES (46, TO_DATE('2024-11-17', 'YYYY-MM-DD'), 'Beautiful interior design!', 4.5, 46, 23);
INSERT INTO FEEDBACK VALUES (47, TO_DATE('2024-11-18', 'YYYY-MM-DD'), 'Perfect portion sizes.', 4.5, 47, 24);
INSERT INTO FEEDBACK VALUES (48, TO_DATE('2024-11-19', 'YYYY-MM-DD'), 'Consistently good quality.', 4.0, 48, 24);
INSERT INTO FEEDBACK VALUES (49, TO_DATE('2024-11-20', 'YYYY-MM-DD'), 'Best meal I have had in months!', 5.0, 49, 25);
INSERT INTO FEEDBACK VALUES (50, TO_DATE('2024-11-21', 'YYYY-MM-DD'), 'Great place for business meetings.', 4.5, 50, 25);

COMMIT;
