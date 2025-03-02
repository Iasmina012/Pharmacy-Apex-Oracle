CREATE TABLE Comanda (
  ID_Comanda INTEGER PRIMARY KEY NOT NULL,
  Data_Prelucrare DATE NOT NULL CHECK (Data_Prelucrare < CURRENT_DATE) NOT NULL,
  Total DECIMAL (10, 2) NOT NULL,
  Metoda_Plata VARCHAR(5),
  ID_Client INTEGER,
  FOREIGN KEY (ID_Client) REFERENCES Client (ID_Client)
);
