CREATE TABLE Detalii_Comanda (
  ID_Detalii INTEGER PRIMARY KEY NOT NULL,
  ID_Comanda INTEGER,
  ID_Medicament INTEGER,
  Cantitate_Cumparata INTEGER,
  Total DECIMAL (10, 2) NOT NULL,
  FOREIGN KEY (ID_Comanda) REFERENCES Comanda (ID_Comanda),
  FOREIGN KEY (ID_Medicament) REFERENCES Medicament (ID_Medicament)
);
