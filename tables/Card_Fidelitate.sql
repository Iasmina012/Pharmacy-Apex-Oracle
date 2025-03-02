CREATE TABLE Card_Fidelitate (
  ID_Card INTEGER PRIMARY KEY NOT NULL,
  Puncte_Fidelitate INTEGER,
  Data_Inregistrare DATE,
  Status CHAR(1) CHECK (Status IN ('T', 'F')) NOT NULL
);
