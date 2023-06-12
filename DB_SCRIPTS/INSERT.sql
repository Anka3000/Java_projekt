--tabela PLYTA
INSERT INTO PLYTA (TYTUL, REZYSER, ROK_WYDANIA, GATUNEK, CENA_ZA_WYPOZYCZENIE)
VALUES
  ('Nocne chwile', 'Pawel Nowak', '2015-04-20', 'obyczajowy', 15.2),
  ('Podejrzane wizje', 'Marek Witkowski', '2018-12-03', 'thriller', 22.5),
  ('Bialy szum - kilka wariantow', 'Maria Golec', '2020-06-30', 'film relaksujacy', 19.95),
  ('Stairs to heaven', 'Kim Smith', '2022-07-05', 'akcja', 40.95),
  ('Yes', 'Just Marian', '2016-10-15', 'komedia', 34.9),
  ('Avengers: Endgame', 'Anthony Russo, Joe Russo', '2019-04-26', 'Akcja', 12.99),
  ('The Shawshank Redemption', 'Frank Darabont', '1994-09-23', 'Dramat', 9.99),
  ('The Godfather', 'Francis Ford Coppola', '1972-03-24', 'Dramat', 11.99),
  ('Pulp Fiction', 'Quentin Tarantino', '1994-10-14', 'Kryminał', 8.99),
  ('The Dark Knight', 'Christopher Nolan', '2008-07-18', 'Akcja', 10.99),
  ('Inception', 'Christopher Nolan', '2010-07-16', 'Sci-Fi', 9.99),
  ('Fight Club', 'David Fincher', '1999-10-15', 'Dramat', 8.99),
  ('The Matrix', 'Lana Wachowski, Lilly Wachowski', '1999-03-31', 'Sci-Fi', 7.99),
  ('Interstellar', 'Christopher Nolan', '2014-11-07', 'Sci-Fi', 11.99),
  ('The Lord of the Rings: The Fellowship of the Ring', 'Peter Jackson', '2001-12-19', 'Fantasy', 9.99),
  ('Forrest Gump', 'Robert Zemeckis', '1994-07-06', 'Dramat', 8.99),
  ('The Silence of the Lambs', 'Jonathan Demme', '1991-02-14', 'Thriller', 7.99),
  ('The Shawshank Redemption', 'Frank Darabont', '1994-09-23', 'Dramat', 9.99),
  ('The Godfather', 'Francis Ford Coppola', '1972-03-24', 'Dramat', 11.99),
  ('Pulp Fiction', 'Quentin Tarantino', '1994-10-14', 'Kryminał', 8.99),
  ('The Dark Knight', 'Christopher Nolan', '2008-07-18', 'Akcja', 10.99),
  ('Inception', 'Christopher Nolan', '2010-07-16', 'Sci-Fi', 9.99),
  ('Fight Club', 'David Fincher', '1999-10-15', 'Dramat', 8.99),
  ('The Matrix', 'Lana Wachowski, Lilly Wachowski', '1999-03-31', 'Sci-Fi', 7.99),
  ('Interstellar', 'Christopher Nolan', '2014-11-07', 'Sci-Fi', 11.99),
  ('The Lord of the Rings: The Fellowship of the Ring', 'Peter Jackson', '2001-12-19', 'Fantasy', 9.99);
--tabela KLIENT
INSERT INTO KLIENT (IMIE, NAZWISKO, ADRES, NUMER_TEL, EMAIL)
VALUES
  ('Bartosz', 'Kwiecien', 'Zamkowa 15/20 - Morszyn', '001002003', 'KvetenB@poczta.pl'),
  ('Jan', 'Kowalski', 'Polna 15 - Zachecien', '111111111', 'JKol@interia.pl'),
  ('Anna', 'Nowak', 'ul. Ogrodowa 2, Kraków', '987654321', 'anna.nowak@example.com'),
  ('Piotr', 'Wiśniewski', 'ul. Słoneczna 3, Gdańsk', '111222333', 'piotr.wisniewski@example.com'),
  ('Marta', 'Jankowska', 'ul. Leśna 4, Wrocław', '444555666', 'marta.jankowska@example.com'),
  ('Kamil', 'Kamiński', 'ul. Polna 5, Łódź', '777888999', 'kamil.kaminski@example.com'),
  ('Ewa', 'Wójcik', 'ul. Topolowa 6, Poznań', '000111222', 'ewa.wojcik@example.com'),
  ('Marcin', 'Kowalczyk', 'ul. Wiosenna 7, Lublin', '333444555', 'marcin.kowalczyk@example.com'),
  ('Monika', 'Lewandowska', 'ul. Kwiatowa 8, Szczecin', '666777888', 'monika.lewandowska@example.com'),
  ('Adam', 'Zieliński', 'ul. Rajska 9, Katowice', '999000111', 'adam.zielinski@example.com'),
  ('Karolina', 'Szymańska', 'ul. Długa 10, Białystok', '222333444', 'karolina.szymanska@example.com');
--tabela RACHUNEK
INSERT INTO RACHUNEK (DATA_WYSTAWINIA, OPLATA, ID_KLIENT)
VALUES
  ('2023-06-01', 15.99, 1),
  ('2023-06-02', 9.99, 3),
  ('2023-06-03', 12.50, 2),
  ('2023-06-04', 18.75, 5),
  ('2023-06-05', 6.99, 4),
  ('2023-06-06', 11.25, 6);
--tabela REZERWACJA
INSERT INTO REZERWACJA (ID_KLIENT, ID_PLYTA, DATA_ZAMOWIENIA, DATA_ODBIORU, DATA_ZWOROTU_PLANOWANA, OPLATA)
VALUES
  (1, 2, '2023-06-01', '2023-06-05', '2023-06-08', 8.99),
  (3, 5, '2023-06-02', '2023-06-06', '2023-06-09', 10.50),
  (2, 3, '2023-06-03', '2023-06-07', '2023-06-10', 7.75),
  (5, 1, '2023-06-04', '2023-06-08', '2023-06-11', 12.99),
  (4, 6, '2023-06-05', '2023-06-09', '2023-06-12', 9.25);
--tabela OPINIE_KLIENTOW
INSERT INTO OPINIA (ID_KLIENT, ID_PLYTA, OCENA, TRESC)
VALUES
  (1, 3, 4, 'Bardzo fajny film! Polecam.'),
  (3, 2, 3, 'Przeciętna produkcja.'),
  (2, 1, 5, 'Rewelacyjny film, obejrzałem go już kilka razy!'),
  (5, 4, 2, 'Słaby scenariusz, nie polecam.'),
  (4, 6, 4, 'Interesująca historia, warte obejrzenia.');
--tabela WYPOZYCZENIA
INSERT INTO WYPOZYCZENIE (DATA_WYPOZYCZENIA, DATA_ZWROTU, OPLATA, ID_KLIENT, ID_PLYTA)
VALUES
  ('2023-06-01', '2023-06-07', 7.99, 1, 2),
  ('2023-06-02', '2023-06-08', 8.99, 3, 5),
  ('2023-06-03', '2023-06-09', 6.50, 2, 3),
  ('2023-06-04', '2023-06-10', 9.75, 5, 1),
  ('2023-06-05', '2023-06-11', 5.99, 4, 6);