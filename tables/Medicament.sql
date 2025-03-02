CREATE TABLE Medicament (
  ID_Medicament INTEGER PRIMARY KEY NOT NULL,
  Nume_Medicament VARCHAR(30) NOT NULL,
  Pret DECIMAL (10, 2) NOT NULL,
  Stoc CHAR(1) CHECK (Stoc IN ('T', 'F')) NOT NULL,
  Data_Expirare DATE CHECK (Data_Expirare >= CURRENT_DATE) NOT NULL,
  ID_Categorie INTEGER,
  Formula_Chimica CHAR(255),
  ID_Farmacie INTEGER,
  FOREIGN KEY (ID_Categorie) REFERENCES Categorie_Medicament (ID_Categorie),
  FOREIGN KEY (ID_Farmacie) REFERENCES Farmacie (ID_Farmacie)
);
