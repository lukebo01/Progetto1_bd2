-- create_indexes_btree.sql

-- Se esiste già un indice, lo elimina
DROP INDEX IF EXISTS idx_iscrizione_corso_btree CASCADE;
COMMIT;
DROP INDEX IF EXISTS idx_iscrizione_studente_hash CASCADE;
COMMIT;

-- Crea l'indice B-Tree su Iscrizione(corso_id)
CREATE INDEX idx_iscrizione_corso_btree ON Iscrizione(corso_id);
