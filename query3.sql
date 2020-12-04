--Hiç sipariþ vermeyen müþterilerin mesleklerini listeleyiniz.

select m.meslek [Meslek] from tblKullanici k
	inner join tblMeslek m on m.meslekKod = k.meslekKod
	Where k.kullaniciKod not in 
		( select k.kullaniciKod from tblKullanici k 
		inner join tblSiparis s on k.kullaniciKod = s.kullaniciKod)

