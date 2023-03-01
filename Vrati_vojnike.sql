USE Vojna_baza
GO
CREATE PROCEDURE Vrati_vojnike
@Naziv VARCHAR (20),
@Datum DATE = NULL
AS
BEGIN
IF @Datum IS NULL
	SELECT Vojnik.Ime +' '+ Vojnik.Prezime AS 'Ime i prezime', 
	Vojnik.Cin, Vojni_odred.Naziv AS 'Ime vojne jedinice',
	Vojnik.Datum_rodjenja AS 'Datum prijave',
	Posao.Naziv AS 'Duznost',
	Komandni_centar.Sifra_KC AS 'Sifra KC',
	Vojnik.Datum_rodjenja AS 'Datum rodjenja'
	FROM Vojnik JOIN Vojni_odred on Vojnik.Sifra_odreda = Vojni_odred.Sifra_odreda
	JOIN Posao ON Vojnik.Sifra_posla = Posao.Sifra_posla
	JOIN Komandni_centar ON Vojnik.Sifra_KC = Komandni_centar.Sifra_KC
	WHERE Posao.Naziv LIKE (SUBSTRING(@Naziv, 1, 5)+'%')
	ORDER BY Vojnik.Datum_rodjenja
ELSE
	SELECT Vojnik.Ime +' '+ Vojnik.Prezime AS 'Ime i prezime', 
	Vojnik.Cin, Vojni_odred.Naziv AS 'Ime vojne jedinice',
	Vojnik.Datum_rodjenja AS 'Datum prijave',
	Posao.Naziv AS 'Duznost',
	Komandni_centar.Sifra_KC AS 'Sifra KC',
	Vojnik.Datum_rodjenja AS 'Datum rodjenja'
	FROM Vojnik JOIN Vojni_odred on Vojnik.Sifra_odreda = Vojni_odred.Sifra_odreda
	JOIN Posao ON Vojnik.Sifra_posla = Posao.Sifra_posla
		JOIN Komandni_centar ON Vojnik.Sifra_KC = Komandni_centar.Sifra_KC
	WHERE Posao.Naziv LIKE (SUBSTRING(@Naziv, 1, 5)+'%') AND Vojnik.Datum_rodjenja > @Datum
	ORDER BY Vojnik.Datum_rodjenja
END
GO