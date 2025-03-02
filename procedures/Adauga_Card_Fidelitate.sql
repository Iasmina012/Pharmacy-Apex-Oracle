-- Create the sequence for Card_Fidelitate
CREATE SEQUENCE Card_Fidelitate_Seq
START WITH 1
INCREMENT BY 1
NOMAXVALUE
NOCYCLE;

-- Create the trigger to auto-generate ID for Card_Fidelitate
CREATE OR REPLACE TRIGGER Card_Fidelitate_BI
BEFORE INSERT ON Card_Fidelitate
FOR EACH ROW
BEGIN
    SELECT Card_Fidelitate_Seq.NEXTVAL
    INTO :NEW.ID_Card
    FROM DUAL;
END;
/

-- Create the procedure to add a new Card_Fidelitate
CREATE OR REPLACE PROCEDURE AdaugaCardFidelitate (
    P_Puncte_Fidelitate IN INTEGER,
    P_Data_Inregistrare IN DATE,
    P_Status IN CHAR
) AS
BEGIN
    INSERT INTO Card_Fidelitate (Puncte_Fidelitate, Data_Inregistrare, Status)
    VALUES (P_Puncte_Fidelitate, P_Data_Inregistrare, P_Status);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Card de fidelitate adaugat cu succes!');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Eroare: ' || SQLERRM);
        ROLLBACK;
END AdaugaCardFidelitate;
/

-- Calling the procedure in an anonymous block
BEGIN
    AdaugaCardFidelitate(
        P_Puncte_Fidelitate => 20,
        P_Data_Inregistrare => TO_DATE('12/24/2023', 'MM/DD/YYYY'),
        P_Status => 'F'
    );
END;
/
