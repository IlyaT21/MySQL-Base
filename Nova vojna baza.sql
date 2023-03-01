USE MASTER;
GO
	IF EXISTS (SELECT NAME FROM master.dbo.sysdatabases
	WHERE name = N'Vojna_baza')
	DROP DATABASE Vojna_baza
GO
CREATE DATABASE Vojna_baza;
GO
USE Vojna_baza;
GO

CREATE TABLE Posta 
(
Sifra_poste INT,
Naziv_postara NVARCHAR (30) NOT NULL,
PRIMARY KEY (Sifra_poste)
);

CREATE TABLE Dobavljac
(
Sifra_dobavljaca INT,
Lokacija NVARCHAR (30) NULL,
Naziv NVARCHAR(30) NOT NULL,
PRIMARY KEY (Sifra_dobavljaca)
);

CREATE TABLE  Magacin
(
Sifra_magacina INT,
Tezina_municije FLOAT NOT NULL,
PRIMARY KEY (Sifra_magacina)
);

CREATE TABLE Pista 
(
Sifra_piste INT,
Naziv NVARCHAR (20) NOT NULL,
Kapacitet INT NOT NULL,
PRIMARY KEY (Sifra_piste)
);

CREATE TABLE Hangar 
(
Sifra_hangara INT,
Naziv NVARCHAR (20) NOT NULL,
Kapacitet INT NOT NULL,
PRIMARY KEY (Sifra_hangara)
);

CREATE TABLE Garaza 
(
Sifra_garaze INT,
Naziv NVARCHAR (20) NOT NULL,
Kapacitet INT NOT NULL,
PRIMARY KEY (Sifra_garaze)
);

CREATE TABLE Luka
(
Sifra_luke INT,
Naziv NVARCHAR (20) NOT NULL,
Kapacitet INT NOT NULL,
PRIMARY KEY (Sifra_luke)
);

CREATE TABLE Posao 
(
Sifra_posla INT IDENTITY (301,1),
Naziv NVARCHAR (20) NOT NULL,
PRIMARY KEY (Sifra_posla)
);

CREATE TABLE Vojni_odred
(
Sifra_odreda INT,
Naziv NVARCHAR (30) NOT NULL,
Specijalnost NVARCHAR (100) NULL,
PRIMARY KEY (Sifra_odreda)
);

CREATE TABLE Komandni_centar 
(
Sifra_KC INT,
Spisak_osoblja NVARCHAR (300) NOT NULL,
PRIMARY KEY (Sifra_KC)
);

CREATE TABLE Vozilo
(
Sifra_vozila INT IDENTITY(4701,1),
Sifra_KC INT,
Naziv NVARCHAR (30) NOT NULL,
Datum_proizvodnje DATE NULL,
Zemlja_porekla NVARCHAR (20),
Zapremina_motora float NULL,
Boja NVARCHAR (15) NULL,
Vrsta_goriva NVARCHAR (20) NOT NULL,
FOREIGN KEY (Sifra_KC) REFERENCES Komandni_centar (Sifra_KC),
PRIMARY KEY (Sifra_vozila)
);

CREATE TABLE Nadzornik
(
Sifra_nadzornika INT,
Ime NVARCHAR (60) NOT NULL,
Vreme_na_duznosti NVARCHAR (100) NULL,
Zavrsen_fakultet NVARCHAR (30) NULL,
PRIMARY KEY (Sifra_nadzornika)
);

CREATE TABLE Mehanicar
(
Sifra_mehanicara INT, 
Kvalifikacija NVARCHAR (20) NOT NULL, 
Radni_staz NVARCHAR (100) NULL,
PRIMARY KEY (Sifra_mehanicara)
);

CREATE TABLE Lekar
(
Sifra_lekara INT,
Zavrsena_skola NVARCHAR (30) NOT NULL,
Strucna_sprema NVARCHAR (30) NULL,
Broj_operacija INT NULL,
PRIMARY KEY (Sifra_lekara)
);

CREATE TABLE Inspekcija
(
Sifra_inspekcije INT,
Sifra_posla INT NOT NULL,
Clanovi_tima NVARCHAR (300) NOT NULL,
Datum_inspekcije DATE NULL,
FOREIGN KEY (Sifra_posla) REFERENCES Posao (Sifra_posla),
PRIMARY KEY (Sifra_inspekcije)
);

CREATE TABLE Avion
(
Sifra_vozila INT,
Sifra_piste INT NOT NULL,
Raspon_krila FLOAT NOT NULL, 
Vrsta_aviona NVARCHAR(20) NULL, 
Domet NVARCHAR (100) NULL, 
FOREIGN KEY (Sifra_piste) REFERENCES Pista (Sifra_piste),
FOREIGN KEY (Sifra_vozila) REFERENCES Vozilo (Sifra_vozila),
PRIMARY KEY (Sifra_vozila)
);

CREATE TABLE Tenk
(
Sifra_vozila INT,
Sifra_hangara INT NOT NULL,
Duzina FLOAT NOT NULL, 
Vrsta_municije NVARCHAR(50) NULL, 
Duzina_topa FLOAT NOT NULL, 
FOREIGN KEY (Sifra_hangara) REFERENCES Hangar (Sifra_hangara),
FOREIGN KEY (Sifra_vozila) REFERENCES Vozilo (Sifra_vozila),
PRIMARY KEY (Sifra_vozila)
);

CREATE TABLE Dzip
(
Sifra_vozila INT,
Sifra_garaze INT NOT NULL,
Precnik_tockova FLOAT NULL,
Broj_sedista INT NOT NULL,
FOREIGN KEY (Sifra_garaze) REFERENCES Garaza (Sifra_garaze),
FOREIGN KEY (Sifra_vozila) REFERENCES Vozilo (Sifra_vozila),
PRIMARY KEY (Sifra_vozila)
);

CREATE TABLE Brod
(
Sifra_vozila INT,
Sifra_luke INT NOT NULL,
Duzina FLOAT NOT NULL,
Naoruzan BIT,
FOREIGN KEY (Sifra_luke) REFERENCES Luka (Sifra_luke),
FOREIGN KEY (Sifra_vozila) REFERENCES Vozilo (Sifra_vozila),
PRIMARY KEY (Sifra_vozila)
);

CREATE TABLE Vojnik
(
Sifra_vojnika INT IDENTITY (4501,1),
Sifra_KC INT NOT NULL,
Sifra_posla INT NOT NULL,
Sifra_odreda INT NOT NULL,
Sifra_nadzornika INT NOT NULL,
Ime NVARCHAR (30) NOT NULL,
Prezime NVARCHAR (30) NULL,
Cin NVARCHAR (20) NOT NULL, 
Datum_rodjenja DATE NOT NULL,
Pol NVARCHAR (8) NOT NULL,
FOREIGN KEY (Sifra_KC) REFERENCES Komandni_centar (Sifra_KC),
FOREIGN KEY (Sifra_posla) REFERENCES Posao (Sifra_posla),
FOREIGN KEY (Sifra_odreda) REFERENCES Vojni_odred (Sifra_odreda),
FOREIGN KEY (Sifra_nadzornika) REFERENCES Nadzornik (Sifra_nadzornika),
PRIMARY KEY (Sifra_vojnika)
);

CREATE TABLE Izvestaj
(
Sifra_inspekcije INT,
Sifra_izvestaja INT,
Detalji_izvestaja NVARCHAR(300) NULL,
Datum_formiranja DATE NOT NULL,
FOREIGN KEY (Sifra_inspekcije) REFERENCES Inspekcija (Sifra_inspekcije),
PRIMARY KEY (Sifra_inspekcije, Sifra_izvestaja)
);

CREATE TABLE Zaduzen_za
(
Sifra_vojnika INT,
Sifra_vozila INT,
FOREIGN KEY (Sifra_vojnika) REFERENCES Vojnik (Sifra_vojnika),
FOREIGN KEY (Sifra_vozila) REFERENCES Vozilo (Sifra_vozila),
PRIMARY KEY (Sifra_vojnika, Sifra_vozila)
);

CREATE TABLE Pregled
(
Sifra_vojnika INT,
Sifra_lekara INT,
Datum_pregleda DATE NOT NULL,
Rezultati NVARCHAR(300) NULL, 
Terapija NVARCHAR (100) NULL,
FOREIGN KEY (Sifra_vojnika) REFERENCES Vojnik (Sifra_vojnika),
FOREIGN KEY (Sifra_lekara) REFERENCES Lekar (Sifra_lekara),
PRIMARY KEY (Sifra_vojnika, Sifra_lekara),
);

CREATE TABLE Popravka
(
Sifra_vozila INT,
Sifra_mehanicara INT,
Datum_popravke DATE NOT NULL,
Detalji_popravke NVARCHAR (300) NULL,
FOREIGN KEY (Sifra_vozila) REFERENCES Vozilo (Sifra_vozila),
FOREIGN KEY (Sifra_mehanicara) REFERENCES Mehanicar (Sifra_mehanicara),
PRIMARY KEY (Sifra_vozila, Sifra_mehanicara)
);

CREATE TABLE Nalog_za_nabavku
(
Sifra_mehanicara INT,
Sifra_dobavljaca INT,
Rok_za_isporuku DATE NOT NULL, 
Spisak_stvari NVARCHAR (500) NOT NULL
FOREIGN KEY (Sifra_mehanicara) REFERENCES Mehanicar (Sifra_mehanicara),
FOREIGN KEY (Sifra_dobavljaca) REFERENCES Dobavljac (Sifra_dobavljaca),
PRIMARY KEY(Sifra_mehanicara, Sifra_dobavljaca)
);

CREATE TABLE Isporuka_delova
(
Sifra_dobavljaca INT,
Sifra_mehanicara INT,
Datum_isporuke DATE NOT NULL,
FOREIGN KEY (Sifra_dobavljaca) REFERENCES Dobavljac (Sifra_dobavljaca),
FOREIGN KEY (Sifra_mehanicara) REFERENCES Mehanicar (Sifra_mehanicara),
PRIMARY KEY (Sifra_dobavljaca, Sifra_mehanicara)
);

CREATE TABLE Pismo
(
Sifra_vojnika INT, 
Sifra_poste INT,
Datum_slanja DATE NOT NULL,
Sadrzaj NVARCHAR (1000) NOT NULL,
FOREIGN KEY (Sifra_vojnika) REFERENCES Vojnik (Sifra_vojnika),
FOREIGN KEY (Sifra_poste) REFERENCES Posta (Sifra_poste),
PRIMARY KEY (Sifra_vojnika, Sifra_poste)
);

CREATE TABLE Uzima_municiju
(
Sifra_magacina INT,
Sifra_vojnika INT,
Kolicina_municije NVARCHAR (150) NOT NULL,
FOREIGN KEY (Sifra_magacina) REFERENCES Magacin (Sifra_magacina),
FOREIGN KEY (Sifra_vojnika) REFERENCES Vojnik (Sifra_vojnika),
PRIMARY KEY (Sifra_magacina, Sifra_vojnika)
);