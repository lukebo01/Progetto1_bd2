-- create_indexes_hash.sql

-- Se esiste già un indice, lo elimina
DROP INDEX IF EXISTS idx_iscrizione_corso_hash CASCADE;
COMMIT;
DROP INDEX IF EXISTS idx_iscrizione_studente_btree CASCADE;
COMMIT;

-- Crea l'indice Hash su Iscrizione(corso_id)
CREATE INDEX idx_iscrizione_corso_hash ON Iscrizione USING HASH (corso_id);
