--Procedure-1
CREATE OR REPLACE PROCEDURE sp_cancel_reservation (
    p_reservation_id IN NUMBER
)
AS
    v_table_id NUMBER;
BEGIN
    SELECT table_id INTO v_table_id
    FROM RESERVATION
    WHERE reservation_id = p_reservation_id;

    UPDATE RESERVATION
    SET status = 'cancelled'
    WHERE reservation_id = p_reservation_id;

    UPDATE RES_TABLE
    SET status = 'available'
    WHERE table_id = v_table_id;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Reservation cancelled and table freed');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Reservation not found');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
    
--Procedure-2
CREATE OR REPLACE PROCEDURE sp_branch_stats (
    p_branch_id IN NUMBER
)
AS
    v_total_reservations NUMBER;
    v_avg_rating NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_total_reservations
    FROM RESERVATION
    WHERE branch_id = p_branch_id;

    SELECT NVL(AVG(rating), 0) INTO v_avg_rating
    FROM FEEDBACK
    WHERE branch_id = p_branch_id;

    DBMS_OUTPUT.PUT_LINE('Total Reservations: ' || v_total_reservations);
    DBMS_OUTPUT.PUT_LINE('Average Rating: ' || ROUND(v_avg_rating, 2));

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
    
--Trigger-1
CREATE OR REPLACE TRIGGER trg_check_rating
BEFORE INSERT ON FEEDBACK
FOR EACH ROW
BEGIN
    IF :NEW.rating < 1.0 OR :NEW.rating > 5.0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Rating must be between 1.0 and 5.0');
    END IF;
END;
/
    
--Trigger-2
CREATE OR REPLACE TRIGGER trg_occupy_table
AFTER INSERT ON RESERVATION
FOR EACH ROW
BEGIN
    UPDATE RES_TABLE
    SET status = 'occupied'
    WHERE table_id = :NEW.table_id;
END;
/
