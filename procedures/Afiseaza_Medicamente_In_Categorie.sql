CREATE OR REPLACE PROCEDURE AfiseazaMedicamenteInCategorie (
    p_Nume_Categorie IN VARCHAR2
) AS
BEGIN
    FOR med_rec IN (
        SELECT M.ID_Medicament, M.Nume_Medicament, M.Pret, M.Stoc, M.Data_Expirare, M.Formula_Chimica
        FROM Medicament M
        JOIN Categorie_Medicament CM ON M.ID_Categorie = CM.ID_Categorie
        WHERE CM.Nume_Categorie = p_Nume_Categorie
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('ID Medicament: ' || med_rec.ID_Medicament);
        DBMS_OUTPUT.PUT_LINE('Nume Medicament: ' || med_rec.Nume_Medicament);
        DBMS_OUTPUT.PUT_LINE('Pret: ' || med_rec.Pret);
        DBMS_OUTPUT.PUT_LINE('Stoc: ' || med_rec.Stoc);
        DBMS_OUTPUT.PUT_LINE('Data Expirare: ' || TO_CHAR(med_rec.Data_Expirare, 'MM/DD/YYYY'));
        DBMS_OUTPUT.PUT_LINE('Formula Chimica: ' || med_rec.Formula_Chimica);
        DBMS_OUTPUT.PUT_LINE('--------------------');
    END LOOP;
END AfiseazaMedicamenteInCategorie;
/

BEGIN
    AfiseazaMedicamenteInCategorie('Antibiotice');
END;
/
