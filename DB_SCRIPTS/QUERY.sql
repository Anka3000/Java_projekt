-- 1. Wyświetlanie zbiorów
SELECT * FROM KLIENT;
-- 2. Dodawanie do zbioru
INSERT INTO PLYTA (TYTUL, REZYSER, ROK_WYDANIA, GATUNEK, CENA_ZA_WYPOZYCZENIE)
VALUES (?, ?, ?, ?, ?);
-- 3. Edycja zbioru
UPDATE PLYTA 
SET TYTUL = ?, REZYSER = ?, ROK_WYDANIA = ?, GATUENK = ?, CENA_ZA_WYPOZYCZENIE = ?
WHERE ID_PLYTA = ?
-- 4. Wypożyczenie
-- 5. Zwrot
-- 6. Rezerwacja