--tabela PLYTY_DVD
INSERT INTO PLYTY_DVD VALUES (1, 'Nocne chwile', 'Pawel Nowak', '2015-04-20', 'obyczajowy', 15.2);
INSERT INTO PLYTY_DVD VALUES (2, 'Podejrzane wizje', 'Marek Witkowski', '2018-12-03', 'thriller', 22.5);
INSERT INTO PLYTY_DVD VALUES (3, 'Bialy szum – kilka wariantow', 'Maria Golec', '2020-06-30', 'film relaksujacy', 19.95);
INSERT INTO PLYTY_DVD VALUES (4, 'Stairs to heaven', 'Kim Smith', '2022-07-05', 'akcja', 40.95);
INSERT INTO PLYTY_DVD VALUES (5, 'Yes', 'Just Marian', '2016-10-15', 'komedia', 34.9);
--tabela KLIENCI
INSERT INTO KLIENCI VALUES (1, 'Jan', 'Kowalski', 'Polna 15 - Zachecien', '111 111 111', 'JKol@interia.pl');
INSERT INTO KLIENCI VALUES (2, 'Marianna', 'Wrona', 'Warszawska 8/30 - Morszyn', '000 999 555', 'Mari5@onet.pl');
INSERT INTO KLIENCI VALUES (3, 'Julia', 'Gawron', 'Szkolna 16 - Polin', '999 888 777', 'Julia.Gawron@gmai.com');
INSERT INTO KLIENCI VALUES (4, 'Nadia', 'Malinowska', 'Hoza 77/6 - Zachecien', '123 456 789', 'MalinyGit@wp.pl');
INSERT INTO KLIENCI VALUES (5, 'Bartosz', 'Kwiecien', 'Zamkowa 15/20 - Morszyn', '001 002 003', 'KvetenB@poczta.pl');
--tabela RACHUNKI
INSERT INTO RACHUNKI VALUES (1, '2021-05-20', 19.2, 5);
INSERT INTO RACHUNKI VALUES (2, '2022-12-15', 34.9, 4);
INSERT INTO RACHUNKI VALUES (3, '2023-01-23', 19.95, 3);
INSERT INTO RACHUNKI VALUES (4, '2023-03-15', 40.95, 2);
INSERT INTO RACHUNKI VALUES (5, '2023-05-06', 22.5, 1);
--tabela ZAMOWIENIA
INSERT INTO ZAMOWIENIA VALUES (1, 2, 1, '2023-03-10', '2023-03-20', '2023-05-04', 40.05);
INSERT INTO ZAMOWIENIA VALUES (2, 1, 2, '2023-04-30', '2023-10-05', '2023-10-19', 22.5);
INSERT INTO ZAMOWIENIA VALUES (3, 3, 3, '2023-01-15', '2023-01-30', '2023-01-03', 19.95);
INSERT INTO ZAMOWIENIA VALUES (4, 4, 4 , '2022-12-12', '2022-12-20', '2023-01-04', 34.9);
INSERT INTO ZAMOWIENIA VALUES (5, 5, 5, '2021-05-17', '2021-05-24', '2021-06-06', 19.2);
--tabela OPINIE_KLIENTOW
INSERT INTO OPINIE_KLIENTOW  VALUES (1, 5, 5, 7, 'Przyjemna komedyjka, polecam i wypozyczalnie tez');
INSERT INTO OPINIE_KLIENTOW  VALUES (2, 3, 3, 4, 'Troche nudny film, ale obsluga mila');
INSERT INTO OPINIE_KLIENTOW  VALUES (3, 4, 4, 6, 'Dluga realizacja zamowien, ale mimo tego dobry wybor plyt i kilka ciekawych pozycji');
INSERT INTO OPINIE_KLIENTOW  VALUES (4, 2, 1, 9, 'Klient moze sie poczuc jak w domu i ciekawe pozycje filmowe, ktore mozna ogladac na okraglo przez jakiś czas');
INSERT INTO OPINIE_KLIENTOW  VALUES (5, 1, 2, 8, 'Film, ktory wypozyczylem byl bardzo dobry, pelen napiecia i zagadek.');
--tabela WYPOZYCZENIA
INSERT INTO WYPOZYCZENIA VALUES (1, '2021-05-24', '2021-01-06', 0, 5);
INSERT INTO WYPOZYCZENIA VALUES (2, '2022-12-20', '2023-01-06', 0.50, 4);
INSERT INTO WYPOZYCZENIA VALUES (3, '2023-01-30', '2023-03-19', 12.25, 3);
INSERT INTO WYPOZYCZENIA VALUES (4, '2023-03-20', '2023-07-10', 28, 2);
INSERT INTO WYPOZYCZENIA VALUES (5, '2023-10-05', '2023-10-17', 0, 1);
--tabela ZBIOR WYPOZYCZEN
INSERT INTO ZBIOR_WYPOZYCZEN VALUES (1, 5, 1);
INSERT INTO ZBIOR_WYPOZYCZEN VALUES (2, 4, 2);
INSERT INTO ZBIOR_WYPOZYCZEN VALUES (3, 3, 3);
INSERT INTO ZBIOR_WYPOZYCZEN VALUES (4, 1, 4);
INSERT INTO ZBIOR_WYPOZYCZEN VALUES (5, 2, 5);

