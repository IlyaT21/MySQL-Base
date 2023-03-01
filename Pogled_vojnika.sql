USE Vojna_baza;
GO
CREATE VIEW Podaci_o_vojniku
AS
SELECT Vojnik.Ime +' '+ Vojnik.Prezime AS 'Ime i prezime', 
Vojnik.Cin, Vojni_odred.Naziv AS 'Ime vojne jedinice',
Posao.naziv AS 'Posao', Vozilo.Naziv AS 'Dodeljeno vozilo'
From Vojnik JOIN Vojni_odred ON Vojnik.Sifra_odreda = Vojni_odred.Sifra_odreda
JOIN Posao ON Vojnik.Sifra_posla = Posao.Sifra_posla
JOIN Zaduzen_za ON Vojnik.Sifra_vojnika = Zaduzen_za.Sifra_vojnika
JOIN Vozilo ON Zaduzen_za.Sifra_vozila = Vozilo.Sifra_vozila
	 

	  
	