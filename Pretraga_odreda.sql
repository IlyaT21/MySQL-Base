CREATE FUNCTION Pretraga_odreda(@jedinica char(3))
RETURNS TABLE
AS
RETURN
(SELECT Vojnik.ime +' '+ Vojnik.Prezime AS 'Vojnik', Vojnik.Cin, Nadzornik.Ime AS'Nadzornik',
Vozilo.Naziv AS 'Vozilo', Vojni_odred.Naziv AS 'Jedinica'
FROM Vojnik JOIN Nadzornik ON Vojnik.Sifra_nadzornika = Nadzornik.Sifra_nadzornika 
JOIN Zaduzen_za ON Vojnik.Sifra_vojnika = Zaduzen_za.Sifra_vojnika
JOIN Vozilo ON Zaduzen_za.Sifra_vozila = Vozilo.Sifra_vozila
JOIN Vojni_odred ON Vojnik.Sifra_odreda = Vojni_odred.Sifra_odreda
WHERE Vojni_odred.Naziv LIKE (SUBSTRING(@jedinica,1,3) +'%')
);
GO