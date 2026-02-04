BEGIN
    DBMS_OUTPUT.PUT_LINE('===== TEST 1: Cancel Reservation (SUCCESS CASE) =====');
END;
/

INSERT INTO RESERVATION VALUES (
    100,
    TO_DATE('2024-12-15', 'YYYY-MM-DD'),
    '19:00',
    'confirmed',
    1,
    1,
    1
);
COMMIT;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Step 1: Test reservation created with ID 100');
END;
/

SELECT reservation_id, status, table_id FROM RESERVATION WHERE reservation_id = 100;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Step 2: Cancelling reservation...');
    sp_cancel_reservation(100);
END;
/
 
BEGIN
    DBMS_OUTPUT.PUT_LINE('Step 3: Checking if reservation status changed to cancelled');
END;
/

SELECT reservation_id, status FROM RESERVATION WHERE reservation_id = 100;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Step 4: Checking if table is now available');
END;
/

SELECT table_id, status FROM RES_TABLE WHERE table_id = 1;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Test 1 Completed!');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/


BEGIN
    DBMS_OUTPUT.PUT_LINE('===== TEST 2: Cancel Reservation (ERROR CASE) =====');
    DBMS_OUTPUT.PUT_LINE('Attempting to cancel non-existent reservation ID: 9999');
END;
/

BEGIN
    sp_cancel_reservation(9999);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Expected Error Caught: ' || SQLERRM);
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('Test 2 Completed!');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('===== TEST 3: Branch Statistics (SUCCESS CASE) =====');
    DBMS_OUTPUT.PUT_LINE('Getting statistics for Branch ID 1');
END;
/

BEGIN
    sp_branch_stats(1);
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('Verifying with manual queries:');
END;
/

SELECT COUNT(*) as total_reservations 
FROM RESERVATION 
WHERE branch_id = 1;

SELECT ROUND(AVG(rating), 2) as average_rating 
FROM FEEDBACK 
WHERE branch_id = 1;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Test 3 Completed!');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('===== TEST 4: Insert Feedback with Valid Rating (SUCCESS CASE) =====');
    DBMS_OUTPUT.PUT_LINE('Inserting feedback with rating 4.5 (valid)');
END;
/

INSERT INTO FEEDBACK VALUES (
    100,
    SYSDATE,
    'Great experience, food was excellent!',
    4.5,
    1,
    1
);
COMMIT;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Feedback inserted successfully!');
END;
/
    
SELECT feedback_id, rating, cust_comment FROM FEEDBACK WHERE feedback_id = 100;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Test 4 Completed!');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('===== TEST 5: Insert Feedback with Invalid Rating (ERROR CASE) =====');
    DBMS_OUTPUT.PUT_LINE('Attempting to insert feedback with rating 6.0 (invalid)');
    DBMS_OUTPUT.PUT_LINE('Expected: Trigger should block this insert');
END;
/
    
BEGIN
    INSERT INTO FEEDBACK VALUES (
        101,
        SYSDATE,
        'Trying invalid rating',
        6.0,
        1,
        1
    );
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Expected Error Caught: ' || SQLERRM);
        ROLLBACK;
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('Verifying feedback was blocked:');
END;
/

SELECT COUNT(*) as should_be_zero FROM FEEDBACK WHERE feedback_id = 101;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Test 5 Completed!');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('===== TEST 6: Auto Occupy Table on Reservation (SUCCESS CASE) =====');
    DBMS_OUTPUT.PUT_LINE('Checking table 2 status BEFORE reservation');
END;
/

SELECT table_id, status FROM RES_TABLE WHERE table_id = 2;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Creating new reservation for table 2...');
END;
/

INSERT INTO RESERVATION VALUES (
    101,
    TO_DATE('2024-12-20', 'YYYY-MM-DD'),
    '20:00',
    'confirmed',
    2,
    2,
    1
);
COMMIT;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Reservation created! Checking table 2 status AFTER reservation');
    DBMS_OUTPUT.PUT_LINE('Expected: Table should now be occupied (trigger auto-updated it)');
END;
/

SELECT table_id, status FROM RES_TABLE WHERE table_id = 2;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Test 6 Completed!');
    DBMS_OUTPUT.PUT_LINE(' ');
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('===== CLEANUP: Removing Test Data =====');
END;
/

DELETE FROM FEEDBACK WHERE feedback_id >= 100;
DELETE FROM RESERVATION WHERE reservation_id >= 100;
COMMIT;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Test data cleaned up successfully!');
END;
/

SELECT COUNT(*) as test_feedback_count FROM FEEDBACK WHERE feedback_id >= 100;
SELECT COUNT(*) as test_reservation_count FROM RESERVATION WHERE reservation_id >= 100;

BEGIN
    DBMS_OUTPUT.PUT_LINE(' ');
    DBMS_OUTPUT.PUT_LINE('===== ALL TESTS COMPLETED SUCCESSFULLY =====');
END;
/