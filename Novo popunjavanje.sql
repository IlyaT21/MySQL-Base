USE MASTER
GO
USE Vojna_baza
GO

INSERT INTO Posta (Sifra_poste, Naziv_postara)
VALUES ('7392', 'Jovan Radic');

INSERT INTO Dobavljac (Sifra_dobavljaca, Lokacija, Naziv)
VALUES ('9732', 'Smederevo', 'Zastava');
INSERT INTO Dobavljac (Sifra_dobavljaca, Lokacija, Naziv)
VALUES ('9784', 'Valjevo', 'Domovina');

INSERT INTO Magacin (Sifra_magacina, Tezina_municije)
VALUES ('8339', '7.43');

INSERT INTO Pista (Sifra_piste, Naziv, Kapacitet)
VALUES ('5612', 'Slatina', '12');

INSERT INTO Hangar (Sifra_hangara, Naziv, Kapacitet)
VALUES ('5634', 'Rados', '75');

INSERT INTO Garaza (Sifra_garaze, Naziv, Kapacitet)
VALUES ('5623', 'Alfa', '50');
INSERT INTO Garaza (Sifra_garaze, Naziv, Kapacitet)
VALUES ('5624', 'Beta', '35');
INSERT INTO Garaza (Sifra_garaze, Naziv, Kapacitet)
VALUES ('5625', 'Gama', '40');

INSERT INTO Luka (Sifra_luke, Naziv, Kapacitet)
VALUES ('5645', 'Korint', '23');

INSERT INTO Posao (Naziv)
VALUES ('Cistac');
INSERT INTO Posao (Naziv)
VALUES ('Redar');
INSERT INTO Posao (Naziv)
VALUES ('Djubretar');
INSERT INTO Posao (Naziv)
VALUES ('Strazar');
INSERT INTO Posao (Naziv)
VALUES ('Prenosac');
INSERT INTO Posao (Naziv)
VALUES ('Vozilo')

INSERT INTO Vojni_odred (Sifra_odreda, Naziv, Specijalnost)
VALUES ('731', 'JSO', 'Izvrsavanje specijanih operacija');
INSERT INTO Vojni_odred (Sifra_odreda, Naziv, Specijalnost)
VALUES ('732', 'SAJ', 'Anti-terorizam');
INSERT INTO Vojni_odred (Sifra_odreda, Naziv, Specijalnost)
VALUES ('733', '63. padobranska brigada', 'Padobranske akcije');

INSERT INTO Komandni_centar (Sifra_KC, Spisak_osoblja)
VALUES ('1389', 'Radovan Stepic, Milan Stojkovic, Ljubisa Nedic, Stefa Simic');

INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2010-3-15', 'Rmpalija', 'Srbija', '3.4', 'Zelena', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2010-3-15', 'Rmpalija', 'Srbija', '3.4', 'Zelena', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2010-3-15', 'Rmpalija', 'Srbija', '3.4', 'Zelena', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2007-3-15', 'Zver', 'Rusija', '5.4', 'Siva', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2007-3-15', 'Zver', 'Rusija', '5.4', 'Siva', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2003-7-09', 'Sai-Jen', 'Kina', '4.2', 'Braon', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2015-10-12', 'T-14 Armata', 'Rusija', '12.5', 'Crna', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2015-10-12', 'T-14 Armata', 'Rusija', '12.5', 'Crna', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2015-10-12', 'T-14 Armata', 'Rusija', '12.5', 'Crna', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2016-04-11', 'Galeb', 'Srbija', '10.5', 'Siva', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2016-04-15', 'Galeb', 'Srbija', '10.5', 'Siva', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2016-04-15', 'Galeb', 'Srbija', '10.5', 'Siva', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2016-04-17', 'Galeb', 'Srbija', '10.5', 'Siva', 'Dizel', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2018-11-29', 'Sivi Soko', 'Srbija', '16.7', 'Siva', 'Kerozin', '1389');
INSERT INTO Vozilo (Datum_proizvodnje, Naziv, Zemlja_porekla, Zapremina_motora, Boja, Vrsta_goriva, Sifra_KC)
VALUES ('2018-11-03', 'Sivi Soko', 'Srbija', '16.7', 'Siva', 'Kerozin', '1389');


INSERT INTO Nadzornik (Ime, Sifra_nadzornika, Vreme_na_duznosti, Zavrsen_fakultet)
VALUES ('Janko Radulic', '4231', 'Od pocetka 2016-te.', 'Fakultet bezbednosti');

INSERT INTO Mehanicar (Sifra_mehanicara, Kvalifikacija, Radni_staz)
VALUES ('4221', 'Strucna skola', '3 godine i 4 meseca');

INSERT INTO Lekar (Sifra_lekara, Zavrsena_skola, Strucna_sprema, Broj_operacija)
VALUES ('4211', 'Medicinski fakultet', 'Osmi stepen', '47');

INSERT INTO Inspekcija (Sifra_inspekcije, Clanovi_tima, Datum_inspekcije, Sifra_posla)
VALUES ('4282', 'Marko Bokalj, Milisav Sreckovic, Nenad Maric','2019-3-12', '304');
INSERT INTO Inspekcija (Sifra_inspekcije, Clanovi_tima, Datum_inspekcije, Sifra_posla)
VALUES ('4283', 'Marko Bokalj, Nedan Jagoric, Nenad Maric','2019-04-02', '301');
INSERT INTO Inspekcija (Sifra_inspekcije, Clanovi_tima, Datum_inspekcije, Sifra_posla)
VALUES ('4284', 'Svetislav Mrkonjic, Milisav Sreckovic, Branko Katic','2019-04-12', '305');

INSERT INTO Avion (Sifra_vozila, Raspon_krila, Vrsta_aviona, Domet, Sifra_piste)
VALUES ('4714', '5.67', 'Borbeni', '1645', '5612');
INSERT INTO Avion (Sifra_vozila, Raspon_krila, Vrsta_aviona, Domet, Sifra_piste)
VALUES ('4715', '5.67', 'Borbeni', '1645', '5612');

INSERT INTO Tenk (Sifra_vozila, Duzina, Vrsta_municije, Duzina_topa, Sifra_hangara)
VALUES ('4707', '8.7', '2A82-1M 125 mm', '3.6', '5634');
INSERT INTO Tenk (Sifra_vozila, Duzina, Vrsta_municije, Duzina_topa, Sifra_hangara)
VALUES ('4708', '8.7', '2A82-1M 125 mm', '3.6', '5634');
INSERT INTO Tenk (Sifra_vozila, Duzina, Vrsta_municije, Duzina_topa, Sifra_hangara)
VALUES ('4709', '8.7', '2A82-1M 125 mm', '3.6', '5634');

INSERT INTO Dzip (Sifra_vozila, Precnik_tockova, Broj_sedista, Sifra_garaze)
VALUES ('4701', '80', '4', '5623');
INSERT INTO Dzip (Sifra_vozila, Precnik_tockova, Broj_sedista, Sifra_garaze)
VALUES ('4702', '80', '4', '5623');
INSERT INTO Dzip (Sifra_vozila, Precnik_tockova, Broj_sedista, Sifra_garaze)
VALUES ('4703', '80', '4', '5623');
INSERT INTO Dzip (Sifra_vozila, Precnik_tockova, Broj_sedista, Sifra_garaze)
VALUES ('4704', '86', '8', '5624');
INSERT INTO Dzip (Sifra_vozila, Precnik_tockova, Broj_sedista, Sifra_garaze)
VALUES ('4705', '86', '8', '5624');
INSERT INTO Dzip (Sifra_vozila, Precnik_tockova, Broj_sedista, Sifra_garaze)
VALUES ('4706', '90', '5', '5625');

INSERT INTO Brod (Sifra_vozila, Duzina, Naoruzan, Sifra_luke)
VALUES ('4710', '13', '1', '5645');
INSERT INTO Brod (Sifra_vozila, Duzina, Naoruzan, Sifra_luke)
VALUES ('4711', '13', '1', '5645');
INSERT INTO Brod (Sifra_vozila, Duzina, Naoruzan, Sifra_luke)
VALUES ('4712', '13', '1', '5645');
INSERT INTO Brod (Sifra_vozila, Duzina, Naoruzan, Sifra_luke)
VALUES ('4713', '13', '0', '5645');

INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Marko', 'Miric', 'Razvodnik', '1992-11-11', 'Muski', '301', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Aleksa', 'Agatic', 'Mladji vodnik', '1994-01-15', 'Muski', '302', '733', '4231', '1389');

INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Aleksandar', 'Krstic', 'Razvodnik', '1995-06-10', 'Muski', '303', '732', '4231', '1389');

INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Stanoje', 'Glavas', 'Desetar', '1989-01-31', 'Muski', '304', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Marjan', 'Jaric', 'Desetar', '1998-10-01', 'Muski', '304', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Ljubomir', 'Blagic', 'Desetar', '1997-12-04', 'Muski', '304', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Djordje', 'Petrovic', 'Vodnik', '1984-07-03', 'Muski', '304', '733', '4231', '1389');

INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Srdjan', 'Mikic', 'Razvodnik', '1998-12-01', 'Muski', '305', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Marko', 'Ljubic', 'Razvodnik', '1998-02-09', 'Muski', '305', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Svetozar', 'Tosic', 'Desetar', '1998-04-21', 'Muski', '305', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Ljubinko', 'Madzgalj', 'Razvodnik', '1998-09-08', 'Muski', '305', '731', '4231', '1389');

INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Blagoje', 'Blagic', 'Razvodnik', '1997-09-11', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Marko', 'Maric', 'Desetar', '1998-07-19', 'Muski', '306', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Stevan', 'Stevic', 'Razvodnik', '1993-08-21', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Radovan', 'Radic', 'Razvodnik', '1995-06-01', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Uros', 'Radmilovic', 'Desetar', '1994-12-12', 'Muski', '306', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Vladislav', 'Pesic', 'Desetar', '1993-11-13', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Petar', 'Kutlaca', 'Desetar', '1998-03-23', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Svetozar', 'Krivokapa', 'Razvodnik', '1989-05-25', 'Muski', '306', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Novak', 'Novakovic', 'Vodnik', '1979-05-18', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Milorad', 'Lakic', 'Razvodnik', '1996-02-03', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Milan', 'Milacic', 'Desetar', '1998-03-08', 'Muski', '306', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Strahinja', 'Ruzic', 'Desetar', '1999-06-09', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Pavle', 'Adamovic', 'Razvodnik', '1994-08-11', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Uros', 'Adamovic', 'Desetar', '1995-09-10', 'Muski', '306', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Negovan', 'Sulja', 'Razvodnik', '1992-10-30', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Rasim', 'Jovanovic', 'Razvodnik', '1993-11-28', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Lazar', 'Lazic', 'Desetar', '1991-12-21', 'Muski', '306', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Igor', 'Jokic', 'Desetar', '1990-01-22', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Nikola', 'Nikic', 'Desetar', '1998-08-15', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Ostoja', 'Gazerski', 'Razvodnik', '1995-05-20', 'Muski', '306', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Miodrag', 'Pavlovic', 'Desetar', '1987-09-01', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Borivoj', 'Jezdic', 'Desetar', '1985-02-03', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Bora', 'Pavlovic', 'Razvodnik', '1986-03-18', 'Muski', '306', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Branislav', 'Dusic', 'Razvodnik', '1980-09-03', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Dusan', 'Svetic', 'Desetar', '1978-06-14', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Dusko', 'Jokic', 'Razvodnik', '1993-11-15', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Vukan', 'Jovanovic', 'Desetar', '1994-04-16', 'Muski', '306', '733', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Ugljesa', 'Stepic', 'Razvodnik', '1999-08-19', 'Muski', '306', '731', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Djordje', 'Markovic', 'Desetar', '1997-01-20', 'Muski', '306', '732', '4231', '1389');
INSERT INTO Vojnik (Ime, Prezime, Cin, Datum_rodjenja, Pol, Sifra_posla, Sifra_odreda, Sifra_nadzornika, Sifra_KC)
VALUES ('Dragoljub', 'Mihajlovic', 'Razvodnik', '1995-10-27', 'Muski', '306', '733', '4231', '1389');


INSERT INTO Izvestaj (Sifra_inspekcije, Sifra_izvestaja, Detalji_izvestaja, Datum_formiranja)
VALUES ('4282', '14282', 'Strazari ispunjavaju svoju duznost adekvatno i predlazemo unapredjenje.', '2019-3-19');
INSERT INTO Izvestaj (Sifra_inspekcije, Sifra_izvestaja, Detalji_izvestaja, Datum_formiranja)
VALUES ('4283', '14283', 'Cistac slabo radi svoj posao, treba mu povecati motivaciju', '2019-3-19');
INSERT INTO Izvestaj (Sifra_inspekcije, Sifra_izvestaja, Detalji_izvestaja, Datum_formiranja)
VALUES ('4284', '14284', 'Prenosaci imaju dosta slobodnog vremea, njihov broj se moze msanjiti.', '2019-3-19');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4512', '4701');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4513', '4702');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4514', '4703');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4515', '4704');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4516', '4705');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4517', '4706');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4517', '4707');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4518', '4707');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4519', '4707');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4520', '4708');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4521', '4708');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4522', '4708');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4523', '4709');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4524', '4709');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4525', '4709');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4526', '4710');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4527', '4710');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4528', '4711');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4529', '4711');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4530', '4712');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4531', '4712');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4532', '4713');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4533', '4713');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4534', '4714');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4535', '4714');

INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4536', '4715');
INSERT INTO Zaduzen_za (Sifra_vojnika, Sifra_vozila)
VALUES ('4537', '4715');

INSERT INTO Pregled (Sifra_vojnika, Sifra_lekara, Datum_pregleda, Rezultati, Terapija)
VALUES ('4532', '4211', '2019-05-01', 'Pacijent je uganuo zglob i oslobodjen je posla nedelju dana', 'Biofrezee kremu i ihtiol-kamfor.');
INSERT INTO Pregled (Sifra_vojnika, Sifra_lekara, Datum_pregleda, Rezultati, Terapija)
VALUES ('4524', '4211', '2018-11-23', 'Pacijentu je ustanovljen stomacni virus, primio je injekciju i savetovan odmor.', 'Probiotic i aktivni ugalj.');

INSERT INTO Popravka (Sifra_vozila, Sifra_mehanicara, Datum_popravke, Detalji_popravke)
VALUES ('4706', '4221', '2018-10-15', 'Dzipu koneske marke je otpao tocak. Stavljen je novi i preporucena opreznost.');

INSERT INTO Nalog_za_nabavku (Sifra_mehanicara, Sifra_dobavljaca, Rok_za_isporuku, Spisak_stvari)
VALUES ('4221', '9732', '2018-10-20', 'Tocak za Sai-jen dzip');
INSERT INTO Nalog_za_nabavku (Sifra_mehanicara, Sifra_dobavljaca, Rok_za_isporuku, Spisak_stvari)
VALUES ('4221', '9784', '2020-01-01', 'Cev za T-14 Armata tenk');

INSERT INTO Isporuka_delova (Sifra_dobavljaca, Sifra_mehanicara, Datum_isporuke)
VALUES ('9732', '4221', '2018-10-13');

INSERT INTO Pismo (Sifra_vojnika, Sifra_poste, Datum_slanja, Sadrzaj)
VALUES ('4518', '7392', '2017-09-23', '-ZASTICENO-');

INSERT INTO Uzima_municiju (Sifra_magacina, Sifra_vojnika, Kolicina_municije)
VALUES ('8339', '4528', '7');