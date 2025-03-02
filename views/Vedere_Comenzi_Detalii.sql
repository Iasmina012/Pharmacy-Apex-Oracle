CREATE VIEW Vedere_Comenzi_Detalii AS
SELECT Comanda. ID_Comanda, Comanda.Data_Prelucrare, Comanda. Total, Comanda.Metoda_Plata, Client.Nume_Client, Farmacie.Nume_Farmacie, Medicament.Nume_Medicament, Detalii_Comanda. Cantitate_Cumparata
FROM Comanda
JOIN Client ON Comanda.ID_Client = Client.ID_Client
JOIN Detalii_Comanda ON Comanda. ID_Comanda = Detalii_Comanda. ID_Comanda
JOIN Medicament ON Detalii_Comanda. ID_Medicament = Medicament. ID_Medicament
JOIN Farmacie ON Medicament.ID Farmacie = Farmacie.ID Farmacie:
