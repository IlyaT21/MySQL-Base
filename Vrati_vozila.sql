USE Vojna_baza
GO
CREATE PROCEDURE Vrati_vozila
@Zapremina FLOAT,
@Datum DATE = NULL
AS
BEGIN
IF @Datum IS NULL
	SELECT Vozilo.Naziv, Vozilo.Zemlja_porekla AS 'Zemlja porekla', Vojnik.Ime + +' '+ Vojnik.Prezime AS 'Vojnik',
	Komandni_centar.Sifra_KC AS 'Sifra KC', Vozilo.Zapremina_motora AS 'Zapremina motora'
	FROM Vozilo JOIN Zaduzen_za on Vozilo.Sifra_vozila = Zaduzen_za.Sifra_vozila
	JOIN Vojnik ON Zaduzen_za.Sifra_vojnika = Vojnik.Sifra_vojnika
	JOIN Komandni_centar ON Vojnik.Sifra_KC = Komandni_centar.Sifra_KC
	WHERE Vozilo.Zapremina_motora > @Zapremina
	ORDER BY Vozilo.Zapremina_motora
ELSE
	SELECT Vozilo.Naziv, Vozilo.Datum_proizvodnje AS 'Datum proizvodnje',
	Vozilo.Zemlja_porekla AS 'Zemlja porekla', Vojnik.Ime + +' '+ Vojnik.Prezime AS 'Vojnik',
	Komandni_centar.Sifra_KC AS 'Sifra KC', Vozilo.Zapremina_motora AS 'Zapremina motora'
	FROM Vozilo JOIN Zaduzen_za on Vozilo.Sifra_vozila = Zaduzen_za.Sifra_vozila
	JOIN Vojnik ON Zaduzen_za.Sifra_vojnika = Vojnik.Sifra_vojnika
	JOIN Komandni_centar ON Vojnik.Sifra_KC = Komandni_centar.Sifra_KC
	WHERE Vozilo.Zapremina_motora > @Zapremina AND Vozilo.Datum_proizvodnje > @Datum
	ORDER BY Vozilo.Datum_proizvodnje
END
GO
