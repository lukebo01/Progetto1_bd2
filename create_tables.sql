-- create_tables.sql

-- Rimuove eventuali tabelle esistenti (in ordine di dipendenza)
DROP TABLE IF EXISTS Iscrizione CASCADE;
DROP TABLE IF EXISTS Corso CASCADE;
DROP TABLE IF EXISTS Studente CASCADE;

-- Creazione della tabella Studente
CREATE TABLE Studente (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(100),
    indirizzo VARCHAR(100)
);

-- Creazione della tabella Corso
CREATE TABLE Corso (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cfu INT
);

-- Creazione della tabella Iscrizione
CREATE TABLE Iscrizione (
    id SERIAL PRIMARY KEY,
    studente_id INT REFERENCES Studente(id),
    corso_id INT REFERENCES Corso(id),
    voto INT
);
